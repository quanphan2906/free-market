import './mx.css';
import {mxFirebase, initImgUpload, initModal} from './mx';
import firebase from 'firebase';
import "firebase/firestore";
import riot from 'riot';
import "./tags/signin.tag";
import "./tags/signup.tag";
import "./tags/thieuvaomua.tag";
import "./tags/upload.tag";
import "./tags/homepage.tag";
import "./tags/detail.tag";
import "./tags/userbasket.tag";
import route from "riot-route";

const paginate = async (collectionName, pageNumber, perPage, query) => {
  var data = [];
  var arr = [];
  var queryValue = [];
  let res = db.collection(collectionName);

  for (let key in query) {
    if (key != "keywords"){
      res = res.orderBy(key);
      queryValue.push(query[key]);
    }
    else {
      res = res.where("keywords", "array-contains", query[key]);
    }
  }

  if (queryValue.length > 0) {
    res = res
      .startAt(...queryValue)
      .endAt(...queryValue);
  }

  const r = await res.get();
  const total = r.docs.length;

  res = await res
      .limit(perPage * pageNumber)
      .get();

  for await (var doc of res.docs) {
    let info = doc.data();
    let id = doc.id;
    arr.push({id: id, data: info});
  }
  const start = (pageNumber - 1) * perPage;
  const end = start + perPage;
  for (var i = start; i < end; i++) {
    if (arr[i] != null) data.push(arr[i]);
  }
  return { total, data}
}

const createTags = (categoryString, priceString, searchQueryString) => {
  const tagZone = document.getElementById("tag-zone");
  var category = "";
  var price = "";
  switch (categoryString) {
    case "books":
      category = "Sách truyện";
      break;
    case "pets":
      category = "Thú cưng";
      break;
    case "clothes":
      category = "Đồ cũ";
      break;
    case "decoratives":
      category = "Vật trang trí lặt vặt";
      break;
    default:
      category = categoryString;
      break;
  }
  switch (priceString) {
    case "lessthan100":
      price = "Nhỏ hơn 100.000đ"
      break;
    case "from100to1999":
      price = "Từ 100.000đ đến 1.999.000đ";
      break;
    case "morethan1999":
      price = "Lớn hơn 1.999.000đ";
      break;
    default:
      price = priceString;
      break;
  }

  if (category != categoryString) {
    tagZone.innerHTML += `<button class="margin-left-442px font-12px btn btn-warning text-bold height-20px">Mặt hàng: ${category} <i class="fas fa-times" value="category-tag"></i></button>`
  }

  if (price != priceString) {
    tagZone.innerHTML +=`<button class=" font-12px btn btn-warning text-bold height-20px">Giá tiền: ${price} <i class="fas fa-times" value="price-tag"></i></button>`
  }

  const tagDeleteSymbols = document.getElementsByClassName("fa-times");
  for (var i = 0; i < tagDeleteSymbols.length; i++) {
    tagDeleteSymbols[i].addEventListener("click", (e) => {
      const value = e.target.getAttribute("value");
      var url = "/thieuvaomua?";
      if (value == "category-tag"){
        switch (searchQueryString) {
          case "AllProducts":
            switch (priceString) {
              case "AllProducts":
                url = "/thieuvaomua";
                break;
              default:
                url = `/thieuvaomua?price=${priceString}`;
                break;
            }
            break;
          default:
            switch (priceString) {
              case "AllProducts":
                url = `/thieuvaomua?search_query=${searchQueryString}`;
                break;
              default:
                url = `thieuvaomua?search_query=${searchQueryString}&price=${priceString}`;
                break;
            }
            break;
        }
      }
      else{
        switch (searchQueryString) {
          case "AllProducts":
            switch (categoryString) {
              case "AllProducts":
                url = "/thieuvaomua";
                break;
              default:
                url = `/thieuvaomua?category=${categoryString}`;
                break;
            }
            break;
          default:
            switch (categoryString) {
              case "AllProducts":
                url = `/thieuvaomua?search_query=${searchQueryString}`;
                break;
              default:
                url = `thieuvaomua?search_query=${searchQueryString}&category=${categoryString}`;
                break;
            }
            break;
        }
      }
      window.location.href = url;
    })
  } 
}

const createUserInfo = async (user) => {
  const userInfo = await db.collection("users").doc(user.uid).get();
  const userDisplayName = userInfo.data().displayName;
  const userPhotoUrl = userInfo.data().fileUrls[0];
  const boughtProductIDs = userInfo.data().boughtProducts;
  var boughtProducts = [];
  var sumPrice = 0;
  var discount = 0;
  if (boughtProductIDs[0] != null){
    for (var id of boughtProductIDs) {
      var boughtProduct = await db.collection("product").doc(id).get();
      sumPrice = sumPrice + boughtProduct.data().price;
      boughtProducts.push({
        id: id,
        data: boughtProduct.data()});
    }
  }
  return {
    userInfo: userInfo,
    boughtProductIDs: boughtProductIDs,
    userDisplayName: userDisplayName,
    userPhotoUrl: userPhotoUrl,
    boughtProducts: boughtProducts,
    sumPrice: sumPrice,
    discount: discount,
  }
}

const createKeyWords = (title) => {
  const arrTitle = [];
  let curTitle = '';
  title.split("").forEach((letter) => {
    curTitle += letter;
    arrTitle.push(curTitle);
  });
  return arrTitle;
}

var firebaseConfig = {
  apiKey: "AIzaSyDbZsOQyIquVwUQaLpKNX9RBLEwS8PBBWI",
  authDomain: "example-project-7dff3.firebaseapp.com",
  databaseURL: "https://example-project-7dff3.firebaseio.com",
  projectId: "example-project-7dff3",
  storageBucket: "example-project-7dff3.appspot.com",
  messagingSenderId: "909485789111",
  appId: "1:909485789111:web:9d1abfa0d5a244f1fea232",
  measurementId: "G-PC5RTX6C96"
};

mxFirebase.init(firebaseConfig);

const db = firebase.firestore();

route.base("/");

route("/signin", function(){
  const signIn = riot.mount("div#root", "signin", {loading: false})[0];
  var dangkyZone = document.getElementById("dang-ky-zone");
  dangkyZone.addEventListener("submit", async function(e){
    e.preventDefault();
    signIn.opts.loading = true;
    signIn.update();
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    await firebase.auth().setPersistence(firebase.auth.Auth.Persistence.SESSION);
    try {
      await mxFirebase.signIn(email, password);
      signIn.opts.loading = false;
      signIn.update();
      window.location.href = '/thieuvaomua';
    } catch(err){
      document.getElementById("err-message").innerText = err.message;
      signIn.opts.loading = false;
      signIn.update();
    }
  })
})

route("/signup", function(){
  const signUp = riot.mount("div#root", "signup", {loading: false})[0];
  initImgUpload();
  var dangkyZone = document.getElementById("dang-ky-zone");
  dangkyZone.addEventListener("submit", async function(e){
    e.preventDefault();
    signUp.opts.loading = true;
    signUp.update();
    const email = document.getElementById("email").value;
    const password = document.getElementById("password").value;
    const displayName = document.getElementById("display-name").value;
    const files= [];
    document.querySelectorAll("input[type=file]").forEach((ele) => {
      if (ele.files[0]){
        files.push(ele.files[0]);
      }
    });
    const fileUrls = await mxFirebase.putFiles(files);
    try {
      await mxFirebase.signUp(email, password);
      signUp.opts.loading = false;
      signUp.update();      
      const user = firebase.auth().currentUser;
      await db.collection("users").doc(user.uid).set({
        uid: user.uid,
        email: email,
        password: password,
        displayName: displayName,
        fileUrls: fileUrls,
        boughtProducts: [],
      });
      window.location.href = '/thieuvaomua';
    } catch(err){
      document.getElementById("err-message").innerText = err.message;
      signUp.opts.loading = false;
      signUp.update();
    }
  })
})


route("/thieuvaomua..", async function(){
  const query = route.query();
  var filter = {};
  const category = query.category || "AllProducts";
  const categoryString = decodeURIComponent(category);
  if (categoryString != "AllProducts"){
    filter.category = categoryString;
  }
  const price = query.price || "AllProducts";
  const priceString = decodeURIComponent(price);
  if (priceString != "AllProducts"){
    filter.price_group = priceString;
  }
  const searchQuery = query.search_query || "AllProducts";
  const searchQueryString = decodeURIComponent(searchQuery);
  if (searchQueryString != "AllProducts"){
    filter.keywords = searchQueryString;
  }
  var pageNo = query.page ? Number(query.page) : 1;
  const perPage = 3;
  var page = {};
  page = await paginate("product", pageNo, perPage, filter);
  const pageTotal = (page.total / perPage) == 0 ? page.total / perPage : Math.floor(page.total / perPage) + 1;
  if (pageTotal == 0) pageNo = 0;
  const user = firebase.auth().currentUser;
  console.log(user);
  if (user == null) {
    window.location.href = "/signin";
  }
  const userInfo = await createUserInfo(user);
  const opts = {
    product: page.data,
    pageNo: pageNo,
    pageTotal: pageTotal,
    category: category,
    searchQuery: searchQueryString != "AllProducts" ? "&search_query=" + searchQueryString: "",
    categoryQuery: categoryString != "AllProducts" ? "&category=" + filter.category : "",
    priceQuery: priceString != "AllProducts" ? "&price=" + filter.price_group : "",
    pageQuery: pageNo,
    ...userInfo,
  }
  const homePage = riot.mount("div#root", "thieuvaomua", opts);
  const displayName = document.getElementById("header-6");
  displayName.addEventListener("click", (e) => {
    window.location.href = `/userbasket?userId=${user.uid}`
  })
  createTags(categoryString, priceString, searchQueryString);
  const search_bar = document.getElementById("search-bar");
  search_bar.addEventListener("submit", (e) =>{
    e.preventDefault();
    const input = document.getElementById("search-bar-1").value;
    window.location.href = "/thieuvaomua?search_query=" + input + opts.priceQuery + opts.categoryQuery;
  })
  const log_out = document.getElementById("log-out");
  log_out.addEventListener("click",  async (e) => {
    await firebase.auth().signOut();
    window.location.href = "/signin";
  })
  const moreInfo = document.getElementsByClassName("item-xem-them");
  for (var i=0; i < moreInfo.length; i++){
    moreInfo[i].addEventListener("click", (e) => {
      const productID = e.target.getAttribute("productID");
      window.location.href = `/detail?productID=${productID}`;
    })
  }
});

route("/upload",  async function(){
  firebase.auth().onAuthStateChanged( async (user) => {
    if (user){
      const userInfo = await createUserInfo(user);
      const opts = {
        ...userInfo,
      }
      const uploadPage = riot.mount("div#root", "upload", opts);
      const displayName = document.getElementById("header-5");
      displayName.addEventListener("click", (e) => {
        window.location.href = `/userbasket?userId=${user.uid}`
      })
      const log_out = document.getElementById("log-out");
      log_out.addEventListener("click",  async (e) => {
        await firebase.auth().signOut();
        window.location.href = "/signin";
      })
      initImgUpload();
      const modal = initModal(document.getElementById("modal"));
      document.getElementById("sales-zone").addEventListener("submit", async function(e){
        e.preventDefault();
        const title = document.getElementById("title").value;
        const files = [];
        document.querySelectorAll("input[type=file]").forEach(function(ele){
          if(ele.files[0]){
            files.push(ele.files[0]);
          }
        });
        const category = document.getElementById("category").value;
        const price = Number(document.getElementById("price").value);
        var price_group;
        if (price < 100000){
          price_group = "lessthan100";
        }
        else{
          if (price > 1999000){
            price_group = "morethan1999";        
          }
          else{
            price_group = "from100to1999";
          }
        }
        const phoneNum = document.getElementById("phone-num").value;
        const fileUrls = await mxFirebase.putFiles(files); //ham putFiles nay de lam gi??
        const keywords = createKeyWords(title);
        const r = await mxFirebase.collection("product").save({
          title,
          fileUrls,
          category,
          keywords,
          price,
          price_group,
          uploader: {
            uid: userInfo.userInfo.data().uid,
            displayName: userInfo.userInfo.data().displayName,
            phoneNum: phoneNum,
          }
        });
        modal.open();
      });
    }
    else{
      window.location.href = "/signin"
    }
  })
})

route("/detail..", async () => {
  firebase.auth().onAuthStateChanged( async (user) => {
    if (user) {
      const userInfo = await createUserInfo(user);
      const productID = route.query().productID;
      const product = await db.collection("product").doc(productID).get();
      const opts = {
        product: product.data(),
        ...userInfo,
      }
      const detailPage = riot.mount("div#root", "detail", opts)[0];
      const displayName = document.getElementById("header-6");
      displayName.addEventListener("click", (e) => {
        window.location.href = `/userbasket?userId=${user.uid}`
      })
      const log_out = document.getElementById("log-out");
      log_out.addEventListener("click",  async (e) => {
        await firebase.auth().signOut();
        window.location.href = "/signin";
      })
      const buyButton = document.getElementById("chon-mua-button");
      buyButton.addEventListener("click", async (e) => { 
        const boughtProducts = userInfo.userInfo.data().boughtProducts;
        if (boughtProducts[0] == "") boughtProducts.shift();
        boughtProducts.push(productID);
        await db.collection("users").doc(user.uid).update({
          boughtProducts: boughtProducts,
        })
        detailPage.opts.boughtProducts.length += 1;
        detailPage.update();
      })
    }
    else {
      window.location.href = "/signin";
    }
  });
})

route("/userbasket..", () => {
  firebase.auth().onAuthStateChanged(async (user) => {
    if (user){
      const userInfo = await createUserInfo(user);
      const boughtProductIDs = userInfo.boughtProductIDs;
      const opts = {
        ...userInfo,
      }
      console.log(opts.sumPrice);
      const userBasket = riot.mount("div#root", "userbasket", opts)[0];
      const log_out = document.getElementById("log-out");
      log_out.addEventListener("click",  async (e) => {
        await firebase.auth().signOut();
        window.location.href = "/signin";
      })
      const displayName = document.getElementById("header-6");
      displayName.addEventListener("click", (e) => {
        window.location.href = `/userbasket?userId=${user.uid}`
      })
      const deleteButtons = document.getElementsByClassName("delete-button");
      for (var deleteButton of deleteButtons){
        deleteButton.addEventListener("click", async (e) => {
          const idDelete = e.target.getAttribute("id-value");
          for (var i = 0; i < boughtProductIDs.length; i++){ 
            if (idDelete == boughtProductIDs[i]) boughtProductIDs.splice(i, 1);
          }
          await db.collection("users").doc(user.uid).update({
            boughtProducts: boughtProductIDs,
          })
          window.location.href = `/userbasket?userId=${user.uid}`;
        })
      }
    }
    else{
      window.location.href = "/signin"
    }
  })
})

route.start(true);
const searchByName = async (searchString = "", categoryString = "", priceString = "") => {
    const db = firebase.firestore();
    const snapshot = await db.collection("searchResults").get();
    const size = snapshot.size;
    if (size == 0){
      const snapshot = await db.collection("product").where('keywords', 'array-contains', searchString).get();
      snapshot.docs.forEach(async (doc) =>{
        var id = doc.id;
        var title = doc.data().title;
        var fileUrls = doc.data().fileUrls;
        var category = doc.data().category;
        var price = doc.data().price;
        var price_group = doc.data().price_group;
        if ((category == categoryString || categoryString == "AllProducts") & (price_group == priceString || priceString == "AllProducts")){
          await mxFirebase.collection("searchResults").save({
            id,
            searchString,
            priceString,
            categoryString,
            title,
            fileUrls,
            category,
            price,
          });
        }
      })
    }
  }
  
  const deleteCollection = async (collectionName, searchQueryString, priceString, categoryString, pageQuery) => {
    const db = firebase.firestore();
    const snapshot = await db.collection(collectionName).get();
    const size = snapshot.size;
    if (size > 0){
      if (searchQueryString != snapshot.docs[0].data().searchString || priceString != snapshot.docs[0].data().priceString || categoryString != snapshot.docs[0].data().categoryString || pageQuery == null){
        for (var doc of snapshot.docs) {
          var id = doc.id;
          await db.collection(collectionName).doc(id).delete();
        }
      }
    }
  }
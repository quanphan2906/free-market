<thieuvaomua>
<style>
        #big-container{
            width: 100%;
            margin: auto;
            font-family: 'Roboto Slab', serif;
        }

        a {
        text-decoration: none;
        }

        .flex-row{
            display: flex;
        }

        .flex-col{
            display: flex;
            flex-flow: column;
        }

        .flex-space-between{
            display: flex;
            justify-content: space-between;
        }

        .flex-center{
            align-self: center;
        }

        .color-white{
            color: white;
        }

        .color-brand{
            color: #953F01;
        }

        .bg-color-brand{
            background-color: #953F01;
        }

        .bg-color-white{
            background-color: white;
        }

        .font-family-default{
            font-family: 'Roboto Slab', serif;
        }
        
        .font-Pacifico{
            font-family: 'Pacifico', cursive;
        }

        .font-12px{
            font-size: 12px;
        }

        .font-14px{
            font-size: 14px;
        }

        .font-16px{
            font-size: 16px;
        }

        .font-24px{
            font-size: 24px;
        }

        .border-default{
            border: 0.5px solid #000000;
            border-radius: 3px;
        }

        .border-color-brand{
            border-color: rgba(149, 63, 1, 0.9);
        }

        .opacity-80{
            opacity: 0.8;
        }

        .height-20px{
            height: 20px;
            padding-top: 0px;
            padding-bottom: 25px;
        }

        .height-25px{
            height: 25px;
        }

        #header {
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
        }

        .header-ele {
            margin: 24px 40px 0px 0px;
        }

        #header-1 {
            line-height: 20px;
            margin: 24px 60px 0px 158px;
        }

        #header-5 {
            margin: 12px 24px 0px 144px;
            object-fit: cover;
            height: 50px;
            width: 50px;
            border-radius: 50%;
        }

        #slogan {
            justify-content: space-evenly;
        }

        #slogan-1{
            margin: 70px;
            text-align: center;
        }

        #slogan-1-ele-2{
            margin: 30px 0px 0px 0px;
        }

        #slogan-2{
            align-self: flex-end;
            width: 340px;
            height: inherit;
        }

        #search-bar{
            width: 50%;
            margin: 0 auto;
            display: flex;
            justify-content: center;
        }

        #search-bar-1{
            width: 300px;
            height: 25px;
            margin-right: 8px;
        }

        .margin-left-442px{
            margin-left: 442px;
        }

        .margin-bot-24px{
            margin-bottom: 24px;
        }

        .margin-top-24px{
            margin-top: 24px;
        }

        #main-content{
            margin: 72px 0px 100px 0px;
        }

        #bo-loc-container{
            margin: 0px 72px 0px 158px;
        }

        #bo-loc{
            font-weight: bold;
        }

        #mat-hang{
            font-size: 14px;
            margin: 28px 0px 4px 0px;
        }

        .mat-hang-ele{
            font-size: 12px;
            opacity: 0.8;
            margin-top: 12px;
        }

        .fas{
            align-self: center;
            margin-top: 12px;
            font-size: 10px;
            margin-right: 4px;
        }

        .shirt-icon{
            width: 10px;
            height: 10px;
            margin-top: 15px;
            margin-right: 4px;
        }

        #gia-tien{
            font-size: 14px;
            margin: 24px 0px 4px 0px;
        }

        .gia-tien-ele{
            font-size: 12px;
            opacity: 0.8;
            margin-top: 12px;
        }

        .fa-caret-right-bo-loc{
            margin-top: 24px;
            color: #953F01;
            font-size: 16px;
        }

        .margin-bo-loc{
            margin-left: 18px;
        }

        #danh-sach{
            display: flex;
            flex-flow: column;
            width: 60%;
        }

        #danh-sach-child{
            display: flex;
            margin: 0px 0px 52px 0px;
        }

        .fa-caret-right-danh-sach{
            color: #953F01;
            align-self: center;
            margin: 0px 5px 0px 0px;
            font-size: 18px;
        }

        #danh-sach-san-pham{
            margin: 0px 452px 0px 0px;
            font-weight: bold;
        }

        #sap-xep{
            font-weight: bold;
        }

        #item-list{
            display: flex;
            flex-flow: row wrap;
            justify-content: space-between;
        }

        .items{
            width: 192px;
            height: 256px;
            box-shadow: 3px 2px 4px #ccc;
            border-radius: 4%;
            margin-top: 24px;
        }

        .item-img{
            width: 176px;
            height: 132px;
            align-self: center;
            border-radius: 4%;
        }

        .item-name{
            font-size: 14px;
            margin-left: 8px;
            margin-top: 12px;
        }

        .item-price{
            font-size: 14px;
            margin-left: 8px;
            margin-top: 4px;
        }

        .item-seller{
            font-size: 14px;
            margin-left: 8px;
            margin-top: 4px;
        }

        .item-xem-them{
            font-size: 14px;
            margin-top: 8px;
            margin-left: 100px;
        }

        .item-right-arrow{
            margin-left: 4px;
            margin-top: 8px;
        }

        #paginate-button{
            margin: 0 auto;
            margin-top: 24px;
        }

        .change-page-buttons{
            width: 90px;
            margin: 15px 12px 0px 12px;
        }

        #page-num{
            padding-top: 13px;
        }

        #footer{
            display: flex;
            flex-flow: row;
            justify-content: space-evenly;
            background-color: #585151;
            height: 250px;
        }

        #footer-name {
            font-family: 'Pacifico', cursive;
            color: white;
            font-size: 24px;
            line-height: 20px;
            margin: 36px 153px 0px 158px;
        }

        .footer-titles{
            color: white;
            margin-top: 56px;
            margin-bottom: 24px;
        }

        .footer-link{
            color: white;
            font-size: 12px;
            margin-top: 12px;
        }

        .footer-img{
            width: 20px;
            margin-top: 10px;
            margin-right: 4px;
        }
</style>


    <div id="big-container">
        <!-- Header -->
        <div id="header" class="flex-row">
            <span class="header-ele font-Pacifico color-brand font-24px" id="header-1">Có không?</span>
            <span class="header-ele">Về chúng tôi</span>
            <span class="header-ele"><a href="/upload" style="color: black">Dư? Vào bán!</a></span>
            <span class="header-ele"><a href="/thieuvaomua" style="color: black">Thiếu? Vào mua!</a></span>
            <img src='{opts.userPhotoUrl}' alt='avatar' width='100px' height='auto' class="header-ele" id="header-5">
            <span class="header-ele btn btn-warning" id="header-6" style="margin-top: 16px; height: 20px;">{opts.userDisplayName} 
            <span class="color-white" style="width: 16px; height: 18px; font-size: 12px; background-color: #000000;  border-radius: 1000px;padding: 1px 10px;">{opts.boughtProducts.length}</span></span>
            <button id="log-out" class="header-ele btn btn-3" style="margin-top: 20px; height: 32px;">Log out</button>
        </div>
        <br>

        <!-- Slogan -->
        <div class="flex-row bg-color-brand opacity-80"  id="slogan">
            <div id="slogan-1">
                <span class="flex-col color-white font-24px margin-bot-24px">Chào mừng bạn đến với Thiếu? Vào mua!</span> 
                <span class="flex-col color-white font-16px">Bạn đã sẵn sàng để mua lại món đồ cũ với giá "mềm" chưa?</span>
            </div>
            <img src="./assets/img/recycled clothes.jpg" alt="recycled clothes" id="slogan-2">
        </div>

        <!-- Search bar -->
        <form id="search-bar">
            <input type="search" class="border-default" id="search-bar-1" placeholder="Search">
            <button class="border-default border-color-brand bg-color-brand color-white shadow-3 opacity-80">Tìm kiếm</button>
        </form>

        <!--  Tag zone  -->
        <div id="tag-zone" class="flex-row"></div>

<div id="main-content" class="flex-row">
        <!-- Bộ lọc -->
    <div id="bo-loc-container">
        <div id="bo-loc">Bộ lọc</div>
        <div>
            <div class="flex-row">
                <i class="fas fa-caret-right fa-caret-right-bo-loc"></i>
                <div id="mat-hang"><a href="/thieuvaomua?category=AllProducts">Mặt hàng</a></div>
            </div>
            <div class="flex-row margin-bo-loc">
                <i class="fas fa-book"></i>
                <div class="mat-hang-ele"><a href="/thieuvaomua?category=books{opts.searchQuery}{opts.priceQuery}" style="color:black">Sách truyện</a></div>
            </div>
            <div class="flex-row margin-bo-loc">
                <i class="fas fa-paw"></i>
                <div class="mat-hang-ele"><a href="/thieuvaomua?category=pets{opts.searchQuery}{opts.priceQuery}" style="color:black">Thú cưng</a></div>
            </div>
            <div class="flex-row margin-bo-loc">
                <img class="shirt-icon" src="../assets/img/shirt-icon.svg" alt="">
                <div class="mat-hang-ele"><a href="/thieuvaomua?category=clothes{opts.searchQuery}{opts.priceQuery}" style="color:black">Quần áo cũ</a></div>
            </div>
            <div class="flex-row margin-bo-loc">
                <i class="fas fa-holly-berry"></i>
                <div class="mat-hang-ele"><a href="/thieuvaomua?category=decoratives{opts.searchQuery}{opts.priceQuery}" style="color:black">Vật trang trí lặt vặt</a></div>
            </div>
        </div>
        <div>
            <div class="flex-row">
                <i class="fas fa-caret-right fa-caret-right-bo-loc"></i>
                <div id="gia-tien">Giá tiền</div>
            </div>
            <div class="flex-row margin-bo-loc">
                <i class="fas fa-dollar-sign"></i>
                <div class="gia-tien-ele" value = "lessthan100"><a href="/thieuvaomua?price=lessthan100{opts.searchQuery}{opts.categoryQuery}" style="color:black">Ít hơn 100.000đ</a></div>
            </div>
            <div class="flex-row margin-bo-loc">
                <i class="fas fa-dollar-sign"></i> <i class="fas fa-dollar-sign"></i>
                <div class="gia-tien-ele" value = "from100to1999"><a href="/thieuvaomua?price=from100to1999{opts.searchQuery}{opts.categoryQuery}" style="color:black">Từ 100.000đ đến 1.999.000đ</a></div>
            </div>
            <div class="flex-row margin-bo-loc">
                <i class="fas fa-dollar-sign"></i> <i class="fas fa-dollar-sign"></i> <i class="fas fa-dollar-sign"></i>
                <div class="gia-tien-ele" value = "morethan1999"><a href="/thieuvaomua?price=morethan1999{opts.searchQuery}{opts.categoryQuery}" style="color:black">Lớn hơn 1.999.000đ</a></div>
            </div>
        </div>
    </div>

    <div id="danh-sach">
        <!-- Danh sách sản phẩm -->
        <div id="danh-sach-child">
            <i class="fas fa-caret-right fa-caret-right-danh-sach"></i>
            <div id="danh-sach-san-pham">Danh sách sản phẩm</div>
            <div id="sap-xep">Sắp xếp</div>
            <img id="arrow-down" src="./assets/img/arrow_drop_down-24px.svg" alt="">
        </div>
        <div id="item-list">          
            <!-- Item -->
            <div each="{product in opts.product}" class="items flex-col">
                <img class="item-img" src="{product.data.fileUrls[0]}">
                <div class="item-name">{product.data.title}</div>
                <div class="item-price">{product.data.price}đ</div>
                <div class="item-seller"><i>Được cung cấp bởi</i> <b>{product.data.uploader.displayName}</b></div>
                <div class="flex-row">
                    <div class="item-xem-them" productID="{product.id}">Xem thêm</div>
                    <img class="item-right-arrow" src="./assets/img/right-arrow.svg" alt="" width="10px" height="auto">
                </div>
            </div>
        </div> 
        <!-- Nut chuyen trang -->
        <div id="paginate-button" class="flex-row">
        <!--  cho nay can phai giu lai cac query khac nua, nhung duoi nay chi update lai page thoi   -->
            <a href="/thieuvaomua?page={opts.pageNo - 1}{opts.searchQuery}{opts.categoryQuery}{opts.priceQuery}" mx-disabled={opts.pageNo == 1}>
                <button class="change-page-buttons color-white bg-color-brand opacity-80 height-25px font-14px border-default border-color-brand rounded-2 ">Pre</button>
            </a>
            <p id="page-num">{opts.pageNo}/{opts.pageTotal}</p>
            <a href="/thieuvaomua?page={opts.pageNo + 1}{opts.searchQuery}{opts.categoryQuery}{opts.priceQuery}" mx-disabled={opts.pageNo == opts.pageTotal}>
                <button class="change-page-buttons color-white bg-color-brand opacity-80 height-25px font-14px border-default border-color-brand rounded-2">Next</button>
            </a>
        </div>
    </div>
</div>
    

    <!-- Footer -->
    <div id="footer">
        <div id="footer-name">Có không?</div>
        <div>
            <div class="footer-titles">Thông tin</div>
            <div class="footer-link">Nội quy dịch vụ</div>
            <div class="footer-link">Quy định bảo mật</div>
        </div>
        <div>
            <div class="footer-titles">Lối tắt</div>
            <div class="footer-link">Về chúng tôi</div>
            <div class="footer-link">Dư? Vào bán!</div>
            <div class="footer-link">Thiếu? Vào mua!</div>
        </div>
        <div>
            <div class="footer-titles">Liên hệ</div>
            <div class="footer-link">Hotline: 1900 1018</div>
            <div class="footer-link">Email: cokhong.connect@gmail.com</div>
            <div>
                <img class="footer-img" src="./assets/img/facebook.svg" alt="" width="50px">
                <img  class="footer-img" src="./assets/img/instagram.svg" alt="" width="50px">
            </div>
        </div>
    </div>

    </div>
</thieuvaomua>
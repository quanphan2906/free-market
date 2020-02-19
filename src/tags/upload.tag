<upload>
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

        #sales-zone{
            width: 450px;
            min-height: 700px;
            margin-top: 90px;
            margin-bottom: 90px;
        }

        .sales-zone-ele{
            align-self: center;
            display: flex;
            flex-flow: column;
            align-content: space-between;
            width: 80%;
            margin: 24px;
        }

        .input{
            height: 20px;
        }

        #dang-ban-button{
            display: block;
            flex-flow: row;
            width: 200px;
            height: 36px;
            border-radius: 28px;
            font-size: 20px;
            border-width: 0.5px;
            box-shadow: 4px 4px 4px #ccc;
            color: white;
            margin-top: 48px;
            text-align:center;
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
                <span class="flex-col color-white font-24px margin-bot-24px">Chào mừng bạn đến với Thiếu? Vào bán!</span> 
                <span class="flex-col color-white font-16px">Bạn đã sẵn sàng để bán lại một món đồ cũ chưa?</span>
            </div>
            <img src="./assets/img/recycled clothes.jpg" alt="recycled clothes" id="slogan-2">
        </div>

        
        <!-- Sales-zone -->
        <form id="sales-zone" class="r-form center-children font-14px border-standard">
            <div class="sales-zone-ele">
                <label for="">Tên sản phẩm</label>
                <input type="text" id="title" class="input" required>
            </div>
            <div class="sales-zone-ele flex-needed-col">
                <label for="">Miêu tả sản phẩm</label>
                <input type="text" id="description" class="input" style="height: 100px" >
            </div>
            <div class="sales-zone-ele flex-needed-col">
                <label for="">Giá tiền (tiền tệ sử dụng: VND)</label>
                <input type="number" id="price" class="input">
            </div>
            <div class="sales-zone-ele flex-needed-col">
                <label for="">Hình ảnh</label>
                <div>
                    <div class="mx-img-upload"></div>
                </div>
            </div>
            <div class="sales-zone-ele flex-needed-col">
                <label for="">Loại mặt hàng</label>
                <select name="" id="category" class="input" required>
                    <option value="pets">Thú cưng</option>
                    <option value="books">Sách</option>
                    <option value="decoratives">Vật trang trí lặt vặt</option>
                    <option value="clothes">Đồ cũ</option>
                </select>
            </div>
            <div class="sales-zone-ele flex-needed-col">
                <label for="">Số điện thoại liên lạc</label>
                <input type="number" id="phone-num" class="input" required>
            </div>
            <button class="sales-zone-ele bg-color-brand" id="dang-ban-button">Đăng bán</button>
        </form>
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
     
    <!-- modal -->
    <div class="flex-col mx-modal" id="modal">
        <h1 class="flex-center">Đăng bán thành công!!!</h1>
        <a href="/thieuvaomua" class="flex-center"><button class="btn btn-success">Trở về trang chủ</button></a>
    </div>
</upload>
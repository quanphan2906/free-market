<userbasket>
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

        .font-20px{
            font-size: 20px;
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
        }

        .height-25px{
            height: 25px;
        }

        .margin-bot-24px{
            margin-bottom: 24px;
        }

        .margin-top-24px{
            margin-top: 24px;
        }

        #header {
            left: 0;
            right: 0;
            bottom: 0;
            top: 0;
            margin-bottom: 20px;
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

        #product-lists{
            margin-left: 48px;
        }

        .product-imgs{
            height: 100px;
            width: auto;
        }

        #pricing-table{
            justify-self: flex-end;
            margin-right: 48px;   
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

        <!-- Slogan -->
        <div class="flex-row bg-color-brand opacity-80"  id="slogan">
            <div id="slogan-1">
                <span class="flex-col color-white font-24px margin-bot-24px">Chào mừng bạn đến với Thiếu? Vào mua!</span> 
                <span class="flex-col color-white font-16px">Bạn đã sẵn sàng để mua lại món đồ cũ với giá "mềm" chưa?</span>
            </div>
            <img src="./assets/img/recycled clothes.jpg" alt="recycled clothes" id="slogan-2">
        </div>

        <div id="main-content" class="flex-row margin-top-24px">
            <div id="product-lists" class="flex-col">
                <div each="{product in opts.boughtProducts}" class="items margin-bot-24px flex-row border" style="width: 750px;" style="box-shadow: -4px 2px 4px rgba(0, 0, 0, 0.650);">
                    <div style="width: 172px; margin: 12px; height: 100px; margin-left: 24px;"><img src="{product.data.fileUrls[0]}" class="product-imgs" style="margin-right: 12px;"></div>
                    <div style="width: 400px; margin-top: 12px;">
                        <div class="font-20px">{product.data.title}</div>
                        <div class="opacity-80 font-14px"><i>Được cung cấp bởi</i> <b> {product.data.uploader.displayName}</b></div>
                        <div class="opacity-80 font-14px">Số điện thoại {product.data.uploader.phoneNum}</div>
                    </div>
                    <div style="margin-left: 24px; margin-top: 12px;">
                        <div class="font-20px color-brand" style="margin-bottom: 28px;">{product.data.price} đ</div>
                        <button class="delete-button btn btn-danger height-20px" id-value="{product.id}" style="padding-top: 0; margin: 12px;">Xoá</button>
                    </div>
                </div>
            </div>
            <div id="pricing-table" class="border" style="align-self: center; text-align: center; align-self: center; margin-left: 157px; width: 242px; height: 80px;">
                <div>Tạm tính: {opts.sumPrice} đ</div>
                <br>
                <div>Giảm giá: {opts.discount} đ</div>
                <br>
                <div>Thành tiền: {opts.sumPrice - opts.discount} đ</div>
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
</userbasket>
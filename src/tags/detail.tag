<detail>
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
            padding-top: 0px;
            padding-bottom: 25px;
        }

        .height-25px{
            height: 25px;
        }

        .shadow-default{
            box-shadow: 3px 2px 4px #ccc;
            border-radius: 4%;
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

        .margin-bot-24px{
            margin-bottom: 24px;
        }

        .margin-top-24px{
            margin-top: 60px;
        }

        .margin-0-auto{
            margin: 0 auto;
        }

        .center{
            display: flex;
            justify-content: center;
            flex-direction: column;
            width: fit-content;
            height: fit-content;
            margin: 0 auto;
            margin-top: 48px;
            margin-bottom: 48px;
        }

        #product-img{
            width: 180px;
            height: 180px;
            margin-bottom: 24px;
        }

        #product-title{
            font-size: 24px;
            margin-bottom: 24px;
        }

        #product-price{
            font-size: 20px;
        }

        #chon-mua-button{
            width: 200px;
            height: 36px;
            font-size: 20px;
            margin-top: 12px;
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
        <br>
        
        <!-- Product Image, Name -->
        <div class="center r-card border-default shadow-default", style="width: 350px; height: 500px;">
            <img src="{opts.product.fileUrls[0]}" alt="" id="product-img" class="margin-0-auto margin-top-24px">
            <div id="product-title" class="margin-0-auto">{opts.product.title}</div>
            <!-- Thông tin sản phẩm -->
            <div>
                <div id="product-price" class="color-brand margin-0-auto ml-2 font-20px">{opts.product.price} đ</div i>
                <div id="product-description" class="margin-0-auto ml-2 font-16px">Miêu tả sản phẩm</div>
                <p class="ml-2">{opts.description}</p>
            </div>
            <div id="uploader-info">
                <div class="ml-2 font-14px text-light"><i>Được cung cấp bởi</i> <b>{opts.product.uploader.displayName}</b></div c>
                <div class="ml-2 margin-bot-24px font-14px text-light">Số điện thoại: {opts.product.uploader.phoneNum}</div>
            </div>
            <button class="margin-0-auto btn btn-warning rounded-1 font-family-default" id="chon-mua-button" style="padding-bottom: 32px;padding-top: 5px;">Chọn mua</button>
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
</detail>
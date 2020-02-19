<signup>
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
            display: column;
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
            border: 1px ridge #000000;
            border-radius: 12px;
        }

        #header {
            background-color: white;
            box-shadow: 3px 2px 4px #ccc;
            margin-bottom: 72px;
            height: 40px;
        }

        .brand-name{
            margin-left: 100px;
        }

        .header-ele {
            margin-top: 10px;
        }

        #header-1 {
            font-family: 'Pacifico', cursive;
            font-size: 24px;
            line-height: 20px;
            margin: 24px 153px 0px 100px;
        }

        #main-content{
            margin-bottom: 112px;
        }

        #thong-tin-chung{
            width: 400px;
            height: 240px;
            margin: 0px 32px 0px 160px;
            opacity: 0.8;
        }

        .margin-thongtin-big{
            margin-bottom: 56px;
        }

        .margin-thongtin{
            margin: 24px 24px 0px 24px;
        }

        .font-size-small{
            font-size: 12px;
            align-self: flex-end;
        }

        #dang-ky-zone{
            min-height: 428px;
            width: 500px;
        }

        .dang-ky-ele{
            width: 504px;
            margin: 12px 8px 0px 8px;
        }

        .input-length-1{
            width:  100%;
            height: 24px;
        }

        .input-length-2{
            width: 100%;
            height: 24px;
            margin-right: 50px;
        }

        .ho-ten{
            display: flex;
            justify-content: space-between;
        }

        .input-length-3{
            width: 100px;
            height: 24px;
        }

        #dang-ky-button{
            align-self: center;
        }

        .dang-nhap-link{
            align-self: center;
            text-align: center;
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
    <div id="header" class="nav sb">
        <a class="color-brand font-Pacifico brand-name font-24px" href="">Có không?</a>
        <ul>
            <li class="header-ele"><a href="">Về chúng tôi</a></li>
            <li class="header-ele"><a href="/upload">Dư? Vào bán!</a></li>
            <li class="header-ele"><a href="/thieuvaomua">Thiếu? Vào mua!</a></li>
            <li id="dang-nhap"><a href="/signin"><button class="btn btn-standard rounded-1 btn-small bg-color-brand color-white">Đăng nhập</button></a></li>
            <li id="dang-ky"><a href="signup"><button class="btn btn-standard rounded-1 btn-small color-brand bg-color-white border-standard">Đăng ký</button></a></li>
        </ul>
    </div>

    <!-- Main content -->
    <div id="main-content" class="flex-row">
        <!-- Thong tin chung -->
        <div class="flex-col bg-color-brand opacity-90" id="thong-tin-chung">
            <div class="color-white margin-thongtin margin-thongtin-big">Website bán hàng cũ uy tín. Dù thừa hay thiếu, chúng tôi đều đáp ứng được!</div>
            <div class="color-white margin-thongtin font-size-small">Trở thành một phần của đại gia đình Có không? để được kết nối với người có và người không! </div>
            <div class="color-white margin-thongtin font-size-small">Bằng cách đăng ký, bạn đồng ý với Nội quy dịch vụ và Quy định bảo mật </div>
        </div>
        <!-- Dang ky Zone -->
            <form id="dang-ky-zone" action="" class="r-form flex-col center-children font-14px border-standard" style="height: 500px">
                <div class="dang-ky-ele" style="margin-top: -60px;">
                    <label for="">Email</label>
                    <input class="input-text" id="email" type="email">
                </div>
                <div class="dang-ky-ele">
                    <label for="">Password</label>
                    <input class="input-text" id="password" type="password">
                </div>
                <div class="dang-ky-ele">
                    <label for="">Display name</label>
                    <input class="input-text" id="display-name" type="text">
                </div>
                <div class="dang-ky-ele">
                    <label for="">Avatar photo</label>
                    <div class="mx-img-upload" id="ava-photo" style="width: 100px; height: 100px"></div>
                </div>
                <div id="err-message" class="dang-ky-ele"></div>
                <button class="btn btn-6 rounded-standard bg-color-brand" id="dang-ky-button" style="min-width: 50px;">{opts.loading ? "Loading...": "Đăng ký tài khoản"}</button>
                <div class="dang-ky-ele color-brand dang-nhap-link"><a href="/signin" style="color:#953F01">Đã có tài khoản? Đăng nhập!</a></div>
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
</div>
</signup>
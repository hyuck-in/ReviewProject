<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coding Review-Login</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.svg">
    <link rel="stylesheet" href="/CSS/ingin.css?ver=1">
</head>
<body>
    <header id="header">
        <div id="header_title">
            <a href="#">
                <img src="/IMAGES/TitleLogo.svg" id="title_logo">
                " Let's review it well."
            </a>
        </div>
    </header>
    <main id="main">
        <div id="container">
            <form id="login_form">
                <div id="login_content">
                    <div class="login_item">
                        <div class="text_box">
                            <input type="text" id = "loginflag" placeholder="id" name="loginflag" value="<%=request.getAttribute("user_id") %>">
                        </div>
                        <div class="error">
                            Please enter id.
                        </div>
                    </div>
                    
                    <div class="login_item">
                        <div class="text_box">
                           <input type="password" id="pwd" class="input_text" placeholder="비밀번호" name="user_pwd">
                        </div>
                        <div id="pwd_error" class="error">
                            Please enter password.
                        </div>
                    </div>

                    <div id="submit_box">
                   		<input type="hidden" id="submitflag" name="submitflag" value="false">
                        <input type="button" id="input_submit" value="Login">
                    </div>
                    
                    <div>
                        <hr>
                        <div id="login_chk_box">
                            <input type="checkbox" id="login_chk">
                            <label for="login_chk" id="login_labal"></label>
                            <label for="login_chk" id="chk_label">login keep check</label>
                        </div>
                    </div>
                </div>
            </form>
            <div id="login_join">
                <hr>    
                <a href="#">Join</a>
                <hr>
            </div>
        </div>
    </main>
    <footer id="footer">
        <article class="box" id="information">
            <dl>
                <dt>
                    FrontEnd Information
                </dt>
                <dd><span>name: </span>Choi Jong Won</dd>
                <dd><span>birthday: </span>1998.01.18</dd>
                <dd><span>gender: </span>male</dd>
                <dd><span>email: </span>choijoy10@naver.com</dd>
                <dd><span>phone: </span>010-3003-7022</dd>
            </dl>
            <dl>
                <dt>
                    BackEnd Information
                </dt>
                <dd><span>name: </span>Kwon Hyuk In</dd>
                <dd><span>birthday: </span>test</dd>
                <dd><span>gender: </span>male</dd>
                <dd><span>email: </span>test</dd>
                <dd><span>phone: </span>test</dd>
            </dl>
        </article>
    </footer>
    <script src="/JS/login.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coding Review</title>
    <link rel="shortcut icon" type="image?x-icon" href="/IMAGES/TitleLogo.svg">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="/CSS/index.css?ver=1">
</head>
<body>
    <header id="header">
        <nav class="box">
            <div id="left_nav">
                <a href="#"><img src="/IMAGES/TitleLogo.svg" id="logo"> Let's review it well.</a>
            </div>
            <div id="right_nav">
                <li>
                    <a href="#">Login</a>
                </li>
                <li>
                    <a href="#">Join</a>
                </li>
                <li>
                    <span id="help">Help</span>
                </li>
            </div>
        </nav>
    </header>
    <main id="main">
        <div class="box">
            <nav id="menu_icon">
                <a href="#">
                    <img src="../IMAGES/MenuIcon.svg" id="contain_icon">
                </a>
            </nav>

            <div id="all_manus">
                <hgroup id="hmanus">
                    <h2>All List</h2>
                    <img src="/IMAGES/Close_x.png" id="close_btn">
                </hgroup>
                <!-- width: 1200px -->
                <div id="section" >
                    <div>
                        <!-- width: 200px; margin: 20px -->
                        <div class="group">
                            <div class="group_title">
                                <a href="#" class="courselink">Java</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div> 
                                   <div class="sub_nav depth_2">
                                       <ul class="sub_nav">
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test1-1</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test1-2</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test1-3</a>
                                                </div>
                                            </li>
                                       </ul>
                                   </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div> 
                                    <div class="sub_nav depth_2">
                                        <ul class="sub_nav">
                                             <li>
                                                 <div class="label_public">
                                                     <a href="#">test2-1</a>
                                                 </div>
                                             </li>
                                             <li>
                                                 <div class="label_public">
                                                     <a href="#">test2-2</a>
                                                 </div>
                                             </li>
                                        </ul>
                                    </div>
                                 </li>
                            </ul>
                        </div>
                        <div class="group">
                            <div class="group_title">
                                <a href="#" class="courselink">CSS</a>
                                <hr>
                            </div>
                            <ul class="sub_nav">
                                <li>
                                   <div class="label_public">
                                       <a href="#">test1</a>
                                   </div> 
                                   <div class="sub_nav depth_2">
                                       <ul class="sub_nav">
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test1-1</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test1-2</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <div class="label_public">
                                        <a href="#">test2</a>
                                    </div> 
                                    <div class="sub_nav depth_2">
                                        <ul class="sub_nav">
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test2-1</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test2-2</a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="label_public">
                                                    <a href="#">test2-3</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            
            <!--             
            <div id="swiper-container__id" class="swiper-container">
                <article id="main_art" class="swiper-wrapper">
                    <nav class="swiper-slide">
                        <div class="box"><span>Java</span></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><span>Script</span></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><span>HTML</span></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><span>CSS</span></div>
                    </nav>
                    <nav class="swiper-slide">
                        <div class="box"><span>Js</span></div>
                    </nav>
                </article>
                
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
             -->
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
                <dd><span>birthday: </span>1997.10.24</dd>
                <dd><span>gender: </span>male</dd>
                <dd><span>email: </span>khin3910@hanmail.net</dd>
                <dd><span>phone: </span>010-3910-9860</dd>
            </dl>
        </article>
    </footer>
    <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="../JS/pageSwiper.js"></script>
</body>
</html>
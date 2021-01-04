<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>Document</title> -->
    <title>Things to do</title>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
        <!-- <link href="index.css" rel="stylesheet" type="text/css"> -->
        <link href="sights.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- <script src="index.js" type="text/javascript"></script> -->
        <script src="sigths.js" type="text/javascript" ></script>
</head>
<body id="">
        
    <!-- 헤더시작 -->
    <header class="" id="header">
        <div class="hd_b1">
            
            <!-- 버거메뉴 -->
            <div class="hd_c1">
                <svg focusable="false" viewBox="0 0 24 24">
                    <path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"></path>
                </svg>
            </div>

            <!-- 사이트로고 -->
            <div class="hd_c2">
                <a class="" href="https://g2project.github.io/main">
                    <p>Top Sights</p>
                </a>
            </div>
        </div>

        <div class="hd_b2">
            <!-- 헤더 오른쪽 그리드메뉴 -->
            <div class="hd_c3">
                <a class="" href="#">
                    <svg class="gb_8e" focusable="false" viewBox="0 0 24 24">
                        <path d="M6,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM16,6c0,1.1 0.9,2 2,2s2,-0.9 2,-2 -0.9,-2 -2,-2 -2,0.9 -2,2zM12,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2z"></path>
                    </svg>
                </a>
            </div>

            <!-- 헤더 오른쪽 사용자 이름로고 -->
            <div class="hd_c4">
                <a class="" href="./login/login.html">
                    <img class="" src="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s32-c-mo" srcset="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s32-c-mo 1x, https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s64-c-mo 2x " alt="" aria-hidden="true" data-noaft="">
                </a>
            </div>
        </div>
        
        </header>

    <!-- <div class="wrapper"> -->
        <!-- 왼쪽사이드바 프레임 -->
        <div id="sb">
            <!-- 왼쪽사이드바 로고5개 프레임 -->
            <nav class="">

                <!-- 왼쪽사이드바 로고5개 중 1번 여행 -->
                <div>
                    <a class="sb_it sb_i1" href="https://g2project.github.io/main/trip/trip.html">
                        <button class="sb_btn" >
                            <div class=""></div>
                            <span class="">
                                <!-- 왼쪽사이드바 로고5개 중 1번 여행 아이콘 -->
                                <svg viewBox="0 0 24 24" class="sb_svg">
                                    <path d="M13.97 5.34c.01-.11.03-.22.03-.34 0-1.1-.9-2-2-2s-2 .9-2 2c0 .12.02.23.03.34A5.997 5.997 0 0 0 6 11v8c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2v-8c0-2.62-1.69-4.85-4.03-5.66zM12 4c.55 0 1 .45 1 1 0 .03-.01.06-.02.09-.32-.06-.64-.09-.98-.09s-.66.03-.98.09C11.01 5.06 11 5.03 11 5c0-.55.45-1 1-1zm3 14H9v-1.5h6V18zm-2.06-6.06L12 14l-.94-2.06L9 11l2.06-.94L12 8l.94 2.06L15 11l-2.06.94z"></path>
                                </svg>
                                <!-- 왼쪽사이드바 로고5개 중 1번 여행 아이콘 밑 제목 Trips -->
                            </span>
                            <div class="">
                                <span>
                                    여행
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 2번 Things to do -->
                <div>
                    <a class="sb_it sb_i2" href="https://g2project.github.io/main/sights/sights.html">
                        <button class="sb_btn">
                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 2번 Things to do 아이콘 -->
                            <svg viewBox="0 0 612 612" class="sb_svg">
                                <circle cx="256" cy="277.333" r="106.667"/>
                                <path d="M469.333,106.667h-67.656c-8.552,0-16.583-3.333-22.635-9.375l-39-39c-10.073-10.073-23.469-15.625-37.719-15.625     h-92.646c-14.25,0-27.646,5.552-37.719,15.625l-39,39c-6.052,6.042-14.083,9.375-22.635,9.375H42.667     C19.135,106.667,0,125.802,0,149.333v277.333c0,23.531,19.135,42.667,42.667,42.667h426.667     c23.531,0,42.667-19.135,42.667-42.667V149.333C512,125.802,492.865,106.667,469.333,106.667z M256,405.333     c-70.583,0-128-57.417-128-128s57.417-128,128-128s128,57.417,128,128S326.583,405.333,256,405.333z M426.667,213.333     c-11.76,0-21.333-9.573-21.333-21.333s9.573-21.333,21.333-21.333S448,180.24,448,192S438.427,213.333,426.667,213.333z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 2번 아이콘 밑 제목 Things to do -->
                            <div class="">
                                <span>
                                    할 것
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 3번 Flights -->
                <div>
                    <a class="sb_it sb_i3" href="https://g2project.github.io/main/sub_flight/sub_flight.html">
                        <button class="sb_btn">


                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 3번 Flights 아이콘 -->
                            <svg viewBox="0 0 512 512" class="sb_svg">
                                <path d="M373.032,223.322h-24.21V34.133h16.212c9.425,0,17.067-7.641,17.067-17.067S374.46,0,365.034,0H146.966
                                c-9.425,0-17.067,7.641-17.067,17.067s7.641,17.067,17.067,17.067h16.212v189.189h-24.21c-21.958,0-39.822,17.864-39.822,39.822
                                v177.812c0,21.958,17.864,39.822,39.822,39.822h10.812v14.155c0,9.425,7.641,17.067,17.067,17.067s17.067-7.641,17.067-17.067
                                v-14.155h144.172v14.155c0,9.425,7.641,17.067,17.067,17.067s17.067-7.641,17.067-17.067v-14.155h10.812
                                c21.958,0,39.822-17.864,39.822-39.822V263.144C412.854,241.186,394.99,223.322,373.032,223.322z M197.311,34.133h117.378v189.189
                                H197.311V34.133z M331.756,400.548H180.244c-9.425,0-17.067-7.641-17.067-17.067s7.641-17.067,17.067-17.067h151.511
                                c9.425,0,17.067,7.641,17.067,17.067S341.181,400.548,331.756,400.548z M331.756,337.686H180.244
                                c-9.425,0-17.067-7.641-17.067-17.067s7.641-17.067,17.067-17.067h151.511c9.425,0,17.067,7.641,17.067,17.067
                                S341.181,337.686,331.756,337.686z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span>
                                    여행가이드
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 4번 Hotels -->
                <div>
                    <a class="sb_it sb_i4" href="http://changmi12.dothome.co.kr/hotels.html">
                        <button class="sb_btn">
                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 4번 아이콘 -->
                            <svg viewBox="0 0 24 24" class="sb_svg">
                                <path d="M12.0224 13.9993C11.3753 15.0098 11.0001 16.2111 11.0001 17.5C11.0001 19.1303 11.6003 20.6205 12.5919 21.7615C11.7963 
                                21.9216 10.9314 22.0011 10.0001 22.0011C6.57915 22.0011 4.05619 20.9289 2.51403 18.7646C2.18207 18.2987 2.00366 17.7409 2.00366 
                                17.1688V16.2488C2.00366 15.0068 3.01052 13.9999 4.25254 13.9999L12.0224 13.9993ZM17.5001 12C20.5377 12 23.0001 14.4624 23.0001 
                                17.5C23.0001 20.5376 20.5377 23 17.5001 23C14.4626 23 12.0001 20.5376 12.0001 17.5C12.0001 14.4624 14.4626 12 17.5001 12ZM17.5001 
                                19.751C17.1552 19.751 16.8756 20.0306 16.8756 20.3755C16.8756 20.7204 17.1552 21 17.5001 21C17.845 21 18.1246 20.7204 18.1246 
                                20.3755C18.1246 20.0306 17.845 19.751 17.5001 19.751ZM17.5002 13.8741C16.4522 13.8741 15.6359 14.6915 15.6468 15.8284C15.6494 
                                16.1045 15.8754 16.3262 16.1516 16.3236C16.4277 16.3209 16.6494 16.0949 16.6467 15.8188C16.6412 15.2398 17.0064 14.8741 17.5002 
                                14.8741C17.9725 14.8741 18.3536 15.266 18.3536 15.8236C18.3536 16.0158 18.2983 16.1659 18.1296 16.3851L18.0356 16.501L17.9366 
                                16.6142L17.6712 16.9043L17.5348 17.0615C17.1515 17.5182 17.0002 17.854 17.0002 18.3716C17.0002 18.6477 17.224 18.8716 17.5002 
                                18.8716C17.7763 18.8716 18.0002 18.6477 18.0002 18.3716C18.0002 18.1684 18.0587 18.0126 18.239 17.7813L18.3239 17.6772L18.4249 
                                17.5618L18.6906 17.2713L18.8252 17.1162C19.2035 16.6654 19.3536 16.333 19.3536 15.8236C19.3536 14.7199 18.5312 13.8741 17.5002 
                                13.8741ZM10.0001 2.00464C12.7615 2.00464 15.0001 4.24321 15.0001 7.00464C15.0001 9.76606 12.7615 12.0046 10.0001 12.0046C7.2387 
                                12.0046 5.00012 9.76606 5.00012 7.00464C5.00012 4.24321 7.2387 2.00464 10.0001 2.00464Z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span>
                                    Q&A
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 5번 Holiday homes -->
                <!-- <div>
                    <a class="sb_it sb_i5" href="https://g2project.github.io/main/Holidays/HolidayHomes.html">
                        <button class="sb_btn">
                            <div class=""></div>
                            <svg viewBox="0 0 30 30" class="sb_svg">
                                <path d="M3.674,24.876c0,0-0.024,0.604,0.566,0.604c0.734,0,6.811-0.008,6.811-0.008l0.01-5.581   c0,0-0.096-0.92,0.797-0.92h2.826c1.056,0,0.991,0.92,0.991,0.92l-0.012,5.563c0,0,5.762,0,6.667,0   c0.749,0,0.715-0.752,0.715-0.752V14.413l-9.396-8.358l-9.975,8.358C3.674,14.413,3.674,24.876,3.674,24.876z"/>
                                <path d="M0,13.635c0,0,0.847,1.561,2.694,0l11.038-9.338l10.349,9.28c2.138,1.542,2.939,0,2.939,0   L13.732,1.54L0,13.635z"/>
                                <polygon points="23.83,4.275 21.168,4.275 21.179,7.503 23.83,9.752  "/>
                            </svg>
                            <div class="">
                                <span jsname="iSelEd">
                                    Holiday homes
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div> -->
            </nav>
        </div>
        <!-- 왼쪽사이드바 로고 5개 끝 -->

        <!-- 가운데 전체 프레임 -->
        <div id="center">

            
            <!-- Popular food and drink -->
            <div class="pf_cn">
                <div class="pf_tt">
                    <div class="">
                        <div class="">
                            <h2 class="">제주 향토 음식</h2>
                        </div>
                        <h3 class="">Iconic local dishes</h3>
                    </div>
                </div>

                
                <div class="pop_con">
                    <div class="left">  <!-- 왼쪽 사진 부분-->
                        <img src="https://github.com/g2project/main/blob/main/hotels/image/busan.jpg?raw=true">
                        <div class="title1">
                            <h2>부산광역시</h2>
                            <p>숙박시설 1,695개 · 평균 54,124원/박</p>
                        </div>
                    </div>
                    <div class="right"> <!-- 오른쪽 슬라이드 부분-->

                        <div class="slideshow">
                            <div class="slideshow-slides">
                                <div class="slide" id="slide-1">
                                    <div class="aa1">
                                        <a href="./"><img src="https://github.com/g2project/main/blob/main/hotels/image/busan1.PNG?raw=true" alt="" width="210" height="160"></a>
                                    </div>
                                    <div class="bb1">
                                        <p>Hilton Busan</p>
                                        <p>4 <sapn class="ye">★★★★☆</sapn> (6,542)</p>
                                        <p>5성급 호텔</p>
                                    </div>
                                </div>
                                <div class="slide" id="slide-2">
                                    <div class="aa1">
                                        <a href="./"><img src="https://github.com/g2project/main/blob/main/hotels/image/busan2.PNG?raw=true" alt="" width="210" height="160"></a>
                                    </div>
                                    <div class="bb1">
                                        <p>파라다이스호텔 부산</p>
                                        <p>4 <sapn class="ye">★★★★☆</sapn> (4,256)</p>
                                        <p>5성급 호텔</p>
                                    </div>
                                </div>
                                <div class="slide" id="slide-3">
                                    <div class="aa1">
                                        <a href="./"><img src="https://github.com/g2project/main/blob/main/hotels/image/busan3.PNG?raw=true" alt="" width="210" height="160"></a>
                                    </div>
                                    <div class="bb1">
                                        <p>한화리조트 해운대</p>
                                        <p>4 <sapn class="ye">★★★★☆</sapn> (4,275)</p>
                                        <p>4성급 호텔</p>
                                    </div>
                                </div>
                                <div class="slide" id="slide-4">
                                    <div class="aa1">
                                        <a href="./"></a><img src="https://github.com/g2project/main/blob/main/hotels/image/busan4.PNG?raw=true" alt="" width="210" height="160"></a>
                                    </div>
                                    <div class="bb1">
                                        <p>파크 하얏트 부산</p>
                                        <p>4 <sapn class="ye">★★★★☆</sapn> (2,211)</p>
                                        <p>5성급 호텔</p>
                                    </div>
                                </div>
                                <div class="slide" id="slide-5">
                                    <div class="aa1">
                                        <a href="./"><img src="https://github.com/g2project/main/blob/main/hotels/image/busan5.PNG?raw=true" alt="" width="210" height="160"></a>
                                    </div>
                                    <div class="bb1">
                                        <p>웨스틴조선 부산</p>
                                        <p>4 <sapn class="ye">★★★★☆</sapn> (3,118)</p>
                                        <p>5성급 호텔</p>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="slideshow-nav">
                        <a href="#" class="prev">Prev</a>
                        <a href="#" class="next">Next</a>
                    </div>
                    
                </div>


                <div>
                    <div >
                        <div class="">
                            <div class="">
                                <div class="">
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="pf">
                                                    <div class="pf_fr">
                                                        <easy-img class=""></easy-img>
                                                            <!-- <div class="" style="padding-top:100%">
                                                            </div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_1.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">밀면</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="" style="padding-top:100%">
                                                            </div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_2.jpg?raw=true" data-iml="1462.459999951534">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">호떡</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_3.jpg?raw=true" data-iml="1462.544999900274">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">파전</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_4.jpg?raw=true"  data-iml="1462.664999999106">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">막걸리</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_5.jpg?raw=true"  data-iml="1462.7449999097735">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">전복죽</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%">
                                                            </div> -->
                                                            <img class="R1Ybne pzJ1lf" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_6.jpg?raw=true" data-iml="1462.8549999324605">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">떡볶이</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_7.jpg?raw=true"  data-iml="1462.9499999573454">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">삼계탕</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_8.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">산낙지</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_9.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">김밥</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_10.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">족발</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_11.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">만두</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_12.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">소주</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_13.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">불고기</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_14.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div>
                                                        <div class="pf_dt">
                                                            <div class="">
                                                                <div class="">부대찌개</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_15.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">빙수</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_16.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">안동찜닭</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_17.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">비빔밥</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_18.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">게장</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_19.jpg?raw=true" >
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">된장찌개</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_20.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">전</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_21.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">짜장면</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_22.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">순대</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_23.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">김치</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_24.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">설렁탕</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_25.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">칼국수</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_26.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">포장마차</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_27.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">치킨</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_28.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">곱창</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_29.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">짬뽕</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_30.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">유자차</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_31.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">냉면</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_32.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">전골</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_33.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">삼겹살구이</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_34.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">국밥</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_35.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">해장국</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_36.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">순두부찌개</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_37.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">닭갈비</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_38.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">회</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne YH2pd" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_39.jpg?raw=true"  alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">찌개</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="R1Ybne pzJ1lf" jscontroller="aE70lb" jsaction="rcuQ6b:eWmOsf" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_40.jpg?raw=true" alt="">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">낚지볶음</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pf_ak pf_lf">
                                <div>
                                    <button class="">
                                        <span class=""></span>
                                        <div class=""></div>
                                        <span class="">
                                            <svg width="18" height="18" viewBox="0 0 24 24" focusable="false" class="">
                                                <path d="M16.41 5.41L15 4l-8 8 8 8 1.41-1.41L9.83 12"></path>
                                            </svg>
                                        </span>
                                    </button>
                                </div>
                            </div>
                            <div class="pf_ak pf_rt">
                                <div>
                                    <button class="">
                                        <span class=""></span>
                                        <div class=""></div>
                                        <span class="">
                                            <svg width="18" height="18" viewBox="0 0 24 24" focusable="false" class="">
                                                <path d="M7.59 18.59L9 20l8-8-8-8-1.41 1.41L14.17 12"></path>
                                            </svg>
                                        </span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class=""></div>
            </div>


            <!-- Popular food and drink text-->


            <div class="fd_cn">
                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_1.jpg?raw=true">
                            <div class="fd_a">
                                <div class="fd_a_t">밀면</div>
                                    <div class="fd_a_c">밀면은 부산의 향토 음식 중 하나이다. 밀가루, 고구마 전분, 감자 전분 등을 배합하여 만든 면과 소 사골과 여러가지 약초, 채소 등으로 우려낸 육수를 시원하게 해서 함께 먹는다. 냉면과 유사하게 물밀면, 비빔밀면이 대표적이며 면에 쑥 등을 첨가한 쑥밀면도 있다. 
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EB%B0%80%EB%A9%B4" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20밀면%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=밀면%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_2.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">호떡</div>
                                    <div class="fd_a_c">호떡은 한국과 중국 등에서 먹는 간식으로, 찹쌀이나 밀가루를 반죽하여 만든 설탕이 들어있는 뜨거운 빵이다. 열량이 230칼로리 정도 된다
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%ED%98%B8%EB%96%A1" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20호떡%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=호떡%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_3.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">파전</div>
                                    <div class="fd_a_c">파전은 전의 일종으로 거의 대부분이 달걀과 밀가루로 이루어진 팬케이크와 같은 한국의 요리이다. 파를 넣는다는 점에서 중국의 파기름떡과 유사하다. 또, 여러 재료를 넣을 수 있다는 점에서 한국의 피자로 비유하기도 한다. 이를테면 김치라든지, 오징어와 같은 해산물을 다른 채소인 당근, 양파와 함께 곁들일 수 있다. 간혹 쇠고기, 햄을 넣는 경우도 있다. 뜨거운 빵이다. 열량이 230칼로리 정도 된다
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%ED%8C%8C%EC%A0%84" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20파전%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=파전%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_4.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">막걸리</div>
                                    <div class="fd_a_c">막걸리는 한국의 전통주로, 탁주나 농주, 재주, 회주, 백주라고도 한다. 보통 쌀이나 밀에 누룩을 첨가하여 발효시켜 만든다. 발효할 때에 알코올 발효와 함께 유산균 발효가 이루어진다. 막걸리의 알코올 도수는 6 ~ 18% 정도이다. 찹쌀·멥쌀·보리·밀가루 등을 쪄서 식힌 다음 누룩과 물을 섞고 일정한 온도에서 발효시켜 술 지게미를 걸러 만든다. 이때 술지게미를 거르지 않고 밥풀을 띄운 것을 동동주라고 한다.
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EB%A7%89%EA%B1%B8%EB%A6%AC" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20막걸리%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=막걸리%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_5.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">전복죽</div>
                                    <div class="fd_a_c">전복죽은 죽의 일종으로 흰 쌀과 전복으로 만든 한국 요리이다. 전복은 한국 요리에서 고품질의 재료로 여기며 한국의 왕에게 드리는 선물로 자주 언급된다. 이 요리는 전복이 풍부한 제주도의 특산품이다. 전복죽은 맛뿐 아니라 아픈 환자나 노인에게 영양가가 높고 소화가 잘 되는 음식으로 여겨진다.
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EC%A0%84%EB%B3%B5%EC%A3%BD" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20전복죽%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=전복죽%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_6.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">떡볶이</div>
                                    <div class="fd_a_c">떡볶이는 가래떡을 주재료로 하는 한국 요리다. 일반적인 떡볶이는 밀떡, 쌀떡, 어묵, 채소, 고추장 등의 양념을 넣어 볶은 음식으로 한국의 대표적 길거리 음식이다. 매운 고추장과 매운 간장을 기본으로 양념할 수 있는데 전자가 가장 대표적인 형태다.
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EB%96%A1%EB%B3%B6%EC%9D%B4" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20떡볶이%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=떡볶이%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_7.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">삼계탕</div>
                                    <div class="fd_a_c">삼계탕은 한국 요리 중 하나서로 닭 한 마리를 통째로 인삼, 대추, 생강, 마늘 등의 재료와 함께 고아 만든다. 한국에서는 주로 삼복날에 먹는다. 삼계탕은 여름철의 대표적인 보양음식이다. 한편, 삼계탕은 계삼탕이라고도 한다. 그리고 병아리보다 조금 큰 닭을 이용한 것은 영계백숙이라고 하며, 닭 한 마리를 넣지 않고 반토막을 내어 넣은 것을 반계탕이라고 한다.
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EC%82%BC%EA%B3%84%ED%83%95" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20삼계탕%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=삼계탕%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_8.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">산낙지</div>
                                    <div class="fd_a_c">산낙지, 산낙지회는 회 요리의 일종인 한국 요리이다. 이는 "살아 있는"의 "산"과 "낙지"의 결합으로 만들어진 낱말이나, 낙지나 문어 등 빨판이 있는 연체동물은 죽은 뒤에도 신경체계가 계속해서 반응하기 때문에 마치 살아있는 것 처럼 빨판이 꿈틀거리는 것이다. 그리고 기도에 걸려서 사망하는 사례가 많다. 낙지는 보통 고통을 최소화하는 방식으로 한 번에 잡아 내장을 제거한 뒤 여러 덩어리로 잘게 잘라 깨나 참기름으로 살짝 양념에 곁들여 먹는다.
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EC%82%B0%EB%82%99%EC%A7%80" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20산낙지%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=산낙지%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>

                <div class="fd_tt">
                    <div class="fd_tt2">
                        <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/main_sub/img/fd_9.jpg?raw=true" >
                            <div class="fd_a">
                                <div class="fd_a_t">김밥</div>
                                    <div class="fd_a_c">김밥은 소금과 참기름으로 맛을 낸 밥을 시금치, 단무지, 당근, 달걀, 우엉 등 속재료를 넣고 김으로 말아서 한입 크기로 썰어 낸 음식이다. 주먹밥처럼 이동할 때 먹기가 편하여 소풍이나 여행할 때 즐겨 먹는다.
                                        <a class="fd_w" href="https://ko.wikipedia.org/wiki/%EA%B9%80%EB%B0%A5" role="link" tabindex="0" data-open-in-new-window="true" target="_blank">Wikipedia</a>
                                    </div>
                            </div>
                    </div>
                    <div class="fd_rl">
                        <div class="fd_r">
                        <a class="fd_rt" href="https://www.google.com/search?q=부산광역시의%20김밥%20맛집&amp;nfpr=1" target="_blank" aria-label="추천 맛집">추천 맛집</a>
                        </div>
                        <div class="fd_l">
                        <a class="" href="https://www.google.com/search?q=김밥%20알아보기&amp;nfpr=1" target="_blank" aria-label="자세히 알아보기">자세히 알아보기</a>
                        </div> 
                    </div>
                </div>
            </div>        


            <hr>

            <!-- 푸터 프레임 -->
            <footer class="ft_wp">
                <div class="ft_lf">
                    <p>(63122) 제주특별자치도 제주시 선덕로 23(연동) TopSights </p>
                    <p>관광문의 : 제주관광공사 Tel : 064-740-6000~1FAX : 064-740-6090 사업자등록번호 : 123-45-67899</p>
                    <p>관광불편신고 : 제주안내 120콜센터(국번없이 120번)</p><br>
                    <p>Copyright©Jeju Tourism Organization, All rights reserved.</p><br>
                    <p>홈페이지에 게시된 이메일 주소가 자동수집되는 것을 거부하며, 위반시 정보통신망법에 의해 처벌될 수 있습니다.</p>
                </div>
                
                
                <!-- 푸터 내부 둘째줄 -->
                <div class="ft_ls">
                    <p class="">Content written by Google unless otherwise noted</p>
                </div>
            </footer>
        </div>                          
          

    <script src="food.js"></script>
</body>
</html>
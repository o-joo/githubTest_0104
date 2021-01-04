<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>subtrip</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
    <link href="safetrip.css" rel="stylesheet" type="text/css">
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>  
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/9197beab6d.js" crossorigin="anonymous"></script>
    <script src="safetrip.js"></script>
</head>
<body>

   <header class="" id="header">
        <!-- 헤더 내부 박스1 - 좌측(버거메뉴+사이트로고+가운데 빈부분까지) -->
        <div class="hd_b1">
            
     
            <!-- 사이트로고 -->
            <div class="hd_c2">
                <a class="" href="../index_2.jsp">
                    <p>JEJUALOT</p>
                </a>
            </div>
        </div>

        <div class="hd_b2">
            <!-- 헤더 오른쪽 로그인 -->
           
            <div class="hd_c4">
                <a class="" href="../signup/login.jsp">
           
                    로그인
                </a>
            </div>
            <!-- 헤더 오른쪽 개인정보 이미지 -->
            
            <div class="hd_c3">
                <a class="" href="#">
                    
                    <svg id="레이어_1" data-name="레이어 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 550 550"><defs><style>.cls-1,.cls-2{fill:none;stroke-miterlimit:10;stroke-width:33px;}.cls-1{stroke:#626567;}.cls-2{stroke:#626567;}</style></defs><circle class="cls-1" cx="246.5" cy="190.5" r="75.94"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><path class="cls-1" d="M93.09,410.91s38.67-69.05,111-69.05c0,0,59.07,22.66,116,0,0,0,57.76-2.21,111,69.05C431,410.91,270.22,582.36,93.09,410.91Z" transform="translate(-15.55 -10.61)"/></svg>
   
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
                    <a class="sb_it sb_i1" href="../trip/trip.jsp">
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
                    <a class="sb_it sb_i2" href="../sights_script.jsp">
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
                                    명소
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 3번 Flights -->
                <div>
                    <a class="sb_it sb_i3" href="../safetrip/safetrip.jsp">
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
                    <a class="sb_it sb_i4" href="../qna.jsp">
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
        <div class="container">
            <div class="content">

                <!-- 맨 위 메인 -->
                <div class="main_1">
                    <!-- 메인 배너 시작 -->
                    <div class="main">
                            <img src="https://github.com/g2project/main/blob/main/safetrip/img/d3.PNG?raw=true" width="1200" height="300">
                        <span class="travel">
                            <h1>안전여행가이드</h1>
                        </span>
                    </div>
                    <!-- 메인 배너 끝 -->

                    <!--메인 네비 시작-->
                    <div class="nv">
                        <span class="nv_s">
                            <span class="h_1" style="color: #c9c9c9;">
                                <i class="fas fa-plane fa-2x"></i>
                            </span>
                            <div class="pp_1">
                                <p>혼행은 전 세계적인 여행 트렌드로 많은 여행자들이 혼자 떠나는 여행을 선호하고 있다. 혼자 떠나는 여행은 동반 여행보다 일정짜기가 수월하고, 이동이 자유로우며, 목적지 결정이 쉽다는 장점이 있다.
                                    또한 혼자 가는 여행이 주는 낭만과 설레임 때문에 많은 사람들이 오늘도 혼행을 계획하고 또 떠난다. 하지만 설레임과 동시에 과연 안전할까?하는 질문이 떠오르게 된다.
                                    안전이 염려된다면 아래 수칙을 명심할 것. 기본적인 안전 수칙만 지키면 시작부터 끝까지 즐거운 여행이 될 것이다.
                                </p>
                            </div>
                        </span>
                    </div>
                    <!--메인 네비 끝-->
                </div>
                <!-- 맨 위 메인 끝-->


                <!-- 탭메뉴 -->
                


                <!-- 센터 시작 -->
                <DIV id=div_01>
                <div class="center">

                    <div class="m_tap"> <!-- 탭메뉴 -->
                        <ul class="tap">
                            <li class="">안전한 여행 TIP</li>
                            <li class=""><a href="javascript:show_layer('2');">안심숙소 체크 가이드</a></li>
                            <li class=""><a href="javascript:show_layer('3');">안전인증민박</a></li>                    
                        </ul>
                    </div>
                    <div class="tip1">
                        <div class="tip_1">
                            <div class="t_img">
                                <img src="https://github.com/g2project/main/blob/main/safetrip/img/t1.PNG?raw=true">
                            </div>
                            <div class="t_p">
                                <div class="t_p_1">
                                    <h1>1. 인적이 드문 곳에 혼자 가지 않고 가급적 2인 이상 동행</h1>
                                </div>
                                <div class="t_p_2">
                                    <p>
                                        인적이 드문 곳은 반드시 믿을만한 사람과 동행하는 것이 좋다. 인적이 드문 곳은 비상 상황이 생겼을 때 대응할 수 있는 방법이 많지 않기 때문이다.특히, 야간에 인적이 드문 곳에 혼자 가는 것은
                                        절대 금지다. 또한 길을 걸을 때 이어폰으로 음악을 듣는 것은 자제하자. 외부로부터의 소리가 차단되어 주위에 무슨 일이 일어나고 있는지 파악하지 못할 경우가 많아 위험에 대비할 수가 없다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="tip_1">
                            <div class="t_img">
                                <img src="https://github.com/g2project/main/blob/main/safetrip/img/t2.PNG?raw=true">
                            </div>
                            <div class="t_p">
                                <div class="t_p_1">
                                    <h1>2. 반드시 여행지에 대해 사전조사를 한다</h1>
                                </div>
                                <div class="t_p_2">
                                    <p>
                                        사람들이 많이 모이는 여행지나 관광지 이외에 트레킹을 하거나 알려지지 않은 해변이나 오름 등을 여행할 경우에는 반드시 사전에 조사하여 위험 요소가 없는지 확인하는 것이 좋다.
                                        포털사이트에는 로드뷰 같은 프로그램이 있으므로 가고자 하는 곳을 미리 살펴보는 것도 좋다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="tip_1">
                            <div class="t_img">
                                <img src="https://github.com/g2project/main/blob/main/safetrip/img/t3.PNG?raw=true">
                            </div>
                            <div class="t_p">
                                <div class="t_p_1">
                                    <h1>3. 캠핑은 지정된 곳에서만, ‘낭만캠핑’은 없다</h1>
                                </div>
                                <div class="t_p_2">
                                    <p>
                                        허가된 야영장이 아닌, 방파제나 바닷가 등 아무 곳에서 캬라반 등을 이용한 ‘낭만캠핑’을 하지 않는다. 현재(2018년 8월 기준) 제주에 야영장업으로 등록된 곳은 48곳, 해수욕장 야영장은 곽지과물,
                                        금능, 김녕, 이호테우, 표선, 함덕, 협재 등 7곳이 있다. 캠핑을 하고 싶다면 지정된 곳을 이용, 스스로 안전을 챙기자.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="tip_1">
                            <div class="t_img">
                                <img src="https://github.com/g2project/main/blob/main/safetrip/img/t4.PNG?raw=true">
                            </div>
                            <div class="t_p">
                                <div class="t_p_1">
                                    <h1>4. 지나친 음주를 하지 않는다</h1>
                                </div>
                                <div class="t_p_2">
                                    <p>
                                        음주는 크고 많은 사고를 불러온다. 여행지에 와서 음주를 즐기며 스트레스를 풀고 자유로움을 만끽하는 것은 좋지만 술은 늘 사건사고의 원인이 된다는 점을 명심하자.
                                        홀로 떨어진 여행지에서 당신을 보호해야할 책임이 가장 큰 사람은 바로 당신이다. 모르는 사람들과의 술자리를 피하고, 꼭 하고 싶다면 적당히 마실 것.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="tip_1">
                            <div class="t_img">
                                <img src="https://github.com/g2project/main/blob/main/safetrip/img/t5.PNG?raw=true">
                            </div>
                            <div class="t_p">
                                <div class="t_p_1">
                                    <h1>5. 자신의 위치를 가족들이나 지인에게 알린다</h1>
                                </div>
                                <div class="t_p_2">
                                    <p>
                                        지인이나 가족들과 문자나 모바일 메신저 등을 사용해 지속적으로 소통하는 것이 좋다. 여행하며 찍은 사진도 보여주니 풍경의 즐거움을 나눌 수 있어 좋고, 또 가족들이나 지인들은 어디서 어떻게 여행하고 있다는 것을 보고 안심할 수 있으니 좋다.
                                        또는 여행하고 있는 곳을 SNS에 사진을 찍어 올리는 것도 추천한다. 조심해서 여행하고 있더라도 언제 어떤 일이 일어날지 예측할 수 없기 때문에,이렇게 올린 사진 한 장이 만약의 상황에서 중요한 역할을 할 수 있기 때문이다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="tip_1">
                            <div class="t_img">
                                <img src="https://github.com/g2project/main/blob/main/safetrip/img/t6.PNG?raw=true">
                            </div>
                            <div class="t_p">
                                <div class="t_p_1">
                                    <h1>6. 위급 상황을 대비할 것</h1>
                                </div>
                                <div class="t_p_2">
                                    <p>
                                        위급한 상황이 발생할 경우를 대비해 호신용 물건을 갖고 다니자. 호루라기나 호신용 스프레이 등도 있지만, 제주여행지킴이를 이용하는 것을 추천한다. 제주여행지킴이는 평시에 위치정보가 상시 전송, 응급상황이 발생했을 때 제주지방경찰청에서 빠르게 출동할 수 있도록 연계된 서비스다.
                                        또한 유사시를 대비해 휴대폰 GPS 등 위치기반 서비스는 항상 작동해놓는 것이 좋다.
                                        
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </DIV>
                </DIV>
                <div id=div_02 style="DISPLAY: none">
                    <div class="center">
    
                
                        <div class="m_tap"> <!-- 탭메뉴 -->
                            <ul class="tap">
                                <li class=""><a href="javascript:show_layer('1');">안전한 여행 TIP</a></li>
                                <li class="">안심숙소 체크 가이드</li>
                                <li class=""><a href="javascript:show_layer('3');">안전인증민박</a></li>                    
                            </ul>
                        </div>
                    <div class="tip2">
                        <div class="sub-detail">
                            <div style="text-align:center;padding-top:10px;margin-bottom: 50px;"><img src="img/safetrip2.jpeg" alt="안심숙소 대표이미지" style="width:1200px" height="500"></div>
                            <div class="safeGuideTwo">
                                <dl><dt>1. 사전에 숙소의 위치를 체크한다</dt>
                                    <dd>숙소가 안전한 위치에 있는지 체크한다. 시내를 벗어날 경우에는 외진 곳에 떨어져 있는 곳보다는 집들이 모여 있는 마을 안에 있는지 확인한다. 믿을 만한 동행이 있다면 괜찮지만, 여성 혼자 여행이라면 너무 외진 곳은 주의하는 것이 좋다. 포털 사이트의 로드뷰를 확인해 숙소의 위치와 주위 건물 등의 여부를 먼저 확인하는 것이 좋다.</dd>
                                </dl>
                                <dl><dt>2. 파티와 만남이 있는 곳은 주의한다</dt>
                                    <dd>파티와 만남을 주선하는 숙박업소가 여행객들에게 인기를 끌고 있다. 혼자 온 여행객들을 대상으로 친목을 도모하는 차원에서 열리는 이벤트이지만 이를 악용하는 사례들이 생기고 있다. 여행지에서 낯섦과 새로움을 즐기려면 안전이 담보되어야 한다는 것을 잊지 말자.</dd>
                                </dl>
                                <dl><dt>3. 후기를 꼼꼼히 살핀다</dt>
                                    <dd>숙소에 다녀온 사람들이 써놓은 후기가 모든 것을 말해주지는 않지만 숙소에 대한 기본적인 인상은 받게 된다. 숙박업소에 다녀온 사람들의 후기를 잘 살펴보고, 피해를 입지 않도록 주의해야 한다. 조금 의심이 가거나 탐탁지 않은 부분이 있다면 과감히 포기하고 다른 곳으로 예약하는 것이 좋다.</dd>
                                </dl>
                                <dl><dt>4. 남녀 객실이 구분되어 있는지 확인하라</dt>
                                    <dd>간혹 외국 여행을 자주 다녀본 사람들은 도미토리에서 남녀가 한 방에 머물 수 있게 해놓은 숙소에 익숙할지 모른다. 하지만 이곳 대한민국에서는 그런 문화가 없다. 도미토리에 머문다면 남녀 객실이 구분되어 있는지 반드시 확인해야 한다.</dd>
                                </dl>
                                <dl><dt>5. 농어촌민박 안전인증을 받은 민박을 이용한다</dt>
                                    <dd>제주에서는 농어촌 민박 안전인증제도를 도입해 관광객들이 안심하며 숙소를 이용할 수 있는 장치를 마련했다. 신고자의 직접 거주 및 운영 여부, 객실 내·외부 및 창문 잠금장치 상태 유무, 민박시설 및 주변에 방범용 CCTV설치 및 상태 여부, 객실 및 공용시설 등 범죄취약장소 비상벨 등 설치 여부 등 20개 항목에서 모두 적합한 경우에만 인증이 되기 때문에 안심하고 이용할 수 있다.</dd>
                                </dl>
                                <dl><dt>6. 창문과 방에 잠금장치가 있는지 체크한다</dt>
                                    <dd>숙소 창문이나 방에 잠금장치가 있는지를 확인한다. 공용으로 사용하는 도미토리이든 개인실이든 안전장치가 없다면 밤새 뜬 눈으로 보내게 될 지도 모른다. 또한 외부에서 객실로 침입이 가능한지 창문 등을 확인하는 것이 좋다. 또한 숙소 주위에 CCTV가 있는지도 확인해본다.</dd>
                                </dl>
                                <dl><dt>7. 숙소 이름과 위치를 지인들에게 알린다</dt>
                                    <dd>혼자 여행을 할 때의 기본 원칙은 내가 현재 어디에 있고, 어디로 갈 것인지에 대한 정보를 지인들에게 알리는 일이다. 자신이 머무는 숙소가 어디인지 가족들이나 지인들에게 알리자. 숙소를 계속 옮겨가면서 여행한다면 숙소를 모두 알려주거나, 일정 전체를 알려주는 것도 좋다.</dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                    </div>
                </div> 
                <div id=div_03 style="DISPLAY: none">
                <div class="center">
    
                
                    <div class="m_tap"> <!-- 탭메뉴 -->
                        <ul class="tap">
                            <li class=""><a href="javascript:show_layer('1');">안전한 여행 TIP</a></li>
                            <li class=""><a href="javascript:show_layer('2');">안심숙소 체크 가이드</a></li>
                            <li class="">안전인증민박</li>                    
                        </ul>
                    </div>
                    <div class="tip3">
                    <div class="sub-detail">
                        <div class="safeGuideThree">
                            <div class="copyright">‘농어촌민박 안전인증제’는 우리도가 전국 최초로 시행하는 제도로서 최근 급속히 증가하고 있는 민박업소에 대하여 안전하고 청결한 민박 환경을 조성하고 이용객들의 안전과 서비스 향상은 물론 민박 경쟁력을 향상시키기 위해 마련됐다.</div>
                            <div class="firm_box">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>지역</th>
                                            <th>읍면동</th>
                                            <th>상호명</th>
                                            <th>민박 소재지</th>
                                            <th>연락처</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>삼성재</td>
                                            <td>제주시 월랑로 12길 25-6(노형동)</td>
                                            <td>010-8663-8786</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>제주게스트하우스 민박</td>
                                            <td>제주시 용화로 10길 14(용담이동)</td>
                                            <td>010-9877-1092</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>아림민박</td>
                                            <td>제주시 서해안로 456-8(용담상동)</td>
                                            <td>010-5305-6058</td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>새봄민박</td>
                                            <td>제주시 선사로 8길 12(삼양일동)</td>
                                            <td>010-4773-9653</td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>바다마을 민박</td>
                                            <td>제주시 도두항길 4-6(도두일동)</td>
                                            <td>010-3694-3313</td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>사랑터울 민박</td>
                                            <td>제주시 어영길 25(용담삼동)</td>
                                            <td>010-2211-0366</td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>연미 민박</td>
                                            <td>제주시 연사 6길 4(오라이동)</td>
                                            <td>010-6692-5308</td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>미르앤러브게스트하우스</td>
                                            <td>제주시 용담로 7길 4(용담이동)</td>
                                            <td>010-9266-6069</td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>데이드림</td>
                                            <td>제주시 오등봉동길 24-1(오등동)</td>
                                            <td>010-4921-8502</td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>도두다</td>
                                            <td>제주시 도두봉6길 9-4(도두일동)</td>
                                            <td>010-3693-8553</td>
                                        </tr>
                                        <tr>
                                            <td>11</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>낭만제주</td>
                                            <td>제주시 도두5길 23(도두일동)</td>
                                            <td>010-8558-5599</td>
                                        </tr>
                                        <tr>
                                            <td>12</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>바다성</td>
                                            <td>제주시 연대마을길 34-1(외도일동)</td>
                                            <td>010-9294-0500</td>
                                        </tr>
                                        <tr>
                                            <td>13</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>비치조아</td>
                                            <td>제주시 서흘길 7(삼양일동)</td>
                                            <td>010-8660-8200</td>
                                        </tr>
                                        <tr>
                                            <td>14</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>e좋은 민박</td>
                                            <td>제주시 서해안로 149(도두일동)</td>
                                            <td>010-2260-7286</td>
                                        </tr>
                                        <tr>
                                            <td>15</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>삼양2022</td>
                                            <td>제주시 설촌로 13(삼양이동)</td>
                                            <td>010-5656-7170</td>
                                        </tr>
                                        <tr>
                                            <td>16</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>디오름펜션민박</td>
                                            <td>제주시 오등14길 8-10(아라동)</td>
                                            <td>010-6652-0913</td>
                                        </tr>
                                        <tr>
                                            <td>17</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>팬더</td>
                                            <td>제주시 연동3길 35(연동)</td>
                                            <td>010-5338-0307</td>
                                        </tr>
                                        <tr>
                                            <td>18</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>용스테이</td>
                                            <td>제주시 명주길 3(연동)</td>
                                            <td>010-2930-6164</td>
                                        </tr>
                                        <tr>
                                            <td>19</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>게스트하우스7민박</td>
                                            <td>제주시 용문로 168, 2층(용담이동)</td>
                                            <td>010-6798-7888</td>
                                        </tr>
                                        <tr>
                                            <td>20</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>블루마린민박</td>
                                            <td>제주시 용마서1길 11(용담삼동)</td>
                                            <td>010-2967-3639</td>
                                        </tr>
                                        <tr>
                                            <td>21</td>
                                            <td>제주시</td>
                                            <td>동지역</td>
                                            <td>별마로</td>
                                            <td>제주시 항골남길 32-16(이호동)</td>
                                            <td>010-9699-1883</td>
                                        </tr>
                                        <tr>
                                            <td>22</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>521 민박</td>
                                            <td>제주시 애월읍 중용길 52-1</td>
                                            <td>010-3725-4692</td>
                                        </tr>
                                        <tr>
                                            <td>23</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>시니스테이 민박</td>
                                            <td>제주시 애월읍 애월북서길 88</td>
                                            <td>010-3789-2543</td>
                                        </tr>
                                        <tr>
                                            <td>24</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>이뻬하우스 민박</td>
                                            <td>제주시 애월읍 애월로1길 6</td>
                                            <td>010-3212-0454</td>
                                        </tr>
                                        <tr>
                                            <td>25</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>제주에반하다 민박</td>
                                            <td>제주시 애월읍 어림비로 119</td>
                                            <td>010-9855-3840</td>
                                        </tr>
                                        <tr>
                                            <td>26</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>혼디 민박</td>
                                            <td>제주시 애월읍 신엄안 3길 20, 제1동</td>
                                            <td>010-9477-5885</td>
                                        </tr>
                                        <tr>
                                            <td>27</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>Brick9Mansion 민박</td>
                                            <td>제주시 애월읍 어림비로 109동, 2동</td>
                                            <td>010-3791-0137</td>
                                        </tr>
                                        <tr>
                                            <td>28</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>마눌 민박</td>
                                            <td>제주시 애월읍 고내봉서2길 73</td>
                                            <td>010-5541-0809</td>
                                        </tr>
                                        <tr>
                                            <td>29</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>브릭9맨션 1호</td>
                                            <td>제주시 애월읍 109, 1동</td>
                                            <td>010-3791-0137</td>
                                        </tr>
                                        <tr>
                                            <td>30</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>팀버 하우스</td>
                                            <td>제주시 애월읍 곽지7길 11</td>
                                            <td>010-9679-4241</td>
                                        </tr>
                                        <tr>
                                            <td>31</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>momul</td>
                                            <td>제주시 애월읍 곽지9길 4동</td>
                                            <td>010-3698-2447</td>
                                        </tr>
                                        <tr>
                                            <td>32</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>바오밥나무</td>
                                            <td>제주시 애월읍 하소로 357-1</td>
                                            <td>010-3682-7245</td>
                                        </tr>
                                        <tr>
                                            <td>33</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>하비펜션 민박</td>
                                            <td>제주시 애월읍 엄수로 36</td>
                                            <td>010-8521-7111</td>
                                        </tr>
                                        <tr>
                                            <td>34</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>천상의노을 민박</td>
                                            <td>제주시 애월읍 애월해안로 424</td>
                                            <td>010-5844-5119</td>
                                        </tr>
                                        <tr>
                                            <td>35</td>
                                            <td>제주시</td>
                                            <td>애월읍</td>
                                            <td>숨쉬는힐링하우스 민박</td>
                                            <td>제주시 애월읍 무수천길 45</td>
                                            <td>010-3697-3480</td>
                                        </tr>
                                        <tr>
                                            <td>36</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>나무처럼 민박</td>
                                            <td>제주시 한림읍 홍수암로3-1</td>
                                            <td>010-8532-8282</td>
                                        </tr>
                                        <tr>
                                            <td>37</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>눈의 꽃 하우스</td>
                                            <td>제주시 한림읍 한림상로280</td>
                                            <td>010-2664-0220</td>
                                        </tr>
                                        <tr>
                                            <td>38</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>라신비</td>
                                            <td>제주시 한림읍 한림해안로 548</td>
                                            <td>010-9885-2797</td>
                                        </tr>
                                        <tr>
                                            <td>39</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>러블리 에스메랄다</td>
                                            <td>제주시 한림읍한수풀로176-25</td>
                                            <td>010-9486-2478</td>
                                        </tr>
                                        <tr>
                                            <td>40</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>마린뷰 펜션</td>
                                            <td>제주시 한림읍 협재3길9</td>
                                            <td>010-5401-0076</td>
                                        </tr>
                                        <tr>
                                            <td>41</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>아템 파우제B</td>
                                            <td>제주시 한림읍 월림8길 21</td>
                                            <td>010-8314-2590</td>
                                        </tr>
                                        <tr>
                                            <td>42</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>퐁낭 하우스민박</td>
                                            <td>제주시 한림읍 대림12길 60-4</td>
                                            <td>010-6206-5051</td>
                                        </tr>
                                        <tr>
                                            <td>43</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>하티 민박</td>
                                            <td>제주시 한림읍 협재1길 39-5</td>
                                            <td>010-6364-6006</td>
                                        </tr>
                                        <tr>
                                            <td>44</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>협재해오름하우스</td>
                                            <td>제주시 한림읍 옹포2길 37-28</td>
                                            <td>010-5203-9969</td>
                                        </tr>
                                        <tr>
                                            <td>45</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>머무름민박</td>
                                            <td>제주시 한림읍 명재로 61-5</td>
                                            <td>010-6789-6881</td>
                                        </tr>
                                        <tr>
                                            <td>46</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>삼보민박</td>
                                            <td>제주시 한림읍 명월성로 627</td>
                                            <td>010-2365-0797</td>
                                        </tr>
                                        <tr>
                                            <td>47</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>다찌스테이</td>
                                            <td>제주시 한림읍 금성천남길 26</td>
                                            <td>010-9248-3238</td>
                                        </tr>
                                        <tr>
                                            <td>48</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>소나무 한 그루</td>
                                            <td>제주시 한림읍 협재리 610번지</td>
                                            <td>010-3696-6250</td>
                                        </tr>
                                        <tr>
                                            <td>49</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>보름</td>
                                            <td>제주시 한림읍 명월성로 137-19</td>
                                            <td>010-5258-7794</td>
                                        </tr>
                                        <tr>
                                            <td>50</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>으뜸원</td>
                                            <td>제주시 한림읍 금능길 55</td>
                                            <td>010-8664-9377</td>
                                        </tr>
                                        <tr>
                                            <td>51</td>
                                            <td>제주시</td>
                                            <td>한림읍</td>
                                            <td>몽생이</td>
                                            <td>제주시 한림읍 협재로 42</td>
                                            <td>010-2692-1859</td>
                                        </tr>
                                        <tr>
                                            <td>52</td>
                                            <td>제주시</td>
                                            <td>한경면</td>
                                            <td>호호게스트</td>
                                            <td>제주시 한경면 고산남4길 28</td>
                                            <td>010-4692-6989</td>
                                        </tr>
                                        <tr>
                                            <td>53</td>
                                            <td>제주시</td>
                                            <td>한경면</td>
                                            <td>오몽모옹</td>
                                            <td>제주시 한경면 고산남8길 11</td>
                                            <td>010-2768-1338</td>
                                        </tr>
                                        <tr>
                                            <td>54</td>
                                            <td>제주시</td>
                                            <td>한경면</td>
                                            <td>용수길 114</td>
                                            <td>제주시 한경면 용수길 114</td>
                                            <td>010-8844-1420</td>
                                        </tr>
                                        <tr>
                                            <td>55</td>
                                            <td>제주시</td>
                                            <td>한경면</td>
                                            <td>풍차와 노을</td>
                                            <td>제주시 한경면 한경해안로 474-26, B동</td>
                                            <td>010-6886-0238</td>
                                        </tr>
                                        <tr>
                                            <td>56</td>
                                            <td>제주시</td>
                                            <td>한경면</td>
                                            <td>화우재</td>
                                            <td>제주시 한경면 주가흘길 32-1, 2층</td>
                                            <td>010-6715-0135</td>
                                        </tr>
                                        <tr>
                                            <td>57</td>
                                            <td>제주시</td>
                                            <td>한경면</td>
                                            <td>수방지영</td>
                                            <td>제주시 한경면 녹차분재로 594-3</td>
                                            <td>010-9009-1392</td>
                                        </tr>
                                        <tr>
                                            <td>58</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>우리희망이게스트하우스</td>
                                            <td>제주시 조천읍 신흥관전길 60-1</td>
                                            <td>010-3015-5836</td>
                                        </tr>
                                        <tr>
                                            <td>59</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>디하우스</td>
                                            <td>제주시 조천읍 곱은달서길 173-5, 4동</td>
                                            <td>010-3239-8101</td>
                                        </tr>
                                        <tr>
                                            <td>60</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>로뎀나무쉼팡</td>
                                            <td>제주시 조천읍 곱은달서길 173-8, 3동</td>
                                            <td>010-6212-5592</td>
                                        </tr>
                                        <tr>
                                            <td>61</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>한또바기</td>
                                            <td>제주시 조천읍 조천18길 65</td>
                                            <td>010-6580-3461</td>
                                        </tr>
                                        <tr>
                                            <td>62</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>한양민박</td>
                                            <td>제주시 조천읍 와선로 247</td>
                                            <td>010-4560-9915</td>
                                        </tr>
                                        <tr>
                                            <td>63</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>키작은집</td>
                                            <td>제주시 조천읍 조함해안로 592-4</td>
                                            <td>010-3390-2353</td>
                                        </tr>
                                        <tr>
                                            <td>64</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>친환경제주드림</td>
                                            <td>제주시 조천읍 남조로 2678-1</td>
                                            <td>010-2795-3579</td>
                                        </tr>
                                        <tr>
                                            <td>65</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>섬 집 오후</td>
                                            <td>제주시 조천읍 조천7길 19-11</td>
                                            <td>010-2494-6782</td>
                                        </tr>
                                        <tr>
                                            <td>66</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>에셀나무</td>
                                            <td>제주시 조천읍 신흥남4길 13-15</td>
                                            <td>010-4640-5475</td>
                                        </tr>
                                        <tr>
                                            <td>67</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>함덕 32</td>
                                            <td>제주시 조천읍 함덕로 32</td>
                                            <td>010-2249-3899</td>
                                        </tr>
                                        <tr>
                                            <td>68</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>함덕 화산송이 scoria&nbsp;</td>
                                            <td>제주시 조천읍 함덕 27길 4-1</td>
                                            <td>010-2336-8961</td>
                                        </tr>
                                        <tr>
                                            <td>69</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>안뜨레</td>
                                            <td>제주시 조천읍 북선로 331-20</td>
                                            <td>010-6422-3269</td>
                                        </tr>
                                        <tr>
                                            <td>70</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>봄보름</td>
                                            <td>제주시 조천읍 신흥관전길 8</td>
                                            <td>010-5088-8282</td>
                                        </tr>
                                        <tr>
                                            <td>71</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>훈이네 민박</td>
                                            <td>제주시 조천읍 선교길 460</td>
                                            <td>010-3680-8227</td>
                                        </tr>
                                        <tr>
                                            <td>72</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>삼다애 민박</td>
                                            <td>제주시 조천읍 비자림로 646-16</td>
                                            <td>010-6606-1912</td>
                                        </tr>
                                        <tr>
                                            <td>73</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>프롬제이</td>
                                            <td>제주시 조천읍 신흥로 42</td>
                                            <td>010-2580-0927</td>
                                        </tr>
                                        <tr>
                                            <td>74</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>토브집</td>
                                            <td>제주시 조천읍 신촌10길 20-5</td>
                                            <td>010-2898-5120</td>
                                        </tr>
                                        <tr>
                                            <td>75</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>프란치스코</td>
                                            <td>제주시 조천읍 조천북2길 5</td>
                                            <td>010-3418-7712</td>
                                        </tr>
                                        <tr>
                                            <td>76</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>놀멍쉬멍</td>
                                            <td>제주시 조천읍 함덕6길 19-14</td>
                                            <td>010-9153-0454</td>
                                        </tr>
                                        <tr>
                                            <td>77</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>함덕 예쁜집</td>
                                            <td>제주시 조천읍 함와로 281</td>
                                            <td>010-2750-3119</td>
                                        </tr>
                                        <tr>
                                            <td>78</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>안나의 정원</td>
                                            <td>제주시 조천읍 함덕14길 38</td>
                                            <td>010-9973-6269</td>
                                        </tr>
                                        <tr>
                                            <td>79</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>요망진 달팽이 211동</td>
                                            <td>제주시 조천읍 함와로 566-29, 211동 제주스위스마을</td>
                                            <td>010-8749-4160</td>
                                        </tr>
                                        <tr>
                                            <td>80</td>
                                            <td>제주시</td>
                                            <td>조천읍</td>
                                            <td>선흘아이</td>
                                            <td>제주시 조천읍 선흘남4길 37-1</td>
                                            <td>010-9634-2356</td>
                                        </tr>
                                        <tr>
                                            <td>81</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>가비오타</td>
                                            <td>제주시 구좌읍 해맞이해안로 2030, 가동</td>
                                            <td>010-5809-2866</td>
                                        </tr>
                                        <tr>
                                            <td>82</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>다락마마</td>
                                            <td>제주시 구좌읍 상하도길 46-16</td>
                                            <td>010-9820-5621</td>
                                        </tr>
                                        <tr>
                                            <td>83</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>뚜르드제주</td>
                                            <td>제주시 구좌읍 종달로1길 38-2</td>
                                            <td>010-6786-1984</td>
                                        </tr>
                                        <tr>
                                            <td>84</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>바람의 언덕</td>
                                            <td>제주시 구좌읍 행원로5길 35-18</td>
                                            <td>010-9986-5435</td>
                                        </tr>
                                        <tr>
                                            <td>85</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>월정플레이스</td>
                                            <td>제주시 구좌읍 월정1길 54-34</td>
                                            <td>010-8731-5206</td>
                                        </tr>
                                        <tr>
                                            <td>86</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>이안재</td>
                                            <td>제주시 구좌읍 종달로5길 35-1</td>
                                            <td>010-2792-3841</td>
                                        </tr>
                                        <tr>
                                            <td>87</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>제주가 좋아서</td>
                                            <td>제주시 구좌읍 비자림로 1569</td>
                                            <td>010-6798-6289</td>
                                        </tr>
                                        <tr>
                                            <td>88</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>헌치 게스트하우스</td>
                                            <td>제주시 구좌읍 비자림로 1627</td>
                                            <td>010-3304-1667</td>
                                        </tr>
                                        <tr>
                                            <td>89</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>밧돌 게스트하우스</td>
                                            <td>제주시 구좌읍 비자림로 1771</td>
                                            <td>010-5247-8468</td>
                                        </tr>
                                        <tr>
                                            <td>90</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>제주 밭담숲 치유농장</td>
                                            <td>제주시 구좌읍 김녕남8길 55-64</td>
                                            <td>010-3654-1504</td>
                                        </tr>
                                        <tr>
                                            <td>91</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>써니허니&nbsp;</td>
                                            <td>제주시 구좌읍 송당리 1359-1</td>
                                            <td>010-9996-6640</td>
                                        </tr>
                                        <tr>
                                            <td>92</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>폴레폴레</td>
                                            <td>제주시 구좌읍 하도리 463-1</td>
                                            <td>010-4299-8316</td>
                                        </tr>
                                        <tr>
                                            <td>93</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>oh 세화</td>
                                            <td>제주시 구좌읍 세화리 887</td>
                                            <td>010-8892-0146</td>
                                        </tr>
                                        <tr>
                                            <td>94</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>김녕게스트하우스여우구슬</td>
                                            <td>제주시 구좌읍 김녕로 11길 5-2</td>
                                            <td>010-2766-0137</td>
                                        </tr>
                                        <tr>
                                            <td>95</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>나무아래</td>
                                            <td>제주시 구좌읍 송당리 1859</td>
                                            <td>010-4602-3509</td>
                                        </tr>
                                        <tr>
                                            <td>96</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>뒹글하우스</td>
                                            <td>제주시 구좌읍 월정7길 28-6</td>
                                            <td>010-8568-2572</td>
                                        </tr>
                                        <tr>
                                            <td>97</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>바람에 스치운다</td>
                                            <td>제주시 구좌읍 하도리 368-6</td>
                                            <td>010-4907-9423</td>
                                        </tr>
                                        <tr>
                                            <td>98</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>벵디1967</td>
                                            <td>제주시 구좌읍평대2길 39-11</td>
                                            <td>010-2523-4709</td>
                                        </tr>
                                        <tr>
                                            <td>99</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>비자림 미담</td>
                                            <td>제주시 구좌읍비자숲길 13</td>
                                            <td>010-5362-9535</td>
                                        </tr>
                                        <tr>
                                            <td>100</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>비자숲길 15</td>
                                            <td>제주시 구좌읍비자숲길 15</td>
                                            <td>010-3658-2444</td>
                                        </tr>
                                        <tr>
                                            <td>101</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>제주의 시간은 느리다</td>
                                            <td>제주시 구좌읍상도로 30-4</td>
                                            <td>010-5023-0350</td>
                                        </tr>
                                        <tr>
                                            <td>102</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>지미안</td>
                                            <td>제주시 구좌읍종달로 1길 91-22</td>
                                            <td>010-3044-0601</td>
                                        </tr>
                                        <tr>
                                            <td>103</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>천년비자</td>
                                            <td>제주시 구좌읍비자림로 2330</td>
                                            <td>010-2654-2046</td>
                                        </tr>
                                        <tr>
                                            <td>104</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>하루방</td>
                                            <td>제주시 구좌읍하도3길 113-2</td>
                                            <td>010-9890-3373</td>
                                        </tr>
                                        <tr>
                                            <td>105</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>소풍</td>
                                            <td>제주시 구좌읍 월정1길 23</td>
                                            <td>010-9207-4969</td>
                                        </tr>
                                        <tr>
                                            <td>106</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>오름</td>
                                            <td>제주시 구좌읍 세화리 1758-41</td>
                                            <td>010-5063-1333</td>
                                        </tr>
                                        <tr>
                                            <td>107</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>하도바다</td>
                                            <td>제주시 구좌읍 면수길 38</td>
                                            <td>010-2955-2198</td>
                                        </tr>
                                        <tr>
                                            <td>108</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>한동올레</td>
                                            <td>제주시 구좌읍 한동4길 20-16</td>
                                            <td>010-5101-5376</td>
                                        </tr>
                                        <tr>
                                            <td>109</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>환영게스트하우스</td>
                                            <td>제주시 구좌읍 송당2길 2</td>
                                            <td>010-3578-4631</td>
                                        </tr>
                                        <tr>
                                            <td>110</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>쉬엉갑서예</td>
                                            <td>제주시 구좌읍 월정1길 17</td>
                                            <td>010-4285-7674</td>
                                        </tr>
                                        <tr>
                                            <td>111</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>풍선비행기군단</td>
                                            <td>제주시 구좌읍 평대10길 45-46</td>
                                            <td>010-9365-5426</td>
                                        </tr>
                                        <tr>
                                            <td>112</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>귀하도다</td>
                                            <td>제주시 구좌읍 하도리 209-1</td>
                                            <td>010-4028-9717</td>
                                        </tr>
                                        <tr>
                                            <td>113</td>
                                            <td>제주시</td>
                                            <td>구좌읍</td>
                                            <td>섯동네</td>
                                            <td>제주시 구좌읍 월정중길 55, 3층</td>
                                            <td>010-4645-4517</td>
                                        </tr>
                                        <tr>
                                            <td>114</td>
                                            <td>제주시</td>
                                            <td>우도면</td>
                                            <td>초원 민박</td>
                                            <td>제주시 우도면 우도로 225</td>
                                            <td>010-5304-6911</td>
                                        </tr>
                                        <tr>
                                            <td>115</td>
                                            <td>제주시</td>
                                            <td>우도면</td>
                                            <td>하늘이 민박</td>
                                            <td>제주시 우도면 우도해안길 216-2</td>
                                            <td>010-2691-0235</td>
                                        </tr>
                                        <tr>
                                            <td>116</td>
                                            <td>제주시</td>
                                            <td>우도면</td>
                                            <td>아라 펜션</td>
                                            <td>제주시 우도면 우도해안길 800</td>
                                            <td>010-5454-6010</td>
                                        </tr>
                                        <tr>
                                            <td>117</td>
                                            <td>제주시</td>
                                            <td>우도면</td>
                                            <td>동굴리조트</td>
                                            <td>우도면 우도해안길 1132</td>
                                            <td>010-3697-9719</td>
                                        </tr>
                                        <tr>
                                            <td>118</td>
                                            <td>제주시</td>
                                            <td>추자면</td>
                                            <td>봉골레하우스</td>
                                            <td>제주시 추자면 추자로 94-1</td>
                                            <td>010-8662-2332</td>
                                        </tr>
                                        <tr>
                                            <td>119</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주 해나루</td>
                                            <td>서귀포시 신서로98번길 19-1(강정동)</td>
                                            <td>010-5431-2773</td>
                                        </tr>
                                        <tr>
                                            <td>120</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주 디오빌</td>
                                            <td>서귀포시 색달로 72번길 20(색달동)</td>
                                            <td>010-8545-5460</td>
                                        </tr>
                                        <tr>
                                            <td>121</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주사랑</td>
                                            <td>서귀포시 태평로 442번길 21(서귀동)</td>
                                            <td>010-3792-3958</td>
                                        </tr>
                                        <tr>
                                            <td>122</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>더나은스테이</td>
                                            <td>서귀포시 일주동로 8280(신효동)</td>
                                            <td>010-6692-8813</td>
                                        </tr>
                                        <tr>
                                            <td>123</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>돌하르방 민박</td>
                                            <td>서귀포시 색달로 6(색달동)</td>
                                            <td>010-3421-6115</td>
                                        </tr>
                                        <tr>
                                            <td>124</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주팡숑예래</td>
                                            <td>서귀포시 예래해안로 357(상예동)</td>
                                            <td>010-5611-8002</td>
                                        </tr>
                                        <tr>
                                            <td>125</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>쇠소깍 민박</td>
                                            <td>서귀포시 신효로 25번길 10-1(신효동)</td>
                                            <td>010-4722-1617</td>
                                        </tr>
                                        <tr>
                                            <td>126</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>아리랑민박</td>
                                            <td>서귀포시 예래로 212(하예동)</td>
                                            <td>010-4693-3636</td>
                                        </tr>
                                        <tr>
                                            <td>127</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>외돌개 나라</td>
                                            <td>서귀포시 남성로 122(서홍동)</td>
                                            <td>010-3622-3620</td>
                                        </tr>
                                        <tr>
                                            <td>128</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>자유도시</td>
                                            <td>서귀포시 색달로 64번길 71(색달동)</td>
                                            <td>010-8660-8877</td>
                                        </tr>
                                        <tr>
                                            <td>129</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>팜힐</td>
                                            <td>서귀포시 예래로 107(상예동)</td>
                                            <td>064-738-3230</td>
                                        </tr>
                                        <tr>
                                            <td>130</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>중문와우펜션</td>
                                            <td>서귀포시 1100로 44(중문동)</td>
                                            <td>010-4231-6027</td>
                                        </tr>
                                        <tr>
                                            <td>131</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>중문오아시스 민박</td>
                                            <td>서귀포시 예래로 68번길 107(상예동)</td>
                                            <td>010-2054-3921</td>
                                        </tr>
                                        <tr>
                                            <td>132</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>모드니에</td>
                                            <td>서귀포시 동홍로 239번길 34-11(동홍동)</td>
                                            <td>010-7679-4999</td>
                                        </tr>
                                        <tr>
                                            <td>133</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>D1250</td>
                                            <td>서귀포시 대포동서로 70번길 58-18(대포동)</td>
                                            <td>010-2588-0064</td>
                                        </tr>
                                        <tr>
                                            <td>134</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주에코빌라</td>
                                            <td>서귀포시 중문상로 207-15(중문동)</td>
                                            <td>010-7767-6605</td>
                                        </tr>
                                        <tr>
                                            <td>135</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>하이랜드</td>
                                            <td>서귀포시 이어도로 244(대포동)</td>
                                            <td>010-8663-1944</td>
                                        </tr>
                                        <tr>
                                            <td>136</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주캐슬</td>
                                            <td>서귀포시 태평로 92번길 36(호근동)</td>
                                            <td>010-2918-9988</td>
                                        </tr>
                                        <tr>
                                            <td>137</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>리틀화이트</td>
                                            <td>서귀포시 예래해안로 179-21(하예동)</td>
                                            <td>010-5202-2871</td>
                                        </tr>
                                        <tr>
                                            <td>138</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>마가렛</td>
                                            <td>서귀포시 예래로 68번길 11-16(상예동)</td>
                                            <td>010-9166-8908</td>
                                        </tr>
                                        <tr>
                                            <td>139</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주토브펜션</td>
                                            <td>서귀포시 막숙포로 78(법환동)</td>
                                            <td>010-7117-3443</td>
                                        </tr>
                                        <tr>
                                            <td>140</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>제주 아모제</td>
                                            <td>서귀포시 최영로 20-1(법환동)</td>
                                            <td>064-739-8825</td>
                                        </tr>
                                        <tr>
                                            <td>141</td>
                                            <td>서귀포시</td>
                                            <td>동지역</td>
                                            <td>세도나 in 서귀포</td>
                                            <td>서귀포시 색달로 81번길 50-42(색달동)</td>
                                            <td>010-8664-8433</td>
                                        </tr>
                                        <tr>
                                            <td>142</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>코즈 게스트하우스</td>
                                            <td>서귀포시 안덕면 동광로100번길 20</td>
                                            <td>010-7241-3868</td>
                                        </tr>
                                        <tr>
                                            <td>143</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>하이디펜션</td>
                                            <td>서귀포시 안덕면 사계북로41번길 142</td>
                                            <td>010-3696-1888</td>
                                        </tr>
                                        <tr>
                                            <td>144</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>수펜션</td>
                                            <td>서귀포시 안덕면 소기왓로 81-19</td>
                                            <td>010-2785-4504</td>
                                        </tr>
                                        <tr>
                                            <td>145</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>치엘로게스트하우스</td>
                                            <td>서귀포시 안덕면 대평로 12</td>
                                            <td>010-3237-0951</td>
                                        </tr>
                                        <tr>
                                            <td>146</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>수줍은언니네</td>
                                            <td>서귀포시 안덕면 신화역사로 682번길 42</td>
                                            <td>010-4192-7816</td>
                                        </tr>
                                        <tr>
                                            <td>147</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>서툰가족</td>
                                            <td>서귀포시 안덕면 사계중앙로 41-15</td>
                                            <td>010-9232-4393</td>
                                        </tr>
                                        <tr>
                                            <td>148</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>서툰가족4번지</td>
                                            <td>서귀포시 안덕면 사계중앙로 41-13</td>
                                            <td>010-4171-0173</td>
                                        </tr>
                                        <tr>
                                            <td>149</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>자담하우스</td>
                                            <td>서귀포시 안덕면 사계남로 111</td>
                                            <td>010-9511-7792</td>
                                        </tr>
                                        <tr>
                                            <td>150</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>몬떼뷰스테이</td>
                                            <td>서귀포시 안덕면 사계남로 75-9</td>
                                            <td>010-8246-4317</td>
                                        </tr>
                                        <tr>
                                            <td>151</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>바산올레</td>
                                            <td>서귀포시 안덕면 대평로 29</td>
                                            <td>010-9832-9801</td>
                                        </tr>
                                        <tr>
                                            <td>152</td>
                                            <td>서귀포시</td>
                                            <td>안덕면</td>
                                            <td>달콤한 소금만들기</td>
                                            <td>서귀포시 안덕면 사계로 100</td>
                                            <td>010-2875-8250</td>
                                        </tr>
                                        <tr>
                                            <td>153</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>온평가</td>
                                            <td>서귀포시 성산읍 온평포구로 20</td>
                                            <td>010-9337-8879</td>
                                        </tr>
                                        <tr>
                                            <td>154</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>언덕위에 빨간지붕</td>
                                            <td>서귀포시 성산읍 난고로499번길 17</td>
                                            <td>010-4352-3036</td>
                                        </tr>
                                        <tr>
                                            <td>155</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>성산 우리집</td>
                                            <td>서귀포시 성산읍 한도로255번길 9</td>
                                            <td>010-6663-3878</td>
                                        </tr>
                                        <tr>
                                            <td>156</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>에바다 라이더 하우스</td>
                                            <td>서귀포시 성산읍 고성중앙로 7-8</td>
                                            <td>010-3824-7331</td>
                                        </tr>
                                        <tr>
                                            <td>157</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>아침노을펜션</td>
                                            <td>서귀포시 성산읍 한도로 255번길 14-1</td>
                                            <td>010-9477-5885</td>
                                        </tr>
                                        <tr>
                                            <td>158</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>삼달다방</td>
                                            <td>서귀포시 성산읍 삼달신풍로 95-24</td>
                                            <td>010-2565-6499</td>
                                        </tr>
                                        <tr>
                                            <td>159</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>제주돌체</td>
                                            <td>서귀포시 성산읍 산성효자로 40</td>
                                            <td>010-8030-4668</td>
                                        </tr>
                                        <tr>
                                            <td>160</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>돌창고</td>
                                            <td>서귀포시 성산읍 풍천로 273번길 82</td>
                                            <td>010-7115-9464</td>
                                        </tr>
                                        <tr>
                                            <td>161</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>해뜨는집</td>
                                            <td>서귀포시 성산읍 한도로 137</td>
                                            <td>064-754-8812</td>
                                        </tr>
                                        <tr>
                                            <td>162</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>포지타노인 제주</td>
                                            <td>서귀포시 성산읍 신천서로 27-5 A동</td>
                                            <td>010-5714-8282</td>
                                        </tr>
                                        <tr>
                                            <td>163</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>썬시티 게스트하우스</td>
                                            <td>서귀포시 성산읍 한도로 120</td>
                                            <td>010-7730-5910</td>
                                        </tr>
                                        <tr>
                                            <td>164</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>comfy house</td>
                                            <td>서귀포시 성산읍 난고로 171</td>
                                            <td>010-6322-7684</td>
                                        </tr>
                                        <tr>
                                            <td>165</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>터닝포인트제주</td>
                                            <td>서귀포시 성산읍 일주동로 5199-11</td>
                                            <td>010-3968-1368</td>
                                        </tr>
                                        <tr>
                                            <td>166</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>터닝포인트</td>
                                            <td>서귀포시 성산읍 일주동로 5199-13</td>
                                            <td>010-3825-6351</td>
                                        </tr>
                                        <tr>
                                            <td>167</td>
                                            <td>서귀포시</td>
                                            <td>성산읍</td>
                                            <td>오조리bnb</td>
                                            <td>서귀포시 성산읍 오조리 42</td>
                                            <td>010-3754-3882</td>
                                        </tr>
                                        <tr>
                                            <td>168</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>샤인빌</td>
                                            <td>서귀포시 표선면 가시로 340</td>
                                            <td>010-3244-3543</td>
                                        </tr>
                                        <tr>
                                            <td>169</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>솔</td>
                                            <td>서귀포시 표선면 민속해안로 227-39</td>
                                            <td>010-7233-0723</td>
                                        </tr>
                                        <tr>
                                            <td>170</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>피터팬하우스</td>
                                            <td>서귀포시 표선면 한마음초등로 468</td>
                                            <td>010-8821-1134</td>
                                        </tr>
                                        <tr>
                                            <td>171</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>제주로가시리 민박</td>
                                            <td>서귀포시 표선면 가시로 622번길 20-8</td>
                                            <td>010-2693-6183</td>
                                        </tr>
                                        <tr>
                                            <td>172</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>행운클로버</td>
                                            <td>서귀포시 세화강왓로 65</td>
                                            <td>010-3670-3902</td>
                                        </tr>
                                        <tr>
                                            <td>173</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>표선 가시리 민박</td>
                                            <td>표선면 가시로 541-12</td>
                                            <td>010-4537-6199</td>
                                        </tr>
                                        <tr>
                                            <td>174</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>ST.28</td>
                                            <td>표선면 가마행남로 28</td>
                                            <td>010-7476-6076</td>
                                        </tr>
                                        <tr>
                                            <td>175</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>테쉬폰스테이</td>
                                            <td>서귀포시 표선면 토산중앙로 16번길 15-1</td>
                                            <td>010-3304-8579</td>
                                        </tr>
                                        <tr>
                                            <td>176</td>
                                            <td>서귀포시</td>
                                            <td>표선면</td>
                                            <td>해비치 바람의집</td>
                                            <td>서귀포시 표선면 민속해안로 381</td>
                                            <td>064-787-9888</td>
                                        </tr>
                                        <tr>
                                            <td>177</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>위미모루왓</td>
                                            <td>서귀포시 남원읍 위미항구로 51</td>
                                            <td>010-3699-7330</td>
                                        </tr>
                                        <tr>
                                            <td>178</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>뜨레 향</td>
                                            <td>서귀포시 남원읍 하례망장포로 27-8</td>
                                            <td>010-9900-7131</td>
                                        </tr>
                                        <tr>
                                            <td>179</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>수망가라</td>
                                            <td>서귀포시 남원읍 태수로 667-11, B동</td>
                                            <td>010-6500-8847</td>
                                        </tr>
                                        <tr>
                                            <td>180</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>해든빌레</td>
                                            <td>서귀포시 남원읍 자배오름로 139번길 149</td>
                                            <td>010-5222-4656</td>
                                        </tr>
                                        <tr>
                                            <td>181</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>콴도제주</td>
                                            <td>서귀포시 남원읍 태위로 151번길 14-12</td>
                                            <td>010-4491-1996</td>
                                        </tr>
                                        <tr>
                                            <td>182</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>우디</td>
                                            <td>서귀포시 남원읍 태위로 510번길 49</td>
                                            <td>010-9595-6506</td>
                                        </tr>
                                        <tr>
                                            <td>183</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>Be Lazy</td>
                                            <td>서귀포시 남원읍 위미해안로 129번길 17</td>
                                            <td>010-6202-3487</td>
                                        </tr>
                                        <tr>
                                            <td>184</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>태흥예술극장</td>
                                            <td>서귀포시 남원읍 태위로 912번길 28</td>
                                            <td>010-3118-8738</td>
                                        </tr>
                                        <tr>
                                            <td>185</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>아름제주</td>
                                            <td>서귀포시 남원읍 남원해안로 102</td>
                                            <td>010-2100-1001</td>
                                        </tr>
                                        <tr>
                                            <td>186</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>더빌라스오션</td>
                                            <td>서귀포시 남원읍 태신해안로 271</td>
                                            <td>010-3697-9975</td>
                                        </tr>
                                        <tr>
                                            <td>187</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>돌담길</td>
                                            <td>서귀포시 남원읍 태위로 67번길 24-15</td>
                                            <td>010-3694-5628</td>
                                        </tr>
                                        <tr>
                                            <td>188</td>
                                            <td>서귀포시</td>
                                            <td>남원읍</td>
                                            <td>바다 위 언덕</td>
                                            <td>서귀포시 남원읍 태위로 594-6</td>
                                            <td>010-2734-0047</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                </div>

                <!-- 센터끝 -->

            </div>
            <!-- 컨텐츠끝 --> 

        </div>
        <!-- 컨테이너끝 -->  
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ch15.ThemaSubBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<%	
	  request.setCharacterEncoding("UTF-8");
	  
      int totalRecord=0; //전체레코드수
	  int numPerPage=6; // 페이지당 레코드 수 
	  
	  int start=0; //디비의 select 시작번호
	  int end=6; //시작번호로 부터 가져올 select 갯수
	  
	  int listSize=0; //현재 읽어온 게시물의 수

		String keyWord = "", keyField = "";
		Vector<ThemaSubBean> vlist = null;
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <title>Document</title> -->
    <title>Things to do</title>

        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link href="thema_sub.css" rel="stylesheet" type="text/css">
        <!--<link href="https://g2project.github.io/main/index.css" rel="stylesheet" type="text/css">-->

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- <script src="index.js" type="text/javascript"></script> -->
        <script src="https://g2project.github.io/main/index.js" type="text/javascript"></script>
</head>
<body id="">
        
    <!-- 헤더시작 -->
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

               
            </nav>
        </div>
        <!-- 왼쪽사이드바 로고 5개 끝 -->

        <!-- 가운데 전체 프레임 -->
        <div id="center">

            <!-- 지도 프레임 -->
            <div id="mp_wp">
                <!-- <div> -->
                    <div id="map">
                        <!-- 지도정보 표시 부분-->map information
                    </div>
                <!-- </div> -->
            </div>

            <!-- 맨 위 메인 -->
            <div class="main_1">
                <!-- 메인 배너 시작 -->
                <div class="main">
                        <img src="https://github.com/g2project/main/blob/main/thema/image/jeju2.PNG?raw=true" width="1200" height="300">
                    <span class="travel">
                        <h1>제주도에 가면</h1>
                    </span>
                </div>
                <!-- 메인 배너 끝 -->

                <!--메인 네비 시작-->
                <div class="nv">
                    <span class="nv_s">
                        <span class="h_1" style="color: #c9c9c9;">
                            <i class="fas fa-home fa-2x"></i>
                        </span>
                        <div class="p_1">
                            <p><a href="https://g2project.github.io/main/trip/trip.html">제주도에가면</a> &nbsp 〉&nbsp <a href="https://g2project.github.io/main/thema/thema_list_1.html">테마여행</a> &nbsp 〉&nbsp <a href="#"><span style="font-weight: bold;">제주의 즐겁고 달콤한 겨울 박물관들</span></a></p>
                        </div>
                    </span>
                </div>
                <!--메인 네비 끝-->
            </div>
            <!-- 맨 위 메인 끝-->

            <!-- Suggested day plans -->

            <div class="sg_dp">
            
            <%
				  vlist = bMgr.getThemaSubList(keyField, keyWord, start, end);
				  listSize = vlist.size();//브라우저 화면에 보여질 게시물갯수
				  if (vlist.isEmpty()) {
					out.println("등록된 게시물이 없습니다.");
				  } else {
				    for (int i = 0;i<numPerPage; i++) {
					if (i == listSize) break;
					ThemaSubBean bean = vlist.get(i);
					int num = bean.getNum();
					String title = bean.getTitle();
					String img_1 = bean.getImg_1();
					String img_2 = bean.getImg_2();
					String img_3 = bean.getImg_3();
					String place_1 = bean.getPlace_1();
					String place_2 = bean.getPlace_2();
					String place_3 = bean.getPlace_3();
					String content_1 = bean.getContent_1();
					String content_2 = bean.getContent_2();
					String content_3 = bean.getContent_3();
					String content_4 = bean.getContent_4();
					String content_5 = bean.getContent_5();
					String content_6 = bean.getContent_6();
					String content_7 = bean.getContent_7();

					
					String id = "p" + num;
			%>
					<div class="ts_pt bx_hs pt_qs_al" id="<%=id%>">
						<jsp:include page="themaSubProduct.jsp">
							<jsp:param value = "<%=title %>" name = "title"/>
							<jsp:param value = "<%=img_1 %>" name = "img_1"/>
							<jsp:param value = "<%=img_2 %>" name = "img_2"/>
							<jsp:param value = "<%=img_3 %>" name = "img_3"/>
							<jsp:param value = "<%=place_1 %>" name = "place_1"/>
							<jsp:param value = "<%=place_2 %>" name = "place_2"/>
							<jsp:param value = "<%=place_3 %>" name = "place_3"/>
							<jsp:param value = "<%=content_1 %>" name = "content_1"/>
							<jsp:param value = "<%=content_2 %>" name = "content_2"/>
							<jsp:param value = "<%=content_3 %>" name = "content_3"/>
							<jsp:param value = "<%=content_4 %>" name = "content_4"/>
							<jsp:param value = "<%=content_5 %>" name = "content_5"/>
							<jsp:param value = "<%=content_6 %>" name = "content_6"/>
							<jsp:param value = "<%=content_7 %>" name = "content_7"/>
						</jsp:include>
				 </div>
			<%		
	  				}//for
 				}//if
 			%>
 			
 			
            
                <!--  <div class="sg_tt">
                        <div class="sg_bt">
                            <h2 class="">제주의 겨울 박물관</h2></div>
                </div>

                <div class="map">
                    지도 표시 
                </div>

                <div class="sg_cn">
                    <div class="sg_it">
                        <img src="img/b_1.JPG">
                        <span class="sg_it_n">
                            <h2>초콜렛 박물관</h2>
                        </span>
                    </div>
                    <div class="sg_it">
                        <img src="img/b_2.JPG">
                        <span class="sg_it_n">
                            <h2>테디베어 박물관</h2>
                        </span>
                    </div>
                    <div class="sg_it">
                        <img src="img/b_3.JPG">
                        <span class="sg_it_n">
                            <h2>해녀 박물관</h2>
                        </span>
                    </div>
                </div>

                <hr>
                


            </div>

            <div class="t_con">
                <p>
                    4계절 언제가도 좋은 제주도에는 겨울에도 즐거운 박물관들이 많다. 그 중에서 아이들 교육에 도움이 되면서 어른도 함께 즐길 수 있는 체험 박물관을 소개한다. 
                </p><br>
                
                <div class="t_con_i">
                    <img src="img/c_1.jpg">
                </div>
                <h1>초콜릿 박물관</h1>
                <br>

                <p>
                    초콜릿 박물관은 외관부터 신기하다. 일단 박물관의 외관이 카카오의 발생지인 남미 잉카 문명의 건축물처럼 생겼다. 또한 들어가자마자 바로 커피를 주면서 환영해주니 더욱 즐거워진다. 초콜릿박물관은 초콜릿의 전래역사 등 각 지역의 모든 초콜릿에 대해 재미있게 살펴볼 수 있는 곳이며 박물관 곳곳에 초콜릿으로 만든 동상 및 유명 문화작품 등이 전시되어 있다. 많은 사람들이 손으로 만지면 초콜릿이니까 녹기 때문일까? 당연히 눈으로만 봐야한다.
                    전시관은 아이들의 흥미를 끌 수 있는 영화 챨리의 초콜릿 공장 포스터 소개부터 시작하고 있다. 또한 카카오 열매로부터 초콜릿 만드는 방법 등을 하나하나 설명해 준다. 고대 아즈텍 문명의 초콜릿을 재현한 공간도 있는데 주변을 오고가는 모형기차 덕분에 흥미가 유발된다. 박물관 한쪽에서는 카카오의 종류 및 효능에 대해서 설명하고 있다. 초콜릿이 체력 보충에 도움이 된다고 어렴풋이 알고만 있는데 카카오의 종류가 이렇게 많고 다양한 효능이 있다는 것을 처음 알게 되었다.
                    
                    박물관에서는 단순히 전시뿐만 아니라 퀴즈 등을 통해서 다양한 초콜릿 카카오 지식을 전달하려는 퀴즈게임도 준비돼 있으니 초콜릿 전시관에서 습득한 지식을 바탕으로 누가 더 많이 퀴즈를 맞추는지 한번 대결해 보는 것도 재미있을 것이다.
                    단순히 나열형 관람에 지나지 않고 초콜릿 퀴즈, 초콜릿의 오해와 진실 등 다양한 시도를 통해서 관람객의 흥미와 참여를 유발하는 전시가 특징적이다.

                    2층에서는 초콜릿과 찻잔 등을 전시해 놓고 있는데 대부분 중세 유럽의 것이다. 초콜릿이 지금은 대중화 되었지만 과거에는 고급 음료로서 유럽에서 상류층들만 이용했던 모양이다. 화려하고 다양한 모양의 찾잔 전시와 이와 관련된 이야기 등을 설명해 주고 있는 공간 역시 많은 사람들의 흥미를 끌 수 있었다.
                </p>
                
                <br>
                
                <div class="t_con_i">
                    <img src="img/c_1.jpg">
                </div>
                <h1>테디베어 박물관</h1>
                <br>

                <p>
                    이제 제주도 중문에 위치한 테디베어 박물관에 한번 가보자. 테디베어는 모두들 다 아는 곰인형이다. 이것으로 박물관을 만들고 구성했다고 하는데 어떻게 꾸며놓았을지 궁금하다. 일단 곰인형이라는 주제 측면에서는 아이들에게 인기가 많을 듯하다.
                    일단 박물관 안으로 들어가면 테티베어 인류 현대사의 중요한 사건 등을 테디베어 인형으로 꾸며놓은 역사관, 테디베어로 예술 작품을 꾸민 예술관 및 기획전시 등 다양한 구성으로 이뤄져 있다. 자동차의 탄생부터 시작해서 인류의 달착륙, 홍콩의 중국 반환 등 다양한 사건이 테디베어 인형 등을 중심으로 꾸며져 있다. 현대사의 주소 사건을 인형으로 설명하니 아이들에게는 교육적이고 어른들에게는 아기자기하고 귀여운 박물관이다.
               
                    전시실 내부 예술관은 테디베어로 반고흐의 그림을 설명한 작품도 있고 루이비통으로 장식한 테디베어 등 다양한 주제로 관람객들의 시선을 끌고 있다. 지하에는 테디베어 기념품 판매점도 있는데 인기 만점이다. 아이들의 손을 잡고 온 부모들은 이곳에서 테디베어 인형을 사줘야 나갈 수 있을듯하다.
                
                    마지막으로 숨겨진 테디베어 공연이 있는데 다름 아닌 엘비스 프레슬리 공연이다. 공연은 길지 않지만 테디베어로 엘비스 프레슬리 춤과 음악을 꾸몄으니 충분히 볼만한 가치가 있다. 공연장이 본 전시관에서 좀 떨어진 곳에 자리잡고 있지만 잊지 말고 꼭 들러보자.

                    테디베어 박물관은 뿐만 아니라 야외정원 및 야외무대 등이 있다. 요즘은 한겨울이어서 야외는 가보지 못했으나 여름에 좋은 날에 가면 잔디광장과 산책로가 잘 조성된 야외정원은 시원한 바닷바람과 함께 관람객들에게 좋은 자연의 선물이 될듯하다.
                </p>
                

                <div class="t_con_i">
                    <img src="img/c_1.jpg">
                </div>
                <h1>해녀 박물관</h1>
                <br>

                <p>
                    이제 자리를 옮겨서 성산포 근처 해녀박물관으로 가자. 제주도 하면 빼놓을 수 없는 것이 해녀 아닌가? 해녀 박물관은 제주도에서 운영하는 곳으로서 제주도 해녀를 테마로 3개의 전시실로 구성되어 있다.
                    제1 전시실인 해녀의 생활관은 제주도 해녀들의 생활모습을 볼 수 있다. 전통 가옥을 재현해 놓고 옆에는 모형으로 제주도 마을을 꾸며 놓았다. 이뿐만 아니라 생활도구, 음식문화 및 세시풍속 등 다양한 전시도 해놓았다.

                    제2 전시실인 해녀의 일터는 해녀들이 일하는 모습을 인형으로 꾸며서 전시하며 동시에 영상으로 설명하여 시각적 효과를 극대화한 전시실이다. 또한 해녀의 위계질서, 해녀 공동체 등 해녀의 일상 생활에 대해서 알 수 있다. 해녀 항일운동 등 국가를 위해서 헌신한 해녀의 활약상을 전시한 공간도 있어서 바다, 집뿐만 아니라 나라를 위해서 활약한 해녀들의 모습을 살펴 볼 수 있다.

                    제3 전시실인 해녀의 생에는 생애 최초로 해녀가 돼서 위계가 올라가는 등 해녀의 다양한 모습을 살펴 볼 수 있다. 또한 영상으로 실제 해녀들의 생생한 경험담을 들을 수 있는 등 흥미로운 전시들이 있다.
  
                    마지막으로 어린이들을 위한 체험관인 어린이 해녀관이 있다. 이곳은 어린이들과 보호자들만 들어갈 수 있는 곳으로 어린이들은 제주해녀 관련 놀이기구를 가지고 놀면서 해녀와 더욱 친숙해 질 수 있다.

                    해녀박물관의 자랑은 야외 공원에도 있다. 탁트인 넓은 공원은 해녀광장이라고 하는데 이곳에는 제주해녀항일운동기념탑도 있으며 가족단위로 산책을 하면서 제주도 바닷바람을 즐길 수 있다.
                </p>

            </div> -->

            <hr>

            <!-- 푸터 프레임 -->
            <footer class="ft_wp">
                <div class="ft_lf">
                    <p>(63122) 제주특별자치도 제주시 선덕로 23(연동) JEJUALOT </p>
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
                            
        
    <!-- </div> -->


    <script>
        let map;
    
        function initMap() {
    
            var styleArray = [
                {
                    featureType: 'all',
                    stylers:[
                        {saturation: -80}
                    ]
                },
                {
                    featureType: 'foad.arterial',
                    elementType: 'gemetry',
                    stylers:[
                        {hue: '#00ffee'},
                        {saturation: -50}
                    ]
                },
                {
                    featureType: 'poi.business',
                    elementType: 'labels',
                    stylers:[
                        {visibility: 'off'}
                    ]
                }
            ];

        var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 14,
        center: new google.maps.LatLng( 37.568813, 126.987211),
        mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var infowindow = new google.maps.InfoWindow();

        var marker, i;

        for (i = 0; i < locations.length; i++) {  
        marker = new google.maps.Marker({
            position: new google.maps.LatLng(locations[i].lat, locations[i].lng),
            map: map
        });

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
            infowindow.setContent(locations[i].place);
            infowindow.open(map, marker);
            }
        })(marker, i));
        }

        }

        const locations = [
        { pln: '명동성당', lat: 37.563390, lng: 126.987425 },
        { pln: '남산N타워',lat: 37.551442, lng: 126.988162 },
        { pln: '경복궁',lat: 37.579983, lng: 126.977073 },
        { pln: '종묘',lat: 37.575341, lng: 126.994196 },
        { pln: '남대문',lat: 37.563381, lng: 126.987339 },
        { pln: '청계천',lat: 37.569246, lng: 126.978691 },
        { pln: '강남역',lat: 37.498146, lng: 127.027680 },
        { pln: '롯데월드',lat: 37.511450, lng: 127.098269 },
        { pln: '북촌한옥마을',lat: 37.582569, lng: 126.983621 },
        { pln: '인사동쌈지길', lat: 37.574471, lng: 126.984956 },
        { pln: '봉은사', lat: 37.515014, lng: 127.057312 },
        ];
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIpqxghuqNb8gdkUV2yupr6PLdcvOEG_k&callback=initMap"></script>

</body>
</html>
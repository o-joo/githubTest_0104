<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ch15.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<%	
	  request.setCharacterEncoding("UTF-8");
	  
      int totalRecord=0; //전체레코드수
	  int numPerPage=10; // 페이지당 레코드 수 
	  int pagePerBlock=15; //블럭당 페이지수 
	  
	  int totalPage=0; //전체 페이지 수
	  int totalBlock=0;  //전체 블럭수 

	  int nowPage=1; // 현재페이지
	  int nowBlock=1;  //현재블럭
	  
	  int start=0; //디비의 select 시작번호
	  int end=10; //시작번호로 부터 가져올 select 갯수
	  
	  int listSize=0; //현재 읽어온 게시물의 수

	String keyWord = "", keyField = "";
	Vector<BoardBean> vlist = null;
	if (request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	if (request.getParameter("reload") != null){
		if(request.getParameter("reload").equals("true")) {
			keyWord = "";
			keyField = "";
		}
	}
	
	if (request.getParameter("nowPage") != null) {
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	 start = (nowPage * numPerPage)-numPerPage;
	 end = numPerPage;
	 
	totalRecord = bMgr.getTotalCount(keyField, keyWord);
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);  //전체페이지수
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //현재블럭 계산
	  
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  //전체블럭계산
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <title>Document</title> -->
<title>Things to do</title>
<!-- <style>.gm-control-active>img{box-sizing:content-box;display:none;left:50%;pointer-events:none;position:absolute;top:50%;transform:translate(-50%,-50%)}.gm-control-active>img:nth-child(1){display:block}.gm-control-active:hover>img:nth-child(1),.gm-control-active:active>img:nth-child(1){display:none}.gm-control-active:hover>img:nth-child(2),.gm-control-active:active>img:nth-child(3){display:block}
</style> -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
<!-- <link href="index.css" rel="stylesheet" type="text/css"> -->
<link href="index.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script src="index.js" type="text/javascript"></script> -->
<script src="index.js" type="text/javascript" ></script>
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

            <!-- <div class="gb_yc gb_Cc gb_Fa" aria-label="Close" role="button" tabindex="0">
                <svg viewBox="0 0 24 24">
                    <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"></path>
                </svg>
            </div> -->

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
                                    Trips
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
                                    Things to do
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
                            <svg viewBox="0 0 612 612" class="sb_svg">
                                <path d="M496.469,353.365l-197.781-197.76V67.904c0-13.845-3.072-27.797-9.131-40.811l-4.501-8.533    C279.744,7.104,268.629,0,256.021,0s-23.723,7.104-28.8,18.069l-4.971,9.493c-5.824,12.544-8.896,26.475-8.896,40.341v87.701    L15.637,353.323C5.568,363.392,0.021,376.768,0.021,391.019v25.003c0,3.904,2.133,7.488,5.547,9.344    c3.413,1.877,7.595,1.749,10.88-0.384l201.045-128.832c1.984,32.277,4.672,59.221,7.957,92.011l3.392,33.6l-74.688,49.344    c-3.008,2.005-4.8,5.333-4.8,8.917v21.333c0,3.221,1.472,6.293,3.989,8.32c2.539,2.048,5.845,2.816,8.981,2.112l93.696-20.843    l93.696,20.843c0.768,0.171,1.536,0.256,2.304,0.256c2.411,0,4.757-0.811,6.677-2.347c2.517-2.048,3.989-5.12,3.989-8.341v-21.333    c0-3.584-1.792-6.933-4.8-8.896l-74.688-49.28l3.392-33.707c3.285-32.747,5.973-59.669,7.957-91.947l201.045,128.789    c3.307,2.133,7.467,2.24,10.859,0.384c3.435-1.856,5.568-5.44,5.568-9.344v-25.003    C512.021,376.768,506.496,363.392,496.469,353.365z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span>
                                    Flights
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
                            <svg viewBox="0 0 612 612" class="sb_svg">
                                <path d="M501.333,277.333h-416V74.667C85.333,68.771,80.563,64,74.667,64h-64C4.771,64,0,68.771,0,74.667v362.667     C0,443.229,4.771,448,10.667,448h64c5.896,0,10.667-4.771,10.667-10.667v-74.667h341.333v74.667     c0,5.896,4.771,10.667,10.667,10.667h64c5.896,0,10.667-4.771,10.667-10.667V288C512,282.104,507.229,277.333,501.333,277.333z"/>
                                <circle cx="170.667" cy="192" r="64"/>
                                <path d="M266.667,256h234.667c5.896,0,10.667-4.771,10.667-10.667C512,180.635,459.365,128,394.667,128h-128     c-5.896,0-10.667,4.771-10.667,10.667v106.667C256,251.229,260.771,256,266.667,256z"/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span>
                                    Hotels
                                    <div class=""></div>
                                </span>
                            </div>
                        </button>
                    </a>
                </div>

                <!-- 왼쪽사이드바 로고5개 중 5번 Holiday homes -->
                <div>
                    <a class="sb_it sb_i5" href="https://g2project.github.io/main/Holidays/HolidayHomes.html">
                        <button class="sb_btn">
                            <div class=""></div>
                            <!-- 왼쪽사이드바 로고5개 중 5번 아이콘 -->
                            <svg viewBox="0 0 30 30" class="sb_svg">
                                <path d="M3.674,24.876c0,0-0.024,0.604,0.566,0.604c0.734,0,6.811-0.008,6.811-0.008l0.01-5.581   c0,0-0.096-0.92,0.797-0.92h2.826c1.056,0,0.991,0.92,0.991,0.92l-0.012,5.563c0,0,5.762,0,6.667,0   c0.749,0,0.715-0.752,0.715-0.752V14.413l-9.396-8.358l-9.975,8.358C3.674,14.413,3.674,24.876,3.674,24.876z"/>
                                <path d="M0,13.635c0,0,0.847,1.561,2.694,0l11.038-9.338l10.349,9.28c2.138,1.542,2.939,0,2.939,0   L13.732,1.54L0,13.635z"/>
                                <polygon points="23.83,4.275 21.168,4.275 21.179,7.503 23.83,9.752  "/>
                            </svg>
                            <!-- 왼쪽사이드바 로고5개 중 3번 아이콘 밑 제목 Flights -->
                            <div class="">
                                <span jsname="iSelEd">
                                    Holiday homes
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

            <!-- 검색창+세이브드 프레임 -->
            <div class="ct_ss">
                <div class="ct_dv ct_sc">
                    <!-- 검색창 입력부분 -->
                    <input type="text" value="Seoul" class="" autocomplete="off">
                    <!-- /검색창 입력창 틀 -->
                    <!-- 검색창 로고 -->
                    <div class="ct_pn">
                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                            <circle cx="12" cy="9" r="2.5"></circle>
                        </svg>
                    </div>
                </div>

                <!-- saved파트 -->
                <a href="https://g2project.github.io/main/save_page/save_page.html" class="ct_at"><div class="ct_dv ct_sv">
                    <button class="">
                        <!-- 세이브드 둥근 테두리 실제 -->
                                <span>
                                    <!-- 세이브드 로고 -->
                                    <svg class="" viewBox="0 0 30 30">
                                        <path d="M15 7v12.97l-4.21-1.81-.79-.34-.79.34L5 19.97V7h10m0-2H5c-1.1 0-2 .9-2 2v16l7-3 7 3V7c0-1.1-.9-2-2-2zm4 15h2V3c0-1.1-.9-2-2-2H6v2h13v17z"></path>
                                        <!-- <path d="M0 0h24v24H0V0z" fill="none"></path> -->
                                    </svg>
                                </span>
                                <!-- 세이브드 텍스트 -->
                                <span class="">
                                    Saved
                                </span>
                    </button>
                </div>
                </a>
            </div>


            <!-- 가운데 검색창 아래 배너 -->
            <div class="ct_bn">                       <!-- https://github.com/g2project/main/blob/main/images/main/dayplanbig01.jpg -->
                <!-- <img class="R1Ybne YH2pd" alt="" src="https://lh6.googleusercontent.com/proxy/vCxgHyKGZDtwY_vJefzFF_cF4UBhrtBjIcvAOnnl6udF8I7Ef_yUhQxzRCsOY9puqzVzNDVstFbPGCDgsiqXf-o0p5N13eQ8eZpPgBMthIDJN_qy2Quac_5uPceohpbWcHaSrAaBKKZrqBMcAxtRiUjwUvFC9djeeyavf3brppHN=w420-h420-n-k-no" data-iml="1667.4399999992602"> -->
                <img class="R1Ybne YH2pd" alt="" src="https://github.com/g2project/main/blob/main/images/main/main_banner.jpg?raw=true">
                <!-- 큰제목 배너틀 안쪽 Seoul 틀 -->
                <span class="">
                    <h1 class="">Seoul</h1>
                    <p class="">South Korean capital with modern skyscrapers, ancient temples, Gyeongbokgung Palace & N Seoul Tower.</p>
                </span>
            </div>

            <!-- 가운데 배너 아래 Top sights -->
            <div class="ct_p1">
                <!-- Top sights -->
                <div class="">
                    <h1 class="">
                        Top sights
                    </h1>
                </div>
                <h5 class="">
                    Based on traveller visits and local insights
                </h5>
            </div>
            
            
            <!-- Top sights 상품 -->
            <div class="ts_wp">
                <div class="ts_pt bx_hs pt_qs_al" id="first_layer_01">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main01.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Incheon Grand Park
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span class=""></span>
                                            <span class="">
                                                <span class="">4.4</span>
                                                <div class="">
                                                    <span class="" style="width: 50%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (4,520)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Large urban nature park
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt bx_hs pt_qs_al" id="first_layer_02">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main02.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Sorae Ecology Park
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span class=""></span>
                                            <span class="">
                                                <span class="">4.1</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (736)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Scenic wetlands &amp; birdwatching area
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt bx_hs pt_qs_al" id="first_layer_03">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main03.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Gaetgol Ecological Park
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.4 stars from 4224 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.4</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (4,224)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Park and garden
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>



                <div id="first_layer_script" style="visibility: hidden;">

                <div id="center_test">
                    <div id="detail_showoff">
                    <div class="ma_dt_wp">
                        <div class="ma_dt_oc">
                            <!-- <div class="ma_dt_hl"></div>
                            <div class="ma_dt_ll"></div> -->
                            <div class="ma_dt_pp">
                                <div class="">
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class="" src="images/main/dtim01.jpg" >
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class="" src="images/main/dtim02.jpg" >
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/110806801408958467066">SEORAN KIM</a>
                                                </div>
                                        </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class="" src="images/main/dtim03.jpg" >
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/112925210708638106192">PHUONG HUYNH</a>
                                                </div>
                                        </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class="" src="images/main/dtim04.jpg" >
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/116308292875829448442">박애란</a>
                                                </div>
                                        </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim05.jpg">
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/102367465213928383439">조장호 준장</a>
                                                </div>
                                            </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim06.jpg">
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/100639104759192244528">Yongsheng Chai</a>
                                                </div>
                                            </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim07.jpg"><span  class="">
                                                <div class="ma_dt_nm" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/112512230838745124811">몽키초이</a>
                                                </div>
                                            </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim08.jpg">
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/102107924449269984832">youngseob Kim</a>
                                                </div>
                                            </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim09.jpg">
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/112512230838745124811">몽키초이</a>
                                                </div>
                                            </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim10.jpg">
                                            <span  class="ma_dt_nm">
                                                <div class="" >
                                                    <span class="" ></span>
                                                    <a class="" href="//maps.google.com/maps/contrib/116746996520821078948">Ken Lee</a>
                                                </div>
                                            </span>
                                        </easy-img>
                                    </div>
                                    <div class="ma_dt_ec" >
                                        <easy-img  class="">
                                            <img alt="" class=""   src="images/main/dtim11.jpg"></easy-img>
                                    </div>
                                </div>
                    
                                    <!-- <div class="" >
                                        <div  >
                                            <button class=""    aria-label="Previous" tabindex="-1"><span  class=""></span>
                                                <div class=""></div><span class=""><svg focusable="false" width="18" height="18" viewBox="0 0 24 24" class=""><path d="M16.41 5.41L15 4l-8 8 8 8 1.41-1.41L9.83 12"></path></svg></span></button>
                                        </div>
                                    </div>
                                    <div class="" >
                                        <div  >
                                            <button class=""    aria-label="Next" tabindex="0"><span  class=""></span>
                                                <div class=""></div><span class=""><svg focusable="false" width="18" height="18" viewBox="0 0 24 24" class=""><path d="M7.59 18.59L9 20l8-8-8-8-1.41 1.41L14.17 12"></path></svg></span></button>
                                        </div>
                                    </div> -----------------------삭제불가--> 
                            </div>                    
                            <div class="ma_dt_bs">
                                <h3 class="" aria-label="Wolmido">Wolmido</h3>
                                <div class="ma_md_hr"></div>
                                <table class="ma_dt_tb">
                                    <tr>
                                        <td class="ma_tb_lf">
                                            <div class="ma_dt_bt ma_dt_lt">
                                                <div class="ma_dt_tt">
                                                    
                                                    <!-- <div class="">
                                                        <div>
                                                            <div>
                                                                <div    class=""><span   aria-pressed="false"  tabindex="0" class=""  aria-label="Add Wolmido to collection" title="Add Wolmido to collection"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class=""><path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path></svg><span  class="">Add to</span></span><span   aria-pressed="true"  tabindex="0" class=""  aria-label="Add Wolmido to collection" title="Add Wolmido to collection" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class=""><path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path></svg><span  class="">Added</span></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div> -->
                                                </div>
                                                <div class="ma_dt_at">
                                                    <div class="">
                                                        <!-- <div class="">
                                                            <div class="">
                                                                <div class=""  >
                                                                    <div aria-label="4.0 out of 5 stars from 260 reviews. Very good.">
                                                                        <div class="" >
                                                                            <div class="">4.0</div>
                                                                            <div class="">
                                                                                <div class=""><span class=""><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span></span><span class=""><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span></span>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class=""><span class="" >Very good</span><span >&nbsp;|&nbsp;</span><a href="https://search.google.com/local/reviews?placeid=ChIJbYc0JWOCezURypoST-McTYM" target="_blank" class="">260 reviews</a></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div> -->
                                                        <div class="">
                                                            <div   >
                                                                <div  class="" >Wolmido, also known as Wŏlmi-do, is an island 1 kilometer off the coast of South Korea near Incheon. It was connected to the mainland by a highway in 1989, and was later connected by a monorail which opened in late 2019. It is a weekend destination and tourist area, with restaurants, the theme park Play Hill and the areas Meeting Square, Arts Square, Performance Square, and Good Harvest Square. The Korean Traditional Garden at Wolmi Park was established in 2001 after the relocation of the Army base which had been located there for 50 years. <a target="_blank"  href="https://en.wikipedia.org/wiki/Wolmido">Wikipedia</a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="ma_tb_rt"> 
                                            <div class="ma_dt_bt ma_dt_rt">
                                                <div class="">
                                                    <div class="ma_rt_tt">What visitors are saying</div>
                                                    <table class="">
                                                        
                                                        <tr class="ma_rt_is">
                                                            <td class="ma_rt_tb ma_rt_cp" >
                                                                <a href="https://www.google.com/maps/contrib/110538406358623875558/reviews/" target="_blank">
                                                                    <easy-img  class="">
                                                                        <div class=""></div><img alt="" class="" src="https://lh3.googleusercontent.com/a-/AOh14Gj-pR6Zsq2fMMp1dFBJg5LzdEYuEecDgTU1Yqwmyg=w28-h28-n-k-c0xffffffff-no-br100" ></easy-img>
                                                                </a>
                                                            </td>
                                                            <td class="ma_rt_tb ma_bt_sy"  >
                                                                <a class="" href="https://www.google.com/maps/contrib/110538406358623875558/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                    <html-blob>"there is a <b>small theme park</b> next to the ocean, so you can enjoy it with your friends or family."</html-blob>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                        <tr class="ma_rt_is">
                                                            <td class="ma_rt_tb ma_rt_cp" >
                                                                <a href="https://www.google.com/maps/contrib/115559558799531355151/reviews/" target="_blank">
                                                                    <easy-img  class="">
                                                                        <div class=""></div><img alt="" class="" src="https://lh3.googleusercontent.com/a-/AOh14GgZ_w0-gQ2sTjvsOT4XRf0PRF9Vx2cBefysRYp4HHw=w28-h28-n-k-c0xffffffff-no-br100" ></easy-img>
                                                                </a>
                                                            </td>
                                                            <td class="ma_rt_tb ma_bt_sy"  >
                                                                <a class="" href="https://www.google.com/maps/contrib/115559558799531355151/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                    <html-blob>"There is also <b>tourist sight</b> <b>seeing cruise</b> here but they have fix timings..."</html-blob>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                        <tr class="ma_rt_is">
                                                            <td class="ma_rt_tb ma_rt_cp" >
                                                                <a href="https://www.google.com/maps/contrib/109725873676983357715/reviews/" target="_blank">
                                                                    <easy-img  class="">
                                                                        <div class=""></div><img alt="" class="" src="https://lh4.googleusercontent.com/-Aj_yHXEfnFs/AAAAAAAAAAI/AAAAAAAAAAA/yeQJhdg4faM/w28-h28-n-k-c0xffffffff-no-br100/photo.jpg" ></easy-img>
                                                                </a>
                                                            </td>
                                                            <td class="ma_rt_tb ma_bt_sy"  >
                                                                <a class="" href="https://www.google.com/maps/contrib/109725873676983357715/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                    <html-blob>"If you <b>like fresh seafood</b>, you should visit here."</html-blob>
                                                                </a>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div class="ma_dt_mo"  >
                                                        <div class="" >
                                                            <div class=""  >
                                                                <div class=""></div><span  class="" >Read more reviews</span>
                                                                <a  class="" href="https://search.google.com/local/reviews?placeid=ChIJbYc0JWOCezURypoST-McTYM" target="_blank" aria-label="Read more reviews about Wolmido"></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>                
                            </div>
                            <div class="ma_md_ht"></div>
                            <div class="ma_dt_mt"  >
                                <div class="" >
                                    <div class=""  >
                                        <div class=""></div><span  class="ma_dt_bp" >Web results about this place</span>
                                        <a  class="" href="https://www.google.com/search?q=Wolmido&amp;stick=H4sIAAAAAAAAAONgFuLQz9U3yCgzTFLiArGyzPPM8pK1FLOTrfRz8pMTSzLz8-AMq8SSkqLEZBCzGADhRCyiOwAAAA#fpstate=trskp&amp;trifp=kpq%253DWolmido%2526skpm%253D/m/0j7n6nc%2526t%253Dd" target="_blank" aria-label="Web results about Wolmido"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    </div>




                </div>
            </div>

                <div class="ts_pt bx_hs pt_qs_al" id="second_layer_01">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main04.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Sihwa lake
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.3 stars from 4 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.3</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (4)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Wetland and park and garden
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt bx_hs pt_qs_al" id="second_layer_02">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main05.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Siheung Lotus Theme Park
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4 stars from 1880 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.0</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (1,880)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Ecological Park
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt bx_hs pt_qs_al" id="second_layer_03">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main06.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Siheung Archaeological
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.2 stars from 218 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.2</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (218)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Park and garden, archaeological
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                        </span>
                                            <span style="display: none;" class="">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>


                <div id="second_layer_script" style="visibility: hidden;">
                    <div id="center_test">
                        <div id="detail_showoff">
                        <div class="ma_dt_wp">
                            <div class="ma_dt_oc">
                                <!-- <div class="ma_dt_hl"></div>
                                <div class="ma_dt_ll"></div> -->
                                <div class="ma_dt_pp">
                                    <div class="">
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim01.jpg" >
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim02.jpg" >
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/110806801408958467066">SEORAN KIM</a>
                                                    </div>
                                            </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim03.jpg" >
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/112925210708638106192">PHUONG HUYNH</a>
                                                    </div>
                                            </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim04.jpg" >
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/116308292875829448442">박애란</a>
                                                    </div>
                                            </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim05.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/102367465213928383439">조장호 준장</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim06.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/100639104759192244528">Yongsheng Chai</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim07.jpg"><span  class="">
                                                    <div class="ma_dt_nm" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/112512230838745124811">몽키초이</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim08.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/102107924449269984832">youngseob Kim</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim09.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/112512230838745124811">몽키초이</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim10.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/116746996520821078948">Ken Lee</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim11.jpg"></easy-img>
                                        </div>
                                    </div>
                        
                                        <!-- <div class="" >
                                            <div  >
                                                <button class=""    aria-label="Previous" tabindex="-1"><span  class=""></span>
                                                    <div class=""></div><span class=""><svg focusable="false" width="18" height="18" viewBox="0 0 24 24" class=""><path d="M16.41 5.41L15 4l-8 8 8 8 1.41-1.41L9.83 12"></path></svg></span></button>
                                            </div>
                                        </div>
                                        <div class="" >
                                            <div  >
                                                <button class=""    aria-label="Next" tabindex="0"><span  class=""></span>
                                                    <div class=""></div><span class=""><svg focusable="false" width="18" height="18" viewBox="0 0 24 24" class=""><path d="M7.59 18.59L9 20l8-8-8-8-1.41 1.41L14.17 12"></path></svg></span></button>
                                            </div>
                                        </div> -----------------------삭제불가--> 
                                </div>                    
                                <div class="ma_dt_bs">
                                    <h3 class="" aria-label="Wolmido">Wolmido</h3>
                                    <div class="ma_md_hr"></div>
                                    <table class="ma_dt_tb">
                                        <tr>
                                            <td class="ma_tb_lf">
                                                <div class="ma_dt_bt ma_dt_lt">
                                                    <div class="ma_dt_tt">
                                                        
                                                        <!-- <div class="">
                                                            <div>
                                                                <div>
                                                                    <div    class=""><span   aria-pressed="false"  tabindex="0" class=""  aria-label="Add Wolmido to collection" title="Add Wolmido to collection"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class=""><path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path></svg><span  class="">Add to</span></span><span   aria-pressed="true"  tabindex="0" class=""  aria-label="Add Wolmido to collection" title="Add Wolmido to collection" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class=""><path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path></svg><span  class="">Added</span></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div> -->
                                                    </div>
                                                    <div class="ma_dt_at">
                                                        <div class="">
                                                            <!-- <div class="">
                                                                <div class="">
                                                                    <div class=""  >
                                                                        <div aria-label="4.0 out of 5 stars from 260 reviews. Very good.">
                                                                            <div class="" >
                                                                                <div class="">4.0</div>
                                                                                <div class="">
                                                                                    <div class=""><span class=""><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span></span><span class=""><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span></span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class=""><span class="" >Very good</span><span >&nbsp;|&nbsp;</span><a href="https://search.google.com/local/reviews?placeid=ChIJbYc0JWOCezURypoST-McTYM" target="_blank" class="">260 reviews</a></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> -->
                                                            <div class="">
                                                                <div   >
                                                                    <div  class="" >Wolmido, also known as Wŏlmi-do, is an island 1 kilometer off the coast of South Korea near Incheon. It was connected to the mainland by a highway in 1989, and was later connected by a monorail which opened in late 2019. It is a weekend destination and tourist area, with restaurants, the theme park Play Hill and the areas Meeting Square, Arts Square, Performance Square, and Good Harvest Square. The Korean Traditional Garden at Wolmi Park was established in 2001 after the relocation of the Army base which had been located there for 50 years. <a target="_blank"  href="https://en.wikipedia.org/wiki/Wolmido">Wikipedia</a></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="ma_tb_rt"> 
                                                <div class="ma_dt_bt ma_dt_rt">
                                                    <div class="">
                                                        <div class="ma_rt_tt">What visitors are saying</div>
                                                        <table class="">
                                                            
                                                            <tr class="ma_rt_is">
                                                                <td class="ma_rt_tb ma_rt_cp" >
                                                                    <a href="https://www.google.com/maps/contrib/110538406358623875558/reviews/" target="_blank">
                                                                        <easy-img  class="">
                                                                            <div class=""></div><img alt="" class="" src="https://lh3.googleusercontent.com/a-/AOh14Gj-pR6Zsq2fMMp1dFBJg5LzdEYuEecDgTU1Yqwmyg=w28-h28-n-k-c0xffffffff-no-br100" ></easy-img>
                                                                    </a>
                                                                </td>
                                                                <td class="ma_rt_tb ma_bt_sy"  >
                                                                    <a class="" href="https://www.google.com/maps/contrib/110538406358623875558/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                        <html-blob>"there is a <b>small theme park</b> next to the ocean, so you can enjoy it with your friends or family."</html-blob>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr class="ma_rt_is">
                                                                <td class="ma_rt_tb ma_rt_cp" >
                                                                    <a href="https://www.google.com/maps/contrib/115559558799531355151/reviews/" target="_blank">
                                                                        <easy-img  class="">
                                                                            <div class=""></div><img alt="" class="" src="https://lh3.googleusercontent.com/a-/AOh14GgZ_w0-gQ2sTjvsOT4XRf0PRF9Vx2cBefysRYp4HHw=w28-h28-n-k-c0xffffffff-no-br100" ></easy-img>
                                                                    </a>
                                                                </td>
                                                                <td class="ma_rt_tb ma_bt_sy"  >
                                                                    <a class="" href="https://www.google.com/maps/contrib/115559558799531355151/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                        <html-blob>"There is also <b>tourist sight</b> <b>seeing cruise</b> here but they have fix timings..."</html-blob>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr class="ma_rt_is">
                                                                <td class="ma_rt_tb ma_rt_cp" >
                                                                    <a href="https://www.google.com/maps/contrib/109725873676983357715/reviews/" target="_blank">
                                                                        <easy-img  class="">
                                                                            <div class=""></div><img alt="" class="" src="https://lh4.googleusercontent.com/-Aj_yHXEfnFs/AAAAAAAAAAI/AAAAAAAAAAA/yeQJhdg4faM/w28-h28-n-k-c0xffffffff-no-br100/photo.jpg" ></easy-img>
                                                                    </a>
                                                                </td>
                                                                <td class="ma_rt_tb ma_bt_sy"  >
                                                                    <a class="" href="https://www.google.com/maps/contrib/109725873676983357715/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                        <html-blob>"If you <b>like fresh seafood</b>, you should visit here."</html-blob>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div class="ma_dt_mo"  >
                                                            <div class="" >
                                                                <div class=""  >
                                                                    <div class=""></div><span  class="" >Read more reviews</span>
                                                                    <a  class="" href="https://search.google.com/local/reviews?placeid=ChIJbYc0JWOCezURypoST-McTYM" target="_blank" aria-label="Read more reviews about Wolmido"></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>                
                                </div>
                                <div class="ma_md_ht"></div>
                                <div class="ma_dt_mt"  >
                                    <div class="" >
                                        <div class=""  >
                                            <div class=""></div><span  class="ma_dt_bp" >Web results about this place</span>
                                            <a  class="" href="https://www.google.com/search?q=Wolmido&amp;stick=H4sIAAAAAAAAAONgFuLQz9U3yCgzTFLiArGyzPPM8pK1FLOTrfRz8pMTSzLz8-AMq8SSkqLEZBCzGADhRCyiOwAAAA#fpstate=trskp&amp;trifp=kpq%253DWolmido%2526skpm%253D/m/0j7n6nc%2526t%253Dd" target="_blank" aria-label="Web results about Wolmido"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        </div>
                    </div>
                </div>



                <div class="ts_pt bx_hs pt_qs_al" id="third_layer_01">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main07.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                        Soraesan
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="4.5 stars from 82 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">4.5</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (82)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Mountaineering and mountain
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt bx_hs pt_qs_al" id="third_layer_02">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main08.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Gwangokji Pond
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="3.8 stars from 199 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">3.8</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (199)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Historical place
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg  width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>
                <div class="ts_pt bx_hs pt_qs_al" id="third_layer_03">
                    <!-- <div class="">
                        <div class="">
                            <div class=""> -->
                                <div class="pt_im">
                                    <easy-img class="">
                                        <!-- <div class="" style="padding-top:56.03%"></div> -->
                                        <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/main09.jpg?raw=true">
                                    </easy-img>
                                </div>
                                <div class="pt_dt">
                                    <div class="">
                                        <div class="pt_tt">
                                            Gwangokji Pond
                                        </div>
                                    </div>
                                    <div class="pt_rt">
                                        <span class="">
                                            <span aria-label="3.8 stars from 199 reviews" class="Knp1ee"></span>
                                            <span class="">
                                                <span class="" aria-hidden="true">3.8</span>
                                                <div class="">
                                                    <span class="" style="width: 100%">
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="pt_sf">★</span>
                                                        <span class="">☆</span>
                                                        <span class="">☆</span>
                                                    </span>
                                                    <!-- <span class="" style="width: 88.30531199999999%">
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                        <span class=""></span>
                                                    </span> -->
                                                </div>
                                                <span class=""> (199)</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="pt_ap">
                                        Historical place
                                    </div>
                                </div>
                            <!-- </div> -->
                            <div class="pt_sv">
                                <div>
                                    <div>
                                        <div class="">
                                            <span class="">
                                                <svg width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path>
                                                </svg>
                                            </span>
                                            <span style="display: none;" class="">
                                                <svg  width="48" height="48" viewBox="0 0 48 48" class="">
                                                    <path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path>
                                                </svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <!-- </div>
                    </div> -->
                </div>

















                <div id="third_layer_script" style="visibility: hidden;">



                    <div id="center_test">
                        <div id="detail_showoff">
                        <div class="ma_dt_wp">
                            <div class="ma_dt_oc">
                                <!-- <div class="ma_dt_hl"></div>
                                <div class="ma_dt_ll"></div> -->
                                <div class="ma_dt_pp">
                                    <div class="">
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim01.jpg" >
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim02.jpg" >
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/110806801408958467066">SEORAN KIM</a>
                                                    </div>
                                            </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim03.jpg" >
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/112925210708638106192">PHUONG HUYNH</a>
                                                    </div>
                                            </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class="" src="images/main/dtim04.jpg" >
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/116308292875829448442">박애란</a>
                                                    </div>
                                            </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim05.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/102367465213928383439">조장호 준장</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim06.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/100639104759192244528">Yongsheng Chai</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim07.jpg"><span  class="">
                                                    <div class="ma_dt_nm" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/112512230838745124811">몽키초이</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim08.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/102107924449269984832">youngseob Kim</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim09.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/112512230838745124811">몽키초이</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim10.jpg">
                                                <span  class="ma_dt_nm">
                                                    <div class="" >
                                                        <span class="" ></span>
                                                        <a class="" href="//maps.google.com/maps/contrib/116746996520821078948">Ken Lee</a>
                                                    </div>
                                                </span>
                                            </easy-img>
                                        </div>
                                        <div class="ma_dt_ec" >
                                            <easy-img  class="">
                                                <img alt="" class=""   src="images/main/dtim11.jpg"></easy-img>
                                        </div>
                                    </div>
                        
                                        <!-- <div class="" >
                                            <div  >
                                                <button class=""    aria-label="Previous" tabindex="-1"><span  class=""></span>
                                                    <div class=""></div><span class=""><svg focusable="false" width="18" height="18" viewBox="0 0 24 24" class=""><path d="M16.41 5.41L15 4l-8 8 8 8 1.41-1.41L9.83 12"></path></svg></span></button>
                                            </div>
                                        </div>
                                        <div class="" >
                                            <div  >
                                                <button class=""    aria-label="Next" tabindex="0"><span  class=""></span>
                                                    <div class=""></div><span class=""><svg focusable="false" width="18" height="18" viewBox="0 0 24 24" class=""><path d="M7.59 18.59L9 20l8-8-8-8-1.41 1.41L14.17 12"></path></svg></span></button>
                                            </div>
                                        </div> -----------------------삭제불가--> 
                                </div>                    
                                <div class="ma_dt_bs">
                                    <h3 class="" aria-label="Wolmido">Wolmido</h3>
                                    <div class="ma_md_hr"></div>
                                    <table class="ma_dt_tb">
                                        <tr>
                                            <td class="ma_tb_lf">
                                                <div class="ma_dt_bt ma_dt_lt">
                                                    <div class="ma_dt_tt">
                                                        
                                                        <!-- <div class="">
                                                            <div>
                                                                <div>
                                                                    <div    class=""><span   aria-pressed="false"  tabindex="0" class=""  aria-label="Add Wolmido to collection" title="Add Wolmido to collection"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class=""><path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4zm0 30l-10-4.35L14 36V10h20v26z"></path></svg><span  class="">Add to</span></span><span   aria-pressed="true"  tabindex="0" class=""  aria-label="Add Wolmido to collection" title="Add Wolmido to collection" style="display: none;"><svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" class=""><path d="M34 6H14c-2.21 0-3.98 1.79-3.98 4L10 42l14-6 14 6V10c0-2.21-1.79-4-4-4z"></path></svg><span  class="">Added</span></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div> -->
                                                    </div>
                                                    <div class="ma_dt_at">
                                                        <div class="">
                                                            <!-- <div class="">
                                                                <div class="">
                                                                    <div class=""  >
                                                                        <div aria-label="4.0 out of 5 stars from 260 reviews. Very good.">
                                                                            <div class="" >
                                                                                <div class="">4.0</div>
                                                                                <div class="">
                                                                                    <div class=""><span class=""><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span></span><span class=""><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span><span class="" ></span></span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class=""><span class="" >Very good</span><span >&nbsp;|&nbsp;</span><a href="https://search.google.com/local/reviews?placeid=ChIJbYc0JWOCezURypoST-McTYM" target="_blank" class="">260 reviews</a></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div> -->
                                                            <div class="">
                                                                <div   >
                                                                    <div  class="" >Wolmido, also known as Wŏlmi-do, is an island 1 kilometer off the coast of South Korea near Incheon. It was connected to the mainland by a highway in 1989, and was later connected by a monorail which opened in late 2019. It is a weekend destination and tourist area, with restaurants, the theme park Play Hill and the areas Meeting Square, Arts Square, Performance Square, and Good Harvest Square. The Korean Traditional Garden at Wolmi Park was established in 2001 after the relocation of the Army base which had been located there for 50 years. <a target="_blank"  href="https://en.wikipedia.org/wiki/Wolmido">Wikipedia</a></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="ma_tb_rt"> 
                                                <div class="ma_dt_bt ma_dt_rt">
                                                    <div class="">
                                                        <div class="ma_rt_tt">What visitors are saying</div>
                                                        <table class="">
                                                            
                                                            <tr class="ma_rt_is">
                                                                <td class="ma_rt_tb ma_rt_cp" >
                                                                    <a href="https://www.google.com/maps/contrib/110538406358623875558/reviews/" target="_blank">
                                                                        <easy-img  class="">
                                                                            <div class=""></div><img alt="" class="" src="https://lh3.googleusercontent.com/a-/AOh14Gj-pR6Zsq2fMMp1dFBJg5LzdEYuEecDgTU1Yqwmyg=w28-h28-n-k-c0xffffffff-no-br100" ></easy-img>
                                                                    </a>
                                                                </td>
                                                                <td class="ma_rt_tb ma_bt_sy"  >
                                                                    <a class="" href="https://www.google.com/maps/contrib/110538406358623875558/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                        <html-blob>"there is a <b>small theme park</b> next to the ocean, so you can enjoy it with your friends or family."</html-blob>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr class="ma_rt_is">
                                                                <td class="ma_rt_tb ma_rt_cp" >
                                                                    <a href="https://www.google.com/maps/contrib/115559558799531355151/reviews/" target="_blank">
                                                                        <easy-img  class="">
                                                                            <div class=""></div><img alt="" class="" src="https://lh3.googleusercontent.com/a-/AOh14GgZ_w0-gQ2sTjvsOT4XRf0PRF9Vx2cBefysRYp4HHw=w28-h28-n-k-c0xffffffff-no-br100" ></easy-img>
                                                                    </a>
                                                                </td>
                                                                <td class="ma_rt_tb ma_bt_sy"  >
                                                                    <a class="" href="https://www.google.com/maps/contrib/115559558799531355151/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                        <html-blob>"There is also <b>tourist sight</b> <b>seeing cruise</b> here but they have fix timings..."</html-blob>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr class="ma_rt_is">
                                                                <td class="ma_rt_tb ma_rt_cp" >
                                                                    <a href="https://www.google.com/maps/contrib/109725873676983357715/reviews/" target="_blank">
                                                                        <easy-img  class="">
                                                                            <div class=""></div><img alt="" class="" src="https://lh4.googleusercontent.com/-Aj_yHXEfnFs/AAAAAAAAAAI/AAAAAAAAAAA/yeQJhdg4faM/w28-h28-n-k-c0xffffffff-no-br100/photo.jpg" ></easy-img>
                                                                    </a>
                                                                </td>
                                                                <td class="ma_rt_tb ma_bt_sy"  >
                                                                    <a class="" href="https://www.google.com/maps/contrib/109725873676983357715/place/ChIJbYc0JWOCezURypoST-McTYM" target="_blank">
                                                                        <html-blob>"If you <b>like fresh seafood</b>, you should visit here."</html-blob>
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <div class="ma_dt_mo"  >
                                                            <div class="" >
                                                                <div class=""  >
                                                                    <div class=""></div><span  class="" >Read more reviews</span>
                                                                    <a  class="" href="https://search.google.com/local/reviews?placeid=ChIJbYc0JWOCezURypoST-McTYM" target="_blank" aria-label="Read more reviews about Wolmido"></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>                
                                </div>
                                <div class="ma_md_ht"></div>
                                <div class="ma_dt_mt"  >
                                    <div class="" >
                                        <div class=""  >
                                            <div class=""></div><span  class="ma_dt_bp" >Web results about this place</span>
                                            <a  class="" href="https://www.google.com/search?q=Wolmido&amp;stick=H4sIAAAAAAAAAONgFuLQz9U3yCgzTFLiArGyzPPM8pK1FLOTrfRz8pMTSzLz8-AMq8SSkqLEZBCzGADhRCyiOwAAAA#fpstate=trskp&amp;trifp=kpq%253DWolmido%2526skpm%253D/m/0j7n6nc%2526t%253Dd" target="_blank" aria-label="Web results about Wolmido"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        </div>
    
    
    
    
                    </div>
                </div>
    

































            </div>
            
            <!-- See all top sights -->
            <div class="sa_ts">
                <div class="">
                    <div class="">
                        <button class="">
                            <!-- 화살표 -->
                            <svg width="20" height="20" viewBox="0 0 24 24" focusable="false" class="WXolQe NMm5M hhikbc">
                                <path d="M14 6l-1.41 1.41L16.17 11H4v2h12.17l-3.58 3.59L14 18l6-6z"></path>
                            </svg>
                            <!-- See all top sights 텍스트 -->
                            <span class="">See all top sights</span>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Top sights by interest 제목 -->
            <div class="ti_wp">
                <!-- 큰제목 -->
                <div class="ti_it">
                    <div class="">
                        <div class="">
                            <h2 class="">
                                Top sights by interest
                            </h2>
                        </div>
                    </div>
                </div>

                <!-- Top sights by interest 상품정보 프레임 -->
                <div class="ti_pd">
                    <div class="">
                        <div class="">
                            <!-- 상품정보 프레임2 -->
                            <!-- <div style="padding-bottom: 20px; margin-bottom: -20px;"> -->
                            
                                <!-- 상품프레임1 -->
                               <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class=""> -->
                                            <!-- <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest01.jpg?raw=true">
                                                <span class="ti_dt">
                                                    <!-- 제목 -->
                                                    <div class="">
                                                        Most visited
                                                    </div>
                                                </span>
                                            <!-- </easy-img> -->
                                        <!-- </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임2 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest02.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Hidden gems
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임3 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest03.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Outdoors
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임4 -->
                               <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class=""> -->
                                            <!-- <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest04.jpg?raw=true">
                                                <span class="ti_dt">
                                                    <!-- 제목 -->
                                                    <div class="">
                                                        With child
                                                    </div>
                                                </span>
                                            <!-- </easy-img> -->
                                        <!-- </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임5 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest05.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Culture
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임6 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest06.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Exhibition
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임7 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class=""> -->
                                            <!-- <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest07.jpg?raw=true">
                                                <span class="ti_dt">
                                                    <!-- 제목 -->
                                                    <div class="">
                                                        History
                                                    </div>
                                                </span>
                                            <!-- </easy-img> -->
                                        <!-- </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임8 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest08.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Market
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임9 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest09.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Theme Park
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- 상품프레임10 -->
                                <div class="ti_pt bx_ts">
                                    <!-- <div class="">
                                        <div class="">
                                            <easy-img class=""> -->
                                                <!-- <div class="" style="padding-top:100%"></div> -->
                                                <!-- 사진 -->
                                                <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/interest10.jpg?raw=true">
                                                <span class="">
                                                    <!-- 제목 -->
                                                    <div class="ti_dt">
                                                        Nature
                                                    </div>
                                                </span>
                                            <!-- </easy-img>
                                        </div>
                                    </div> -->
                                </div>
                            <!-- </div> -->
                        </div>
                    </div>

                    <div class="pf_ak pf_lf sg_rr ti_rr">
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
                    <div class="pf_ak pf_rt sg_rr ti_rr">
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

            <!-- Popular food and drink -->
            <div class="pf_cn">
                <div class="pf_tt">
                    <div class="">
                        <div class="">
                            <h2 class="">Popular food and drink</h2>
                        </div>
                        <h3 class="">Iconic local dishes</h3>
                    </div>
                </div>
                <div>
                    <div >
                        <div class="">
                            <div class="">
                                <div class="">
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class=""></easy-img>
                                                            <!-- <div class="" style="padding-top:100%">
                                                            </div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food01.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jajangmyeon</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="" style="padding-top:100%">
                                                            </div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food02.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Samgye-tang</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food03.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Pepero</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food04.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Gamja-tang</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food05.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Budae jjigae</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%">
                                                            </div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food06.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Dak-galbi</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food07.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Gimbap</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food08.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Tteok-bokki</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food09.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Insam-ju</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food10.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Bulgogi</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food11.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jjolmyeon</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food12.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Gyeran-ppang</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food13.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Bibimbap</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food14.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div>
                                                        <div class="pf_dt">
                                                            <div class="">
                                                                <div class="">Kimchi</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food15.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Doenjang-jjigae</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food16.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Soju</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food17.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Hotteok</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food18.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Galbi</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food19.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jeonbok-juk</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food20.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Zhajiangmian</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food21.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Yuja tea</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food22.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jeon</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food23.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Korean fried chicken</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food24.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Pojangmacha</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food25.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Korean tea</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food26.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Samgyeopsal</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food27.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jjamppong</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food28.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Miyeok-guk</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food29.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Kal-guksu</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food30.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jeotgal</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food31.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Hangwa</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food32.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jeongol</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food33.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Bokkeum</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food34.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Naengmyeon</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food35.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Makgeolli</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food36.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Kimchi-jjigae</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food37.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Mandu</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food38.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Doenjang</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food39.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Jjigae</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food40.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Tteok</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pf_wp bx_hs">
                                        <div class="">
                                            <div class="">
                                                <div class="">
                                                    <div class="pf_fr">
                                                        <easy-img class="">
                                                            <!-- <div class="nLGrz" style="padding-top:100%"></div> -->
                                                            <img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/food41.jpg?raw=true">
                                                        </easy-img>
                                                    </div>
                                                    <div class="pf_dt">
                                                        <div class="">
                                                            <div class="">Soybean sprout</div>
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




            <!-- Suggested day plans -->

            <div class="sg_dp">
                <div class="sg_tt">
                    <div class="">
                        <div class="sg_bt">
                            <h2 class="">Suggested day plans</h2></div>
                    </div>
                    <div class="sg_st"><a href="#">See all day plans</a></div>
                </div>
                <div>
                    <div >
                        <div >
                            <div class="">
                                <div class="">
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall01.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap01.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig01.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">If you only have a day</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A busy day spent exploring must-see attractions, including Changdeokgung, Gyeongbokgung Palace and Myeong-dong.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>4 places</div>
                                                    <div class="sg_dt">Based on actual visits</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall02.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap02.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig02.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">72 hours in Seoul: Day 1</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A day exploring South Korean culture, from contemporary art to folk history.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="EVMfYd NMm5M">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>5 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall03.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap03.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig03.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">72 hours in Seoul: Day 2</div>
                                                    </div>
                                                    <div class="sg_dt trunc">More of Seoul's popular sights, from historic palaces &amp; temples to the artsy Insa-dong district.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>6 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall04.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap04.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig04.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">72 hours in Seoul: Day 3</div>
                                                    </div>
                                                    <div class="sg_dt trunc">Another day of top attractions, from a traditional market to an observation tower in central Seoul.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>4 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall05.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap05.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig05.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">Historic Seoul</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A glimpse into Seoul's past, from a preserved traditional village to a former prison.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="EVMfYd NMm5M">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>5 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall06.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap06.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig06.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">Joseon dynasty palaces</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A visit to Seoul's famed palaces, some with gardens, museums, or royal guard changing ceremonies.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>5 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall07.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap07.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig07.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">Kid-friendly attractions</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A day of kid-friendly attractions, from Seoul Grand Park to a skyscraper overlooking the Han River.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>3 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall08.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap08.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig08.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">Kid-friendly attractions</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A day of kid-friendly attractions, from Seoul Grand Park to a skyscraper overlooking the Han River.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>3 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall09.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap09.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig09.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">Kid-friendly attractions</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A day of kid-friendly attractions, from Seoul Grand Park to a skyscraper overlooking the Han River.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>3 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="sg_it bx_hs">
                                        <div class="">
                                            <a href="#" class="">
                                                <div class="sg_sg">
                                                    <div class="">
                                                        <easy-img class="sg_mp">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplansmall10.jpg?raw=true"></easy-img>
                                                        <easy-img class="sg_mq">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanmap10.png?raw=true"></easy-img>
                                                    </div>
                                                    <div class="">
                                                        <easy-img class="sg_mr">
                                                            <div class=""></div><img class="" alt="" src="https://github.com/g2project/main/blob/main/images/main/dayplanbig10.jpg?raw=true"></easy-img>
                                                    </div>
                                                </div>
                                                <div class="sg_sc">
                                                    <div class="">
                                                        <div class="sg_tt">Kid-friendly attractions</div>
                                                    </div>
                                                    <div class="sg_dt trunc">A day of kid-friendly attractions, from Seoul Grand Park to a skyscraper overlooking the Han River.</div>
                                                    <div class="sg_dt">
                                                        <svg width="24" height="24" viewBox="0 0 24 24" focusable="false" class="">
                                                            <path d="M12 2C8.13 2 5 5.13 5 9c0 5.25 7 13 7 13s7-7.75 7-13c0-3.87-3.13-7-7-7zM7 9c0-2.76 2.24-5 5-5s5 2.24 5 5c0 2.88-2.88 7.19-5 9.88C9.92 16.21 7 11.85 7 9z"></path>
                                                            <circle cx="12" cy="9" r="2.5"></circle>
                                                        </svg>3 places</div>
                                                    <div class="sg_dt">Written by Google</div>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="pf_ak pf_lf sg_rr">
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
                <div class="pf_ak pf_rt sg_rr">
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

            <hr>

            <!-- 푸터 프레임 -->
            <footer class="ft_wp">
                <!-- 푸터 내부 첫째줄 프레임 -->
                <div class="ft_lf">
                    <!-- 푸터 내부 첫째줄 항목1 -->
                    <a class="" href="#" target="_blank">About</a>
                    <!-- 푸터 내부 첫째줄 항목2 -->
                    <a class="" href="#" target="_blank">Privacy</a>
                    <!-- 푸터 내부 첫째줄 항목3 -->
                    <a class="" href="#" target="_blank">Terms</a>
                    <!-- 푸터 내부 첫째줄 항목4 -->
                    <a class="" href="#" target="_blank">Join user studies</a>
                    <!-- 푸터 내부 첫째줄 항목5 -->
                    <span class="" >Feedback</span>
                    <!-- 푸터 내부 첫째줄 항목6 -->
                    <a class="" href="https://g2project.github.io/main/qna/qna.html" target="_blank">Help Centre</a>
                </div>
                
                <!-- 푸터 내부 둘째줄 -->
                <div class="ft_ls">
                    <p class="">Content written by Google unless otherwise noted</p>
                </div>
            </footer>
        </div>                          
          
    

        <!-- 지도 프레임 -->
        <div id="mp_wp">
            <!-- <div> -->
                <div id="map">
                    <!-- 지도정보 표시 부분-->map information
                </div>
            <!-- </div> -->
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


   <script>
        var scriptArray = ["first_layer_script", "second_layer_script", "third_layer_script"];
        scriptArray.forEach(function(obj){
            var scpt = document.getElementById(obj);
            scpt.style.visibility = 'hidden';
            scpt.style.opacity = '0';
            scpt.style.height = '0';
            scpt.style.width = '0';
            scpt.style.transition = 'height 0.3s, width 0s, padding 0.3s, visibility 0.3s, opacity 1s ease-out';
        })

            var a = ["first_layer_01", "first_layer_02", "first_layer_03"];
            a.forEach(function(item){
                var obj = document.getElementById("first_layer_script");
                var dtl = document.getElementById(item);

                dtl.addEventListener('click', function(){
            if (obj.style.visibility == 'hidden') {
                obj.style.visibility = 'visible';
                obj.style.opacity = '1';
                obj.style.height = '580px';
                obj.style.width = '100%';
            } else {
                obj.style.visibility = 'hidden';
                obj.style.opacity = '0';
                obj.style.height = '0';
                obj.style.width = '0';
            }
            })
            })

            var b = ["second_layer_01", "second_layer_02", "second_layer_03"];
            b.forEach(function(item){
                var obj = document.getElementById("second_layer_script");
                var dtl = document.getElementById(item);

                dtl.addEventListener('click', function(){
            if (obj.style.visibility == 'hidden') {
                obj.style.visibility = 'visible';
                obj.style.opacity = '1';
                obj.style.height = '580px';
                obj.style.width = '100%';
            } else {
                obj.style.visibility = 'hidden';
                obj.style.opacity = '0';
                obj.style.height = '0';
                obj.style.width = '0';
            }
            })
            })

            var c = ["third_layer_01", "third_layer_02", "third_layer_03"];
            c.forEach(function(item){
                var obj = document.getElementById("third_layer_script");
                var dtl = document.getElementById(item);

                dtl.addEventListener('click', function(){
            if (obj.style.visibility == 'hidden') {
                obj.style.visibility = 'visible';
                obj.style.opacity = '1';
                obj.style.height = '580px';
                obj.style.width = '100%';
            } else {
                obj.style.visibility = 'hidden';
                obj.style.opacity = '0';
                obj.style.height = '0';
                obj.style.width = '0';
            }
            })
            })
    </script>


</body>
</html>
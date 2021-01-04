<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String snum = request.getParameter("snum");
 String title = request.getParameter("title");
 String img_1 = request.getParameter("img_1");
 String img_2 = request.getParameter("img_2");
 String img_3 = request.getParameter("img_3");
 String place_1 = request.getParameter("place_1");
 String place_2 = request.getParameter("place_2");
 String place_3 = request.getParameter("place_3");
 String content_1 = request.getParameter("content_1");
 String content_2 = request.getParameter("content_2");
 String content_3 = request.getParameter("content_3");
 String content_4 = request.getParameter("content_4");
 String content_5 = request.getParameter("content_5");
 String content_6 = request.getParameter("content_6");
 String content_7 = request.getParameter("content_7");
 String map_lat_1 = request.getParameter("map_lat_1");
 String map_lon_1 = request.getParameter("map_lon_1");
 String map_lat_2 = request.getParameter("map_lat_2");
 String map_lon_2 = request.getParameter("map_lon_2");
 String map_lat_3 = request.getParameter("map_lat_3");
 String map_lon_3 = request.getParameter("map_lon_3");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<div class="sg_dp">

				 
				
            
                
                <div class="sg_tt">
                        <div class="sg_bt">
                            <h2 class=""><%=title %></h2></div>
                </div>
				
				
				<input type="hidden" class="latlng" value="<%=map_lat_1 %>" />
				<input type="hidden" class="latlng" value="<%=map_lon_1 %>" />
				<input type="hidden" class="latlng" value="<%=map_lat_2 %>" />
				<input type="hidden" class="latlng" value="<%=map_lon_2 %>" />
				<input type="hidden" class="latlng" value="<%=map_lat_3 %>" />
				<input type="hidden" class="latlng" value="<%=map_lon_3 %>" />
                <div id="map">
                    지도 표시 
                </div>

                <div class="sg_cn">
	                <a href = "#navi_1">
	                    <div class="sg_it" id="place_1">
	                        <img src="<%=img_1 %>">
	                        <span class="sg_it_n">
	                            <h2><%=place_1 %></h2>
	                        </span>
	                    </div>
                    </a>
                    
                    <a href = "#navi_2">
	                    <div class="sg_it" id="place_2"> 
	                        <img src="<%=img_2 %>">
	                        <span class="sg_it_n">
	                            <h2><%=place_2 %></h2>
	                        </span>
	                    </div>
                    </a>
                    
                    <a href = "#navi_3">
	                    <div class="sg_it" id="place_3">
	                        <img src="<%=img_3 %>">
	                        <span class="sg_it_n">
	                            <h2><%=place_3 %></h2>
	                        </span>
	                    </div>
                    </a>
                </div>

                <hr>
            </div>

            <div class="t_con">
                <p>
                    <%=content_1 %>
                </p><br>
                
                <div class="t_con_i" id="navi_1">
                    <img src="<%=img_1%>">
                </div>
                <h1><%=content_2 %></h1>
                <br>

                <p>
                    <%=content_3 %>
                </p>
                
                <br>
                
                <div class="t_con_i" id="navi_2">
                    <img src="<%=img_2%>">
                </div>
                <h1><%=content_4 %></h1>
                <br>

                <p>
                    <%=content_5 %>
                </p>
                

                <div class="t_con_i" id="navi_3">
                    <img src="<%=img_3%>">
                </div>
                <h1><%=content_6 %></h1>
                <br>

                <p>
                    <%=content_7 %>
                </p>

            </div>

</body>
</html>
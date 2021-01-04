<%@ page contentType="text/html; charset=EUC-KR" %>
<%@page import="ch15.BoardBean"%>
<%@page import="java.util.Vector"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<%	
	  request.setCharacterEncoding("EUC-KR");
	  
      int totalRecord=0; //��ü���ڵ��
	  int numPerPage=10; // �������� ���ڵ� �� 
	  int pagePerBlock=15; //���� �������� 
	  
	  int totalPage=0; //��ü ������ ��
	  int totalBlock=0;  //��ü ���� 

	  int nowPage=1; // ����������
	  int nowBlock=1;  //�����
	  
	  int start=0; //����� select ���۹�ȣ
	  int end=10; //���۹�ȣ�� ���� ������ select ����
	  
	  int listSize=0; //���� �о�� �Խù��� ��

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
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage);  //��ü��������
	nowBlock = (int)Math.ceil((double)nowPage/pagePerBlock); //����� ���
	  
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock);  //��ü�����
%>
<html>
<head>
<title>JSP Board</title>
<!-- <link href="style.css" rel="stylesheet" type="text/css"> -->
<script type="text/javascript">
	function list() {
		document.listFrm.action = "qna/qna.jsp";
		document.listFrm.submit();
	}
	
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
	
	function block(value){
		 document.readFrm.nowPage.value=<%=pagePerBlock%>*(value-1)+1;
		 document.readFrm.submit();
	} 
	
	function read(num){
		document.readFrm.num.value=num;
		document.readFrm.action="read.jsp";
		document.readFrm.submit();
	}
	
	function check() {
	     if (document.searchFrm.keyWord.value == "") {
	   alert("�˻�� �Է��ϼ���.");
	   document.searchFrm.keyWord.focus();
	   return;
	     }
	  document.searchFrm.submit();
	 }
</script>

        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link href="qna.css" rel="stylesheet" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://kit.fontawesome.com/9588789e92.js" crossorigin="anonymous"></script>






</head>
<body bgcolor="#FFFFCC">


<header class="" id="header">

    <!-- ��� ���� �ڽ�1 - ����(���Ÿ޴�+����Ʈ�ΰ�+��� ��κб���) -->
    <div class="hd_b1">
        
        <!-- ���Ÿ޴� -->
        <div class="hd_c1">
            <svg focusable="false" viewBox="0 0 24 24">
                <path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"></path>
            </svg>
        </div>

        <!-- ����Ʈ�ΰ� -->
        <div class="hd_c2">
            <a class="" href="https://g2project.github.io/main/">
                <p>Top Sights</p>
            </a>
        </div>
    </div>

    <div class="hd_b2">
        <!-- ��� ������ �׸���޴� -->
        <div class="hd_c3">
            <a class="" href="#">
                <svg class="gb_8e" focusable="false" viewBox="0 0 24 24">
                    <path d="M6,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM6,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM12,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM16,6c0,1.1 0.9,2 2,2s2,-0.9 2,-2 -0.9,-2 -2,-2 -2,0.9 -2,2zM12,8c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,14c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2zM18,20c1.1,0 2,-0.9 2,-2s-0.9,-2 -2,-2 -2,0.9 -2,2 0.9,2 2,2z"></path>
                </svg>
            </a>
        </div>

        <!-- ��� ������ ����� �̸��ΰ� -->
        <div class="hd_c4">
            <a class="" href="#">
                <img class="" src="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s32-c-mo" srcset="https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s32-c-mo 1x, https://lh3.googleusercontent.com/ogw/ADGmqu-VCEuI2yv0sSZS3OOMMnzH2FZd8hxmH7_aisAu=s64-c-mo 2x " alt="" aria-hidden="true" data-noaft="">
            </a>
        </div>
    </div>
    
</header>

<div id="center" align="center">

	<div class="qna_bn">
	    <img class="qna_bnimg" alt="" src="../img/qna.jpg">
	    <!-- ū���� ���Ʋ ���� ���ֵ� Ʋ -->
	    <div class="qna_bntxt">
	        <h1 class="">������ ���͵帱���?</h1>
	    </div>
 	</div>
	
	<!-- <div class="ct_ss">
	    <div class="ct_dv ct_sc">
	        �˻�â �Էºκ�
	        <i class="fas fa-search"></i>
	        <input type="text" value="������ ������ �ּ���." class="" autocomplete="off">
	        /�˻�â �Է�â Ʋ
	        �˻�â �ΰ�
	    </div>
     </div>    -->
	
	<div class="ct_wp">
		
					
				
				
					
				
		<table class="ct_fl">
			<tr>
				<td>
					<table class="ct_oo">
							<tr>
								<td>��ü : <span><%=totalRecord%></span>�� <span>|</span> ����������<span >
								<%=nowPage%>/<%=totalPage%></span></td>
							</tr>
					</table>
				</td>
				<td >
                    <form  name="searchFrm"  method="get" action="qna.jsp" >
						<table class = "ct_cd" cellpadding="4" cellspacing="0" >
					 		<tr>
					  			<td >
					   				<select name="keyField" size="1" >
					    				<option value="id"> �� ��</option>
					    				<option value="subject"> �� ��</option>
					    				<option value="content"> �� ��</option>
					   				</select>
					   				<input size="16" name="keyWord">
					   				<input type="button"  value="�˻�" onClick="javascript:check()">
					   				<input type="hidden" name="nowPage" value="1">
					  			</td>
					 		</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	<table class="bd_tb"  align="center" width="100%" cellpadding="3">
		<tr>
			<td colspan="2">
			<%
				  vlist = bMgr.getBoardList(keyField, keyWord, start, end);
				  listSize = vlist.size();//������ ȭ�鿡 ������ �Խù�����
				  if (vlist.isEmpty()) {
					out.println("��ϵ� �Խù��� �����ϴ�.");
				  } else {
			%>
				  <table  class = "tb_ct" width="100%" cellpadding="2" cellspacing="0">
						<tr>
							<th width="10%">��ȣ</th>
							<th width="10%">����</th>
							<th width="10%">�з�</th>
							<th width="40%">����</th>
							<th width="10%">��¥</th>
							<th width="10%">��ȸ��</th>
							<th width="10%">����</th>
						</tr>
					<!-- </th> -->
					<%
						  for (int i = 0;i<numPerPage; i++) {
							if (i == listSize) break;
							BoardBean bean = vlist.get(i);
							int num = bean.getNum();
							String id = bean.getId();
							String category = bean.getCategory();
							String title = bean.getTitle();
							String regdate = bean.getRegdate();
							String rstatus = bean.getRstatus();
							int depth = bean.getDepth();
							int count = bean.getCount();
					%>
					<tr>
						<td>
							<%=totalRecord-((nowPage-1)*numPerPage)-i%>
						</td>
						<td><%=id%></td>
						<td><%=category%></td>
						<td style="text-align: left;">
						<%
							  if(depth>0){
								for(int j=0;j<depth;j++){
									out.println("&nbsp;&nbsp;");
									}
								}
						%>
						  <a href="javascript:read('<%=num%>')"><%=title%></a>
						</td>
						<%-- <td align="center"><%=name%></td> --%>
						<td><%=regdate%></td>
						<td><%=count%></td>
						<td><%=rstatus %></td>
					</tr>
					<%		}//for%>
				</table> <%
 			}//if
 		%>
			</td>
		</tr>
		<tr>
			<td><br /><br /></td>
		</tr>
		<tr>
			<td class="bt_lf" style="padding-left:150px;">
			<!-- ����¡ �� �� ó�� Start--> 
			<%
   				  int pageStart = (nowBlock -1)*pagePerBlock + 1 ; //�ϴ� ������ ���۹�ȣ
   				  int pageEnd = ((pageStart + pagePerBlock ) <= totalPage) ?  (pageStart + pagePerBlock): totalPage+1; 
   				  //�ϴ� ������ ����ȣ
   				  if(totalPage !=0){
    			  	if (nowBlock > 1) {%>
    			  		<a href="javascript:block('<%=nowBlock-1%>')">prev...</a><%}%>&nbsp; 
    			  		<%for ( ; pageStart < pageEnd; pageStart++){%>
     			     	<a href="javascript:pageing('<%=pageStart %>')"> 
     					<%if(pageStart==nowPage) {%><font color="blue"> <%}%>
     					<div class="paging"><%=pageStart %></div> 
     					<%if(pageStart==nowPage) {%></font> <%}%></a> 
    					<%}//for%>&nbsp; 
    					<%if (totalBlock > nowBlock ) {%>
    					<a href="javascript:block('<%=nowBlock+1%>')">.....next</a>
    				<%}%>&nbsp;  
   				<%}%>
 				<!-- ����¡ �� �� ó�� End-->
				</td>
				<td class = "bt_rt">
					<div><a href="post.jsp">�۾���</a> </div>
					<div><a href="javascript:list()">ó������</a></div>
				</td>
			</tr>
		</table>
	<!-- <hr width="600"/> -->
	
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" value="true"> 
		<input type="hidden" name="nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num"> 
		<input type="hidden" name="nowPage" value="<%=nowPage%>"> 
		<input type="hidden" name="keyField" value="<%=keyField%>"> 
		<input type="hidden" name="keyWord" value="<%=keyWord%>">
	</form>
	
	</div>
	
	
	
	
	
	<!-- Ǫ�� -->
            <footer class="ft_wp">
                <!-- Ǫ�� ���� ù°�� ������ -->
                <div class="ft_lf">
                    <!-- Ǫ�� ���� ù°�� �׸�1 -->
                    <a class="" href="#" target="_blank">About</a>
                    <!-- Ǫ�� ���� ù°�� �׸�2 -->
                    <a class="" href="#" target="_blank">Privacy</a>
                    <!-- Ǫ�� ���� ù°�� �׸�3 -->
                    <a class="" href="#" target="_blank">Terms</a>
                    <!-- Ǫ�� ���� ù°�� �׸�4 -->
                    <a class="" href="#" target="_blank">Join user studies</a>
                    <!-- Ǫ�� ���� ù°�� �׸�5 -->
                    <span class="" >Feedback</span>
                    <!-- Ǫ�� ���� ù°�� �׸�6 -->
                    <a class="" href="#" target="_blank">Help Centre</a>
                </div>
                
                <!-- Ǫ�� ���� ��°�� -->
                <div class="ft_ls">
                    <p class="">Content written by Google unless otherwise noted</p>
                </div>
            </footer>
</div>






</body>
</html>
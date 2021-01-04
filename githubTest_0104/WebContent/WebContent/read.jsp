<%@ page contentType="text/html; charset=EUC-KR" %>
<%@page import="ch15.BoardBean"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<%
	  request.setCharacterEncoding("EUC-KR");
	  int num = Integer.parseInt(request.getParameter("num"));
	  String nowPage = request.getParameter("nowPage");
	  String keyField = request.getParameter("keyField");
	  String keyWord = request.getParameter("keyWord");
	  bMgr.upCount(num);//��ȸ�� ����
	  
	  
	  
	  
	  BoardBean bean = bMgr.getBoard(num);//�Խù� ��������
	  
	  
	  
	  
      String id = bean.getId();
      String category = bean.getCategory();
	  String title = bean.getTitle();
      String regdate = bean.getRegdate();
	  String content = bean.getContent();
	  String filename = bean.getFilename();
	  int filesize = bean.getFilesize();
	  String ip = bean.getIp();
	  int count = bean.getCount();
	  
	  
	  
	  
	  session.setAttribute("bean", bean);//�Խù��� ���ǿ� ����
%>
<html>
<head>
<title>JSP Board</title>
<link href="read.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function list(){
	    document.listFrm.submit();
	 } 
	
	function down(filename){
		 document.downFrm.filename.value=filename;
		 document.downFrm.submit();
	}
</script>
</head>
<body >
    <header class="" id="header">
        <!-- ��� ���� �ڽ�1 - ����(���Ÿ޴�+����Ʈ�ΰ�+��� ��κб���) -->
        <div class="hd_b1">
            
     
            <!-- ����Ʈ�ΰ� -->
            <div class="hd_c2">
                <a class="" href="index_2.jsp">
                    <p>JEJUALOT</p>
                </a>
            </div>
        </div>

        <div class="hd_b2">
            <!-- ��� ������ �α��� -->
           
            <div class="hd_c4">
                <a class="" href="signup/login.jsp">
           
                    �α���
                </a>
            </div>
            <!-- ��� ������ �������� �̹��� -->
            
            <div class="hd_c3">
                <a class="" href="#">
                    
                    <svg id="���̾�_1" data-name="���̾� 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 550 550"><defs><style>.cls-1,.cls-2{fill:none;stroke-miterlimit:10;stroke-width:33px;}.cls-1{stroke:#626567;}.cls-2{stroke:#626567;}</style></defs><circle class="cls-1" cx="246.5" cy="190.5" r="75.94"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><circle class="cls-2" cx="246.5" cy="246.5" r="230"/><path class="cls-1" d="M93.09,410.91s38.67-69.05,111-69.05c0,0,59.07,22.66,116,0,0,0,57.76-2.21,111,69.05C431,410.91,270.22,582.36,93.09,410.91Z" transform="translate(-15.55 -10.61)"/></svg>
   
                </a>
            </div>
        </div>

    </header>
    <div id="center">
        <div class="qna_bn">
            <img class="qna_bnimg" alt="" src="img/qna.jpg">
            <!-- ū���� ���Ʋ ���� ���ֵ� Ʋ -->
            <div class="qna_bntxt">
                <h1 class="">���б�</h1>
            </div>
         </div>
        
        <form name="" method="" action="">
        <table class="wt_wp">
            <tr>
                <td >
                <table class="wt_tb">
                
                <!-- sql = "insert tblHelp(name,category,title,content,ref,pos,depth,regdate,"
                            + "pass,count,ip,filename,filesize,rstatus)";
                    sql += "values(?, ?, ?, ?, 0, 0, now(), ?, 0, ?, ?, ?)"; -->
                
                
                    <tr>
                        <td >���̵�</td>
                        <td ><%=id%></td>
                    </tr>
                    <tr>
                        <td>��ϳ�¥</td>
                        <td><%=regdate%></td>
                    </tr>
                    <tr>
                        <td>�з�</td>
                        <td><%=category%></td>
                    </tr>
                    <tr>
                        <td>����</td>
                        <td><%=title%></td>
                    </tr>
                    <tr>
                        <td>÷������</td> 
                        <td><% if( filename !=null && !filename.equals("")) {%>
                            <a href="javascript:down('<%=filename%>')"><%=filename%></a>
                             &nbsp;&nbsp;<font color="blue">(<%=filesize%>KBytes)</font>  
                             <%} else{%> ��ϵ� ������ �����ϴ�.<%}%></td>
                    </tr>
                    <tr >
                        <td>����</td>
                        <td class="wt_tx"><%=content%></td>
                    </tr>
                    
                    <!-- <tr>
                        <td >����Ÿ��</td>
                        <td class="radioBox">HTML<input type="radio" name="contentType1" value="HTTP" >&nbsp;&nbsp;&nbsp;
                        TEXT<input type="radio" name="contentType1" value="TEXT" checked>
                        </td>
                    </tr> -->
                    <tr>
                        <!-- <td colspan="2"><hr/></td> -->
                    </tr>
                    <tr>
                        <!-- <td colspan="2" class="wt_bb">
                            <input type="submit" value="���">
                            <input type="reset" value="�ٽþ���">
                            <input type="button" value="����Ʈ" onClick="javascript:location.href='list.jsp'">
                        </td> -->
                        <td colspan="2" class="wt_bb"> 
                            
                            <div><a href="javascript:list()" >����Ʈ</a></div>
                            <div><a href="update.jsp?nowPage=<%=nowPage%>&num=<%=num%>" >�� ��</a></div>
                            <div><a href="reply.jsp?nowPage=<%=nowPage%>" >�� ��</a></div>
                            <div><a href="delete.jsp?nowPage=<%=nowPage%>&num=<%=num%>">�� ��</a></div>
                             </td>
                    </tr>
                </table>
                </td>
            </tr>
        </table>
        <input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
        </form>
        <form name="downFrm" action="download.jsp" method="post">
            <input type="hidden" name="filename">
        </form>
        
        <form name="listFrm" method="post" action="qna.jsp">
            <input type="hidden" name="nowPage" value="<%=nowPage%>">
            <%if(!(keyWord==null || keyWord.equals(""))){ %>
            <input type="hidden" name="keyField" value="<%=keyField%>">
            <input type="hidden" name="keyWord" value="<%=keyWord%>">
            <%}%>
        </form>
    </div>
</body>
</html>
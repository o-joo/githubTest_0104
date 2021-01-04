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
    <div id="center">
        <div class="qna_bn">
            <img class="qna_bnimg" alt="" src="../img/qna.jpg">
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
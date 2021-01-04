<%@ page contentType="text/html; charset=EUC-KR"%>
<%@page import="ch15.BoardBean"%>
<jsp:useBean id="bMgr" class="ch15.BoardMgr" />
<html>
<head>
<title>JSP Board</title>
<link href="delete.css" rel="stylesheet" type="text/css">
<%
	request.setCharacterEncoding("EUC-KR");
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	if (request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean) session.getAttribute("bean");
		String dbPass = bean.getPass();
		if (inPass.equals(dbPass)) {
			bMgr.deleteBoard(num);
			String url = "qna.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
		} else {
%>
<script type="text/javascript">
	alert("�Է��Ͻ� ��й�ȣ�� �ƴմϴ�.");
	history.back();
</script>
<%}
	} else {
%>
<script type="text/javascript">
	function check() {
		if (document.delFrm.pass.value == "") {
			alert("�н����带 �Է��ϼ���.");
			document.delFrm.pass.focus();
			return false;
		}
		document.delFrm.submit();
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
                <h1 class="">�� ����</h1>
            </div>
         </div>
         <table class="tt_lb">
			<tr>
				<td class="intro">
					������� ��й�ȣ�� �Է����ּ���.
				</td>
			</tr>
		</table>
        <form name="delFrm" method="post" action="delete.jsp">
	        <table class="wt_wp">
	            <tr>
	                <td >
		                <table class="wt_tb">
		                    <tr>
		                        <td>��й�ȣ</td>
		                        <td><input type="password" name="pass" size="17" maxlength="15"></td>
		                    </tr>
		                    <tr>
		                        <td></td>
		                        <td></td>
		                    </tr>
		                    <tr>
		                        <td colspan="2" class="wt_bb">
		                           <input type="button" value="�����Ϸ�" onClick="check()"> 
									<input type="reset" value="�ٽþ���">
									<input type="button" value="�ڷ�" onClick="history.go(-1)">
		                        </td>
		                    </tr>
		                </table>
	                </td>
	            </tr>
	        </table>
	        
	        <input type="hidden" name="nowPage" value="<%=nowPage%>"> 
			<input type="hidden" name="num" value="<%=num%>">
        </form>
    </div>
    <%}%>
</body>
</html>
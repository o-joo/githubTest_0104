<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	  request.setCharacterEncoding("EUC-KR");
	  String id = request.getParameter("id");
	  String prevsite = (String)session.getAttribute("prevsite");
%>
<html>
<head>
<title>�α���</title>
<link rel="stylesheet" href="login.css">
<script type="text/javascript">
	function CheckEn() {
		if (document.findidFrm.email.value == "") {
			alert("�̸����� �Է��� �ּ���.");
			document.findidFrm.email.focus();
			return;
		}
		if (document.findidFrm.name.value == "") {
			alert("�̸��� �Է��� �ּ���.");
			document.findidFrm.email.focus();
			return;
		}
		document.findidFrm.submit();
	}
</script>
</head>
<body>
	<form name="findidFrm" method="post" action="findIdProc.jsp">
	    <div class="box" align="center">
	    <a href="../index_2.jsp" style="text-decoration:none";>
	      <div class="logo">
	        <span style="color: #4285F4">J</span>
	        <span style="color: #EA4335">E</span>
	        <span style="color: #FBBC05">J</span>
	        <span style="color: #34A853">U</span>
	        <span style="color: #4285F4">A</span>
	        <span style="color: #EA4335">L</span>
	        <span style="color: #FBBC05">O</span>
	        <span style="color: #34A853">T</span>
	      </div>
	      </a>
	      <h2>���̵� ã��</h2>
	      <p>�̸��ϰ� �̸��� �Է��ϼ���</p>
	      
	      <br>
	         <input type="hidden" value ="<%=prevsite%>"/>
	        <div class="inputBox">
	          <input name="email" required onkeyup="this.setAttribute('value', this.value);"  value="">
	          <label>�̸���</label>
	        </div>
	        <div class="inputBox">
	          <!-- <input type="text" name="text" required onkeyup="this.setAttribute('value', this.value);" value=""> -->
	          <input name="name" required value="">
	          <label>�̸�</label>
	        </div>

	    
	        <div class="bottomLine">
	       
	          <input type="button" id="lgbt" value="Ȯ��" onclick="CheckEn()">&nbsp;
	        
	        </div>
        
      </form>
    </div>
</body>
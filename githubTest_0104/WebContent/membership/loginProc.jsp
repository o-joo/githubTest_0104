<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
   request.setCharacterEncoding("euc-kr");
   String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");
   String url = "login.jsp";
   String msg = "�α��ο� ���� �Ͽ����ϴ�.";
   
   boolean result = mMgr.loginMember(id,pwd);
   if(result){
      session.setAttribute("idKey", id);
      msg = "�α��ο� �����Ͽ����ϴ�.";
   }
%>
<script>
   alert("<%=msg%>");
   location.href="<%=url%>";
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Vector, ch14.FindIdBean"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />

<%
   request.setCharacterEncoding("euc-kr");
   String email = request.getParameter("email");
   String name = request.getParameter("name");
   String url = "login.jsp";
   String msg = "�̸��� �Ǵ� �̸��� �ٸ��ϴ�";
   
   Vector<FindIdBean> flist = null;
   
   flist = mMgr.findId(email,name);
  
   System.out.print(flist.size());
   
   FindIdBean bean = flist.get(0);
   
   String id = bean.getId(); 
   
   if(id != null){
   msg = "���̵��" + id + "�Դϴ�";

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
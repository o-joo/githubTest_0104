<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
    String id = "";
	String pwd = "";
	if(request.getParameter("id") != null)  
	   id  = request.getParameter("id");
	if(request.getParameter("pwd") != null) 
	   pwd  = request.getParameter("pwd");
	if(mMgr.loginMember(id, pwd)){
		session.setAttribute("idKey",id);
%>
	<script>
	alert("�α��� �Ǿ����ϴ�");
    location.href="../qna/qna.jsp";
	</script>
<%	}else{ %>
	<script>
	  alert("�α��� ���� �ʾҽ��ϴ�.");
      location.href="login.jsp";
	</script>
<%}%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String id = request.getParameter("id");
String email = request.getParameter("email");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String pwd = request.getParameter("pwd");
String zipcode = request.getParameter("zipcode");
String address = request.getParameter("address");
String phone = request.getParameter("phone");
String birthday = request.getParameter("birthday");
String hobby = request.getParameter("hobby");
String job = request.getParameter("job");
String regdate = request.getParameter("regdate");
String img = request.getParameter("img");


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

										<tr>
											<td><input type="checkbox" name="sss" value="<%=id %>"/></td>
                                            <td><%=id %></td>
                                            <td><%=email %></td>
                                            <td><%=name %></td>
                                            <td><%=gender %></td>
                                            <td><%=pwd %></td>
                                            <td><%=zipcode %></td>
                                            <td><%=address%></td>
                                            <td><%=phone %></td>
                                            <td><%=birthday %></td>
                                            <td><%=hobby %></td>
                                            <td><%=job %></td>
                                            <td><%=regdate %></td>
                                            <td class="col-xs-8"><%=img %></td>
                                        </tr>

</body>
</html>
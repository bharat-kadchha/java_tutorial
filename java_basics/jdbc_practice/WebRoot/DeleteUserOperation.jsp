<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.user.UserManagment"%>
<%@page import="com.user.Connection_config;"%>
<jsp:useBean id="user" class="com.user.UserManagment" />
<jsp:setProperty property="*" name="user" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type"
			content="text/html; charset=ISO-8859-1">
		<title>Delete User</title>
	</head>
	<body>

		<%
			String email = request.getParameter("email");
			Connection_config.deleteUser(email);
			String[] emailSplit = email.split("@");
			System.out.println(emailSplit[0]);
		%>

		<jsp:forward page="DeleteSuccess.jsp">
			<jsp:param name="email" value="${emailSplit[0]}" />
		</jsp:forward>

	</body>
</html>
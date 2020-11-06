<%@page import="com.mmit.course.models.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course</title>
<jsp:include page="common/layout.jsp"></jsp:include>
</head>
<body>
	<div class="container">
	<%
		Course c=(Course)request.getAttribute("courses");
	%>
	<p>Name:<%=c.getName() %></p>
	<p>Level:<%=c.getLevel() %></p>
	<p>Name:<%=c.getFees() %></p>
	</div>
</body>
</html>
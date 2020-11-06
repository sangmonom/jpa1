<%@page import="com.mmit.course.models.Course"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Courses</title>
<jsp:include page="common/layout.jsp"></jsp:include>
</head>
<body>
	<div class=container>
		<h3>All Courses</h3>
		<table class="table">
			<tr>
				<th>Name</th>
				<th>Level</th>
				<th>Fees</th>
			</tr>
			<%
			List <Course> list =(ArrayList<Course>)session.getAttribute("courses");
			for(Course c:list){
			%>
				<tr>
					<td><%= c.getName()%></td>
					<td><%=c.getLevel() %></td>
					<td><%=c.getFees() %></td>
				</tr>
			<%
			}
			%>
		</table>
		
	</div>
</body>
</html>
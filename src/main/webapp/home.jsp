<%@page import="com.mmit.models.Counter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scopes</title>
</head>
<body>
	<h3>JSP Scopes</h3>
	<table>
		<tr>
			<td>Application Scope</td>
			<td>
				<%
				Counter c1=(Counter)application.getAttribute("counter");
				out.print((c1==null)? "0" : c1.getCount());
				%>
			</td>
		</tr>
		<tr>
			<td>Session Scope</td>
			<td>
				<%
				Counter c2=(Counter)session.getAttribute("counter");
				out.print((c2==null)? "0" : c2.getCount());
				%>
			</td>
		</tr>
		<tr>
			<td>Request Scope</td>
			<td>
				<%
				Counter c3=(Counter)request.getAttribute("counter");
				out.print((c3==null)? "0" : c3.getCount());
				%>
			</td>
		</tr>
		<tr>
			<td></td>
			<td><a href="scopes">Scopes</a></td>
		</tr>
	</table>
</body>
</html>
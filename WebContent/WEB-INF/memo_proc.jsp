<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% String memo=request.getParameter("memo01");
%>
<body>
<% out.println(java.time.LocalDateTime.now()); %>
<%=memo %> <input type="button" value="X"></input> <br>
</body>
</html>
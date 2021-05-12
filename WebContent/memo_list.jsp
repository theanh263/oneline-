<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <form action="memo01.html">
       <input type="submit" value="Home">
  </form>
  <%
     String url="jdbc:mysql://localhost/world?characterEncoding=UTF-8&serverTimesone=UTC";
     String user="root";
     String passwd="Anh@26399";
     Connection con =null;
      String sql="select*from oneline";
     PreparedStatement pstmt=null;
  
     Class.forName("com.mysql.cj.jdbc.Driver");
     con=DriverManager.getConnection(url, user, passwd);

     pstmt=con.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     while(rs.next()) {
     	int no=rs.getInt(1);
     	String memo=rs.getString("memo");
     	String wdate=rs.getString(3);
     	
     	out.println("입력번호"+ no + ":" + memo + " :(" + wdate + ")<br>");
     }
     rs.close();
     pstmt.close();
     con.close();
     out.println("DB 연결 성공");   
   %>
</body>
</html>
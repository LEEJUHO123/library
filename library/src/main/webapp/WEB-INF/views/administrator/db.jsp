<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page trimDirectiveWhitespaces="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

   Connection con = null;
   PreparedStatement pstmt = null;
   ResultSet rs = null;
   
   String sql = "select * form rental"; 
   
   
    JSONArray data = new JSONArray();
    
    JSONArray d = new JSONArray();
       d.add("RENTAL");
       d.add("RENTAL");    
    data.add(d);
    
   try{      
      con = ConnectionProvider.getConnection();
      pstmt = con.prepareStatement(sql);
      rs = pstmt.executeQuery(); 
      
      while( rs.next() ){
         String dname = rs.getString("RENTAL");
         double sum_sal  = rs.getDouble("RENTAL");
         
         d = new JSONArray();
             d.add( dname ); 
             d.add(sum_sal); 
          data.add( d );
         
      }          

   }catch(Exception e){
      e.printStackTrace();
   }finally{
      JdbcUtil.close(rs);
      JdbcUtil.close(pstmt);
      JdbcUtil.close(con);
   }
%>
<%=  data %>
</body>
</html>
<%--
    Document   : delete
    Created on : Jul 31, 2018, 2:43:17 PM
    Author     : kiit1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt=con.createStatement();
String id=request.getParameter("id");
stmt.executeUpdate("delete from doctor where docid='"+id+"'");
response.sendRedirect("viewdoctorrecords.jsp");
%>
    </body>
</html>

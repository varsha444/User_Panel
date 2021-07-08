<%--
    Document   : get
    Created on : Jul 28, 2018, 12:41:55 PM
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
        
        String city=request.getParameter("t1").toString();
        String sub=request.getParameter("t2").toString();

        int i=stmt.executeUpdate("insert into user_booking(user_name,contactno,emailid,docid,sid,aid,opentime,closetime,opendays) VALUES('"+name+"','"+contact+"','"+email+"','"+docid+"','"+sid+"','"+aid+"','"+opt+"','"+clt+"','"+days+"') ");


               if(i>0)
            {
            response.sendRedirect("viewuserrecords.jsp");
            }
        else
            {
            out.println("Doctor details not inserted");

            }
        %>

    </body>
</html>

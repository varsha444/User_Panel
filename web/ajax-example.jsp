<%-- 
    Document   : ajax-example
    Created on : Aug 31, 2018, 3:48:53 PM
    Author     : kiit1
--%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String name=request.getParameter("pid");
                    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt2=con2.createStatement();
        ResultSet rs2=stmt2.executeQuery("select * from time_slots where docid='"+name+"'");
       String str="<table>";
str=str+"<tr><td>Slot id</td><td>Doctor Id</td><td>Slot Start Time</td><td>Slot End Time</td></tr>";

       while(rs2.next())
        {
str=str+"<tr><td>"+rs2.getString(1)+"</td><td>"+rs2.getString(2)+"</td><td>"+rs2.getString(3)+"</td><td>"+rs2.getString(4)+"</td></tr>";

}        
       out.println(str);
%>
    </body>
</html>

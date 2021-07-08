<%-- 
    Document   : getarea
    Created on : Sep 18, 2018, 12:37:40 PM
    Author     : varsha sharma
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
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctoappnew","root","");
        Statement stmt=con.createStatement();
        String email=request.getParameter("Your Email").toString();
        String pass=request.getParameter("Password").toString();
        out.println("<h1>signemail : "+email+"</h1>");
         out.println("<h1>signpass : "+pass+"</h1>");
  
        int i=stmt.executeUpdate("insert into signin(signemail,signpass) VALUES('"+email+"','"+pass+"') ");


               if(i>0)
            {
            response.sendRedirect("signin.jsp");
            }
        else
            {
            out.println(" try again");

            }
        %>

    
    </body>
</html>

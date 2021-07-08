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
        String name=request.getParameter("t1").toString();
        String email=request.getParameter("t2").toString();
        String mobile=request.getParameter("t3").toString();
        String pass=request.getParameter("t4").toString();
          String confirmpass=request.getParameter("t5").toString();
        
        int i=stmt.executeUpdate("insert into signup(yourname,youremail,mobile,password,confirmpassword) VALUES('"+name+"','"+email+"','"+mobile+"','"+pass+"','"+confirmpass+"') ");


               if(i>0)
            {
            response.sendRedirect("signup.jsp");
            }
        else
            {
            out.println(" try again");

            }
        %>

    
    </body>
</html>

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
       String uname=request.getParameter("t1").toString();
        String ucontact=request.getParameter("t2").toString();
        String email=request.getParameter("t3").toString();
       
        String docname=request.getParameter("t4").toString();
        String sub=request.getParameter("t5").toString();
        String area=request.getParameter("t6").toString();
        String slot=request.getParameter("t7").toString();
        String days=request.getParameter("t8").toString();
       
        

        int i=stmt.executeUpdate("insert into bookappointment(username,usercontactno,emailid,subcategoryname,areaname,timeslot,day,doctorname) VALUES('"+uname+"','"+ucontact+"','"+email+"','"+sub+"','"+area+"','"+slot+"','"+days+"','"+docname+"') ");


               if(i>0)
            {
                 
           response.sendRedirect("index2.jsp");
            }
        else
            {
            out.println("User not registered");

            }
        %>

    </body>
</html>

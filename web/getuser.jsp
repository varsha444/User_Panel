<%--
    Document   : get
    Created on : Jul 28, 2018, 12:41:55 PM
    Author     : kiit1
--%>

<%@page import="java.util.Properties"%>
<%@page import="java.*" %>
<%@page import="javax.*" %>
<%@page import="javax.mail.Session"%>                                                                                                       
<%@page import="javax.mail.Authenticator"%>                                                                                                 
<%@page import="javax.mail.PasswordAuthentication"%>                                                                                        
<%@page import="javax.mail.Message"%>                                                                                                       
<%@page import="javax.mail.internet.MimeMessage"%>                                                                                          
<%@page import="javax.mail.internet.InternetAddress"%>                                                                                      
<%@page import="javax.mail.Transport"%>  
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
        String docname=request.getParameter("t3");
        String clin_hosp=request.getParameter("t0");
        String doc_contact=request.getParameter("t4");
        String doc_email=request.getParameter("t5");
        String doc_qual=request.getParameter("t6");
        String user_name=request.getParameter("t9");
        
        String user_contact=request.getParameter("t10");
        String user_email=request.getParameter("t11");
        String fees=request.getParameter("t8");
         String age=request.getParameter("t12");
        String date=request.getParameter("t1");
        String medical=request.getParameter("t13");
        String booking_time=request.getParameter("t2");
        

        int i=stmt.executeUpdate("INSERT INTO user_book(docname,clinic_hosp,doctor_contact,doctor_email,doctor_qualification,user_name,user_contact,user_email,user_age,fees_to_pay,booking_day,medical_problem,booking_time) VALUES('"+docname+"','"+clin_hosp+"','"+doc_contact+"','"+doc_email+"','"+doc_qual+"','"+user_name+"','"+user_contact+"','"+user_email+"','"+age+"','"+fees+"','"+date+"','"+medical+"','"+booking_time+"') ");


               if(i>0)
            {
            response.sendRedirect("invoice.jsp");
            }
        else
            {
            out.println("User not registerd");

            }
        %>

    </body>
</html>

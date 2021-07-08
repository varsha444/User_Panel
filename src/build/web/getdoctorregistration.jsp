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
       String sub=request.getParameter("t1").toString();
        String spec=request.getParameter("t2").toString();
        String clinhosp=request.getParameter("t3").toString();
       
        String name=request.getParameter("t4").toString();
        String area=request.getParameter("t5").toString();
        String qual=request.getParameter("t6").toString();
        String expe=request.getParameter("t7").toString();
        String open=request.getParameter("t8").toString();
        String close=request.getParameter("t9").toString();
        String day=request.getParameter("t10").toString();
        String cont =request.getParameter("t11").toString();
        String email=request.getParameter("t12").toString();
        String webs=request.getParameter("t13").toString();
         String consult=request.getParameter("t14").toString();



        int i=stmt.executeUpdate("insert into doctor(subcategoryname,specialist,clinc_hospital,doctorname,areaname,qulification,experience,opentime,closetime,days,contactno,emailid,website,consultingfees) VALUES('"+sub+"','"+spec+"','"+clinhosp+"','"+name+"','"+area+"','"+qual+"','"+expe+"','"+open+"','"+close+"','"+day+"','"+cont+"','"+email+"','"+webs+"','"+consult+"') ");


               if(i>0)
            {
                 out.println("<script type='text/javascript'>alert('bookappointment successfull');window.location.href='doctorregistration.jsp';</script>");
           // response.sendRedirect("doctorregistration.jsp");
            }
        else
            {
            out.println("Doctor details not inserted");

            }
        %>

    </body>
</html>

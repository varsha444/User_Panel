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
       String sub=request.getParameter("txtsub").toString();
        String spec=request.getParameter("txtspec").toString();
        String clinhosp=request.getParameter("txtclinc").toString();
       
        String name=request.getParameter("txtdoc").toString();
        String area=request.getParameter("txtarea").toString();
        String qual=request.getParameter("txtqul").toString();
        String expe=request.getParameter("txtexp").toString();
        String open=request.getParameter("txtopen").toString();
        String close=request.getParameter("txtclose").toString();
        String day=request.getParameter("txtday").toString();
        String cont =request.getParameter("txtcon").toString();
        String email=request.getParameter("txtemail").toString();
        String webs=request.getParameter("txtweb").toString();
         String consult=request.getParameter("txtconsfee").toString();



        int i=stmt.executeUpdate("insert into doctor(subcategoryname,specialist,clinc_hospital,doctorname,areaname,qulification,experience,opentime,closetime,days,contactno,emailid,website,consultingfees) VALUES('"+sub+"','"+spec+"','"+clinhosp+"','"+name+"','"+area+"','"+qual+"','"+expe+"','"+open+"','"+close+"','"+day+"','"+cont+"','"+email+"','"+webs+"','"+consult+"') ");


               if(i>0)
            {
            response.sendRedirect("index.jsp");
            }
        else
            {
            out.println("Doctor details not inserted");

            }
        %>

    </body>
</html>

<%-- 
    Document   : getbatchsheet
    Created on : 18 Jul, 2018, 4:42:46 PM
    Author     : HP
--%>
<%@page import="java.text.ParseException"%>
<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import = "java.sql.*" %>
<%@page import = "javax.sql.*" %>
<%@page  import="java.text.SimpleDateFormat" %>
<%@page  import="java.util.Date" %>
<%@page  import="java.util.*" %>
<%@page  import="java.util.Calendar" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

              <% Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/preptest","root","");
        Statement stmt=con.createStatement(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       int i=Integer.valueOf(request.getParameter("hf"));
       int dur=Integer.valueOf(request.getParameter("dur"));
                 
       String bcode=request.getParameter("bcode").toString();
       //String sname=request.getParameter("sname").toString();
       String sdate=request.getParameter("sdate").toString();
       String edate=request.getParameter("edate").toString();
       String ctest=request.getParameter("ctest").toString();      
       String cname=request.getParameter("cname").toString();
       int nz = Integer.parseInt(ctest);
       //out.println("cname : "+sname+"<br>");
       int c=1,chk=0,counter=1;
       
        while(c<i)
        {
             try
             {
            if(request.getParameter("sname"+c).equals(null))
            {}
            else
            {
                String name=request.getParameter("sname"+c).toString();
                stmt.execute("insert into  batch_allotment (`bcode`, `course`, `Student`) values('"+bcode+"','"+cname+"','"+name+"')");
                stmt.executeUpdate("update assign_course_code set status='Alloted' where student_name='"+name+"'");
             chk=1;
            }
        
             }
             catch(Exception e5)
             {
          //   out.println(e5);
             }
        c++;
        }
        if(chk==1)
        {
        out.println("<script type='text/javascript'>alert('Batch Alloted');window.location='getbatch.jsp';</script>");
        }
        String oldDate = sdate;  
	String tempdate = edate;
	//out.println("Date before Addition: "+oldDate);	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Calendar c2 = Calendar.getInstance();	
        Calendar c3 = Calendar.getInstance();	
        
	try{	   
	   c2.setTime(sdf.parse(oldDate));
           c3.setTime(sdf.parse(tempdate));
           
	}catch(ParseException e){
		e.printStackTrace();
	 }	   	
	int x=1,cnt=1;
        float f1=0.1f;
            String ch="Module"+x;
        
        stmt.execute("insert into  batch_sheet(bcode,SESSION,bmod,bsdate,badate,brdate) VALUES('"+bcode+"','"+f1+"','"+ch+"','"+sdate+"','"+edate+"','"+edate+"')");
        int z=1;
	while(x>0)
	{
            c2.add(Calendar.DAY_OF_MONTH, 1);  	
            String newDate = sdf.format(c2.getTime()); 
        
            if(newDate.equals(tempdate))
            {
                break;
            }
            f1=f1+1;
             ch="Module"+x;
             if(nz>0||x>0)
             {
             if(counter==dur)
             {
                 String ctest1="Cycle Test"+z;
                 
                stmt.execute("insert into  batch_sheet(bcode,SESSION, bmod, bsdate,badate,brdate) VALUES('"+bcode+"','"+f1+"','"+ctest1+"','"+newDate+"','"+edate+"','"+edate+"')");
            nz--;
            counter=0;
            z++;
             }
             else
             {
                   stmt.execute("insert into  batch_sheet(bcode,SESSION, bmod, bsdate,badate,brdate) VALUES('"+bcode+"','"+f1+"','"+ch+"','"+newDate+"','"+edate+"','"+edate+"')");
             
             }
             }
              
             counter++;
            x++;	
	}
        int count=1;
        
	%>
    </body>
</html>

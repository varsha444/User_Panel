<%@ page language="java" contentType="text/html; charset=ISO-8859-1"                                                                        
    pageEncoding="ISO-8859-1"%>                                                                                                             
<!DOCTYPE html>                                    
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
<html>                                                                                                                                      
<head>                                                                                                                                      
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">                                                                    
<title>User Registration</title>
<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
<meta content='all-language' http-equiv='Content-Language'/>
<meta content='Global' name='Distribution'/>
<meta content='India' name='geo.country'/>
<meta content='Solapur' name='geo.placename'/>
<meta content='Shubham Shah' name='author'/>
<meta content='document' name='resource-type'/>
<meta content='en' name='language'/>
<meta content='IN' name='country'/>
<meta content='all' name='audience'/>
<meta content='index,follow,snipet' name='googlebot'/>
  
                                                                                                               
</head>                                                                                                                                     
<body>                                                                                                                                      
<%                                                                                                                                          
String smtpServer = null;                                                                                                                   
String smtpPort = null;                                                                                                                     
final String authAddress = "ankit.chowdhury94@gmail.com"; //Sender Email ID
final String authPassword = "P@SSW0RD";     //Sender Password                                                                
String subject = null;                                                                                                                      
String email = null;                                                                                                                        
String v_company=request.getParameter("p_company");
String v_fname =request.getParameter("p_fname");
String v_mname =request.getParameter("p_mname");
String v_lname =request.getParameter("p_lname");
String v_dept =request.getParameter("p_dept");
String v_address =request.getParameter("p_address");
String v_city =request.getParameter("p_city");
String v_zipcode =request.getParameter("p_zipcode");
String v_email =request.getParameter("p_email");
String v_phone=request.getParameter("p_phone");
String v_extension=request.getParameter("p_extension");
String v_mobile = request.getParameter("p_mobile");
String message = null;
String send = request.getParameter("send");                                                                                                 
String siteName=request.getServerName();                                                                                                    
siteName=siteName.replaceAll("www.","");                                                                                                    
if(send!=null){
        smtpServer = "smpt.yourdomain.com"; // Enter SMTP ADDRESS
        smtpPort = "PORT";     //Enter SMTP PORT
        subject = "New User Registration" ;//Subject       
        email = "ankit.chowdhury94@gmail.com";   //Recepient Address
       
        message = "\n Company      :"+v_company +"\n First Name   :"+v_fname +"\n Middle Name  :"+v_mname +"\n Last Name    :"+v_lname+"\n Department   : "+v_dept+"\n Address      :"+v_address +"\n City         :"+v_city+"\n Zip Code     :"+v_zipcode + "\n Email Id     :"+v_email +"\n Phone No     :"+v_phone +"\n Extension    :"+v_extension + "\n Mobile No    :"+v_mobile ; 
  
        //request.getParameter("message");  //Mail Body     
        try{                                             
                Properties props = new Properties();     
                props.put("mail.smtp.host", smtpServer);
                props.put("mail.smtp.port", smtpPort);   
            props.put("mail.smtp.auth", "true");         
                                                         
            // create some properties and get the default Session
            Session sessionMail = Session.getInstance(props, new Authenticator() {
                 public PasswordAuthentication getPasswordAuthentication() {     
                         return new PasswordAuthentication(authAddress, authPassword);
                 }                                                                   
                });                                                                  
                                                                                     
            sessionMail.setDebug(true);
            // create a message
            Message msg = new MimeMessage(sessionMail);
            // set the from and to address
            InternetAddress addressFrom = new InternetAddress(authAddress);
            msg.setFrom(addressFrom);
            InternetAddress[] addressTo = new InternetAddress[1];
            addressTo[0] = new InternetAddress(email);
            msg.setRecipients(Message.RecipientType.TO, addressTo);
            // Optional : You can also set your custom headers in the Email if you Want
            msg.addHeader("site", siteName);
            // Setting the Subject and Content Type
            msg.setSubject(subject);
            msg.setContent(message, "text/html");
            Transport.send(msg);
        }catch(Exception e){
                e.printStackTrace(response.getWriter());
        }
}
%>

</body>
</html>
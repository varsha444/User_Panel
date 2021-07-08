<%@page import="com.oreilly.servlet.MultipartRequest" %>  
<%  
MultipartRequest m = new MultipartRequest(request, "F:/image");  
out.print("successfully uploaded");  
  
%>  
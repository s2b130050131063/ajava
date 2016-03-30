<%@ page import="java.util.*" %>
<html>
<head><title>Date and Time</title></head>
<body>
	<h4>Enroll no: 130050131063</h4>
	<h2>Request Information</h2>
	<% 
		out.println("Method: <b>"+request.getMethod()+"</b></br>"); 
		out.println("RequestURI: <b>"+request.getRequestURI()+"</b></br>"); 
		out.println("Protocol: <b>"+request.getProtocol()+"</b></br>"); 
		out.println("PathInfo: <b>"+request.getPathInfo()+"</b></br>"); 
		out.println("PathTranslated: <b>"+request.getPathTranslated()+"</b></br>"); 
		out.println("QueryString: <b>"+request.getQueryString()+"</b></br>"); 
		out.println("ContentLength: <b>"+request.getContentLength()+"</b></br>"); 
		out.println("ContentType: <b>"+request.getContentType()+"</b></br>"); 
		out.println("ServerName: <b>"+request.getServerName()+"</b></br>"); 
		out.println("ServerPort: <b>"+request.getServerPort()+"</b></br>"); 
		out.println("RemoteUser: <b>"+request.getRemoteUser()+"</b></br>"); 
		out.println("RemoteAddr: <b>"+request.getRemoteAddr()+"</b></br>"); 
		out.println("RemoteHost: <b>"+request.getRemoteHost()+"</b></br>"); 
		out.println("AuthType: <b>"+request.getAuthType()+"</b></br>"); 
		
	%>
</body>
</html>
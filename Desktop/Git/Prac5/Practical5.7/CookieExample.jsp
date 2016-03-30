<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
	<head><title>Cookie Example</title></head>
	<body>
		<h4>Enroll no: 130050131063</h4>
		
		<% 
		 	Cookie cookie = null;
		   	Cookie[] cookies = null;
		   	
		   	cookies = request.getCookies();
		   	if( cookies != null ){
			   	for(int i=1; i< cookies.length; i++){
			   		cookie = cookies[i];
			   		out.println("Cookie Value Number: "+(i-1)+" and value "+cookie.getValue()+"<br/>");
			   	}
			   	out.println("New Symbol: "+request.getParameter("cookie_val")+". Length of cookie is " + (cookies.length-1)+"<br/>");
		   	}else{
		   		out.println("Length of cookie is 0");
		   	}
		%>
		
		<form action="CookieExample.jsp" method="POST" name="cookieForm">
			Get Cookie Value<input type="text" name="cookie_val" value=""/>
			<br/><input type="submit" name="Submit" value="submit"/>
		</form>
		
		<c:if test="${not empty param.cookie_val}">
			<%
			   	String cookieValue = request.getParameter("cookie_val");
				cookie = new Cookie(cookieValue, cookieValue);
				cookie.setMaxAge(365*24*60*60);
				if(cookies.length >10)
				{
				      int start=cookies.length-10;
				      cookies[start].setMaxAge(0);
				      response.addCookie(cookies[start]);
				} 
				response.addCookie(cookie);
			%>
		</c:if>
		
	</body>
</html>
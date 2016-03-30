<%@ page errorPage="Error.jsp" %>  
<%  
      
    String num1=request.getParameter("n1");  
    String num2=request.getParameter("n2");  
      
    int a=10;  
    int b=0;  
    int c=a/b;  
    out.print("division of numbers is: "+c);  
      
%>  
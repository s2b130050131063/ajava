import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Authenticated extends HttpServlet{
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		String uname = request.getParameter("uname");
		
		PrintWriter out = response.getWriter();
		out.println("<b>"+uname+"</b> you are an authenticated user.");
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void destroy(){
		
	}
  
}
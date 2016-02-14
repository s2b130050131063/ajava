import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class CheckDetails extends HttpServlet{
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		if(uname.equals("Darshan")){
			if(password.equals("pass")){
				response.sendRedirect("Authenticated?uname=Darshan");
			}else{
				response.sendRedirect("loginForm.htm");
			}
		}else{
			response.sendRedirect("loginForm.htm");
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void destroy(){
		
	}
  
}
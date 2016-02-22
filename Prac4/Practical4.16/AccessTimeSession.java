import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.Date;

public class AccessTimeSession extends HttpServlet{
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html");
		
		HttpSession session = request.getSession(false);
		if(session == null){
			session = request.getSession();
		}
		
		Date createTime = new Date(session.getCreationTime());
		Date lastAccessTime = new Date(session.getLastAccessedTime());
		Date currentAccessTime = new Date();
		
		PrintWriter out = response.getWriter();
		
		if(session.isNew()){
			out.println("Welcome to my Servlet for the <b>first</b> time.");
		}else{
			out.println("Welcome back to my Servlet");
		}
		out.println("</br><b>Session creation time: </b><u>"+createTime+"</u>");
		out.println("</br><b>Current access time: </b><u>"+currentAccessTime+"</u>");
		out.println("</br><b>Session last access time:</b><u>"+ lastAccessTime+"</u>");
	
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}
	
	public void destroy(){
		
	}
  
}
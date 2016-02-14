import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class DiceRoller extends HttpServlet{
	public void init() throws ServletException{
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		int num = (int) (Math.random()*6+1);
		
		out.println("<h1>Number on Dice: <u>"+num+"</u></h1>");
	}
	
	public void destroy(){
		
	}
  
}
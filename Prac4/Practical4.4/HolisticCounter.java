import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HolisticCounter extends HttpServlet {

  static int classCount = 0;  
  // separate for each servlet
  int count = 0;              
  static Hashtable ht = new Hashtable();  
  public void doGet(HttpServletRequest req, HttpServletResponse res)
                               throws ServletException, IOException {
    // Set response content type
    res.setContentType("text/html");
    PrintWriter out = res.getWriter();

    count++;
    out.println("This servlet instance has been accessed " +
                count + " times.");

    ht.put(this, this);
    out.println("There are currently " +
                ht.size() + " instances.");

    classCount++;
    out.println("Across all instances, this servlet class has been " +
                "accessed " + classCount + " times.");
  }
}
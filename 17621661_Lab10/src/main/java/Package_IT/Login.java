package Package_IT;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<User> users = UserCollection.getInstance().getArray(); 
		String name = request.getParameter("name");
    	String password = request.getParameter("password");
    	User user = new User(0,name, password,null,null,null);
    	 response.setContentType("text/html");
    	 response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out = response.getWriter();
		 if(name.equals("")) {
		   	out.println("<script type=\"text/javascript\">"+"alert('Please enter a Username!');"+"location='Login.html';"+"</script>");
		 		} else if (password.equals("")) {
		 			out.println("<script type=\"text/javascript\">"+"alert('Please enter your password!');"+"location='Login.html';"+"</script>");
		} else if(users.contains(user)) {
			for (User user2 : users) 
            { 
                if(user2.equals(user)) {    
              try {  	
                	HttpSession session = request.getSession();
                    session.setMaxInactiveInterval(10);
                    session.setAttribute("username", user2.getUsername());
                    session.setAttribute("phone", user2.getPhone());
                    session.setAttribute("city", user2.getCity());
                    session.setAttribute("address", user2.getAddress());
                    session.setAttribute("id", user2.getId());                   
                    response.sendRedirect("EditProfilePage.jsp");
              }catch(Exception e) {}
                }
            } 	
		} else {
    		out.println("<script type=\"text/javascript\">"+"alert('Incorrect Username or password!');"+"location='Login.html';"+"</script>");
    	}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Login.html");
	}
}

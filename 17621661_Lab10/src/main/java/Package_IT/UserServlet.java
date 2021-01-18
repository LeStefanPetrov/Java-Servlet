package Package_IT;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.isNew()) {
		    response.sendRedirect("Login.html");
		} else {
		String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String address = request.getParameter("address");        
        int id = Integer.parseInt(request.getParameter("id"));
        
        session.setAttribute("username", username);
        session.setAttribute("phone", phone);
        session.setAttribute("city", city);
        request.setAttribute("address", address);
        session.setAttribute("id", id);
        response.sendRedirect("EditProfilePage.jsp");
	}
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        if(session.isNew()) {
            response.sendRedirect("Login.html");
        }
        else {
		String username = request.getParameter("username");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String address = request.getParameter("address");
        int id = Integer.parseInt(request.getParameter("id"));

        ArrayList<User> users = UserCollection.getInstance().getArray(); 
        response.setContentType("text/html");
        
        for (User user : users) 
        {  
            if(user.getId() == id) { 
                user.setAddress(address);
                user.setCity(city);
                user.setUsername(username);
                user.setPhone(phone);
             
                session.setAttribute("username", username);
    	    	session.setAttribute("phone", phone);
    	    	session.setAttribute("city", city);
    	    	session.setAttribute("address", address);
    	    	session.setAttribute("id", id);

    	    	response.sendRedirect("Profile.jsp");
                break;
            }
        }
	}
}
}

package Package_IT;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditProfile() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String name = request.getParameter("name");
		String job = request.getParameter("job");
		String description = request.getParameter("description");
		String ProSkill1 = request.getParameter("ProSkill1");
		int ProSkill1Value = Integer.parseInt(request.getParameter("ProSkill1Value"));
		String ProSkill2 = request.getParameter("ProSkill2");
		int ProSkill2Value = Integer.parseInt(request.getParameter("ProSkill2Value"));
		String ProSkill3 = request.getParameter("ProSkill3");
		int ProSkill3Value = Integer.parseInt(request.getParameter("ProSkill3Value"));
		String ProSkill4 = request.getParameter("ProSkill4");
		int ProSkill4Value = Integer.parseInt(request.getParameter("ProSkill4Value"));
		String PerSkill1 = request.getParameter("PerSkill1");
		int PerSkill1Value = Integer.parseInt(request.getParameter("PerSkill1Value"));
		String PerSkill2 = request.getParameter("PerSkill2");
		int PerSkill2Value = Integer.parseInt(request.getParameter("PerSkill2Value"));
		String PerSkill3 = request.getParameter("PerSkill3");
		int PerSkill3Value = Integer.parseInt(request.getParameter("PerSkill3Value"));
		String username = request.getParameter("username");
    	String phone = request.getParameter("phone");
    	String city = request.getParameter("city");
    	String address = request.getParameter("address");
    	int id = Integer.parseInt(request.getParameter("id"));
    	
    	
    	session.setAttribute("name", name);
    	session.setAttribute("job", job);
    	session.setAttribute("description", description);
    	session.setAttribute("ProSkill1", ProSkill1);
    	session.setAttribute("ProSkill1Value", ProSkill1Value);
    	session.setAttribute("ProSkill2", ProSkill2);
    	session.setAttribute("ProSkill2Value", ProSkill2Value);
    	session.setAttribute("ProSkill3", ProSkill3);
    	session.setAttribute("ProSkill3Value", ProSkill3Value);
    	session.setAttribute("ProSkill4", ProSkill4);
    	session.setAttribute("ProSkill4Value", ProSkill4Value);
    	
    	session.setAttribute("PerSkill1", PerSkill1);
    	session.setAttribute("PerSkill1Value", PerSkill1Value);
    	session.setAttribute("PerSkill2", PerSkill2);
    	session.setAttribute("PerSkill2Value", PerSkill2Value);
    	session.setAttribute("PerSkill3", PerSkill3);
    	session.setAttribute("PerSkill3Value", PerSkill3Value);
    	
    	session.setAttribute("username", username);
    	session.setAttribute("phone", phone);
    	session.setAttribute("city", city);
    	session.setAttribute("address", address);
    	session.setAttribute("id", id);
    	response.sendRedirect("Profile.jsp");
	
	}
}
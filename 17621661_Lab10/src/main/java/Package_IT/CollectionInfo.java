package Package_IT;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

public class CollectionInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CollectionInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String myTestFile = "E:\\Programming\\Uni\\Eclipse\\IT\\17621661_Lab10\\CollectionXml.xml";
		
		ArrayList<User> users = UserCollection.getInstance().getArray(); 
		HttpSession session=request.getSession();
		
		try {
				JAXBContext context = JAXBContext.newInstance(XmlUsers.class);
			    Unmarshaller um = context.createUnmarshaller();
				XmlUsers group = (XmlUsers) um.unmarshal(new FileReader(myTestFile));
				System.out.println(users.size());
				users.clear();
				System.out.println(users.size());
				users = group.getUsers();
				session.setAttribute("list", users); 
				response.sendRedirect("Collection.jsp");
		} catch (JAXBException e) {
			e.printStackTrace();
		}
		
	}
}

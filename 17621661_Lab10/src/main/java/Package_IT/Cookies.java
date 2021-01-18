package Package_IT;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;

public class Cookies extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public Cookies() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie loginCookie = new Cookie("welcome","Welcome!");
		Calendar now= new GregorianCalendar();
    	Calendar tonight= new GregorianCalendar();
    	Date time= new Date();
    	now.setTime(time);
    	int MaxSeconds=60*60*24;
    	int hours=now.get(now.HOUR_OF_DAY);
    	int minutes=now.get(now.MINUTE);
    	int TillMidnight=MaxSeconds-(hours*3600+minutes*60);
        loginCookie.setMaxAge(TillMidnight);
        response.addCookie(loginCookie);
        response.sendRedirect("Profile.jsp");
	}
}

package controller;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Home extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		System.out.println("current home param locale: " + req.getParameter("locale"));
		
		//SETTING LOCALIZATION PARAMETERS
		if (req.getParameter("locale") != null) {
			session.setAttribute("locale", req.getParameter("locale"));
			System.out.println("current home session attribute locale: " + session.getAttribute("locale"));
		}
		
		//SETTING REFERENCE TO ITSELF
		req.setAttribute("servlet", "home");
		
		boolean isLogged = false;
		if (session.getAttribute("logged") != null) {
			isLogged = (boolean) session.getAttribute("logged");
		}
		
		String username = (String) session.getAttribute("username");
		if (username != null && isLogged){
			req.setAttribute("loggato", true);
		}else {
			req.setAttribute("loggato", false);
		}
		req.setAttribute("messaggio", username);
		RequestDispatcher dispacher = req.getRequestDispatcher("Index.jsp");
		dispacher.forward(req, resp);
	}
}

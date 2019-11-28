package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.captcha.botdetect.web.servlet.Captcha;

import model.Account;
import persistence.AccountCredenziali;
import persistence.DatabaseManager;
import persistence.dao.AccountDao;

public class CheckLogin extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		System.out.println("current session iscaptchsolved: " + session.getAttribute("isCaptchaSolved"));
		//SETTING LOCALIZATION PARAMETERS
		if (req.getParameter("locale") != null) {
			session.setAttribute("locale", req.getParameter("locale"));
		}
		
		//SETTING REFERENCE TO ITSELF
		req.setAttribute("servlet", "checkLogin");
		
		
		
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
		RequestDispatcher dispacher = req.getRequestDispatcher("login.jsp");
		dispacher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		System.out.println("current session iscaptchsolved: " + session.getAttribute("isCaptchaSolved"));
		
		boolean isCaptchaSolved = (session.getAttribute("isCaptchaSolved") != null);
		   
        // SE NON HA RISOLTO IL CAPTCHA
        if (!isCaptchaSolved) {
            Captcha captcha = Captcha.load(req, "loginCaptcha");
            // validate the Captcha to check we're not dealing with a bot
            boolean isHuman = false;
            try {
            	isHuman = captcha.validate(req.getParameter("captchaCode"));
            }catch(NullPointerException e){
            	isHuman = false;
            }
            if (!isHuman) {
            	req.setAttribute("captchaError", true);
    			RequestDispatcher dispacher = req.getRequestDispatcher("login.jsp");
    			dispacher.forward(req, resp);
            } else {
                isCaptchaSolved = true;
                session.setAttribute("isCaptchaSolved", true);
            }
        }
		
        //SE HA RISOLTO IL CAPTCHA
		if (isCaptchaSolved) {
		
			String username = (String) req.getParameter("username");
			String password = (String) req.getParameter("password");
			AccountDao dao = DatabaseManager.getInstance().getDaoFactory().getAccountDAO();
			Account account = dao.findByPrimaryKey(username);
			boolean isLogged = false;
			try {
				isLogged = (boolean)session.getAttribute("logged");
			} catch (NullPointerException e) {}
			if (!isLogged) {
				req.setAttribute("giaLoggato", false);
				if (account != null){
					//SE LOGGA CON SUCCESSO
					if (password.equals(account.getPassword())){
						session.setAttribute("username", username);
						session.setAttribute("logged", true);

						System.out.println("Si e' loggato");
						
						req.setAttribute("loggato", true);
						req.setAttribute("messaggio", username);
						RequestDispatcher dispacher = req.getRequestDispatcher("CheckLogin.jsp");
						dispacher.forward(req, resp);
					}
					//SE LA PASSWORD E' ERRATA
					else {
						int count = 0;
	                    if (session.getAttribute("failedAuthCount") != null) {
	                        count = (Integer) session.getAttribute("failedAuthCount");
	                    }
	                    count++;
	                    if (count > 2) {
	                        session.removeAttribute("isCaptchaSolved");
	                        count = 0;
	                    }
	                    session.setAttribute("failedAuthCount", count);
						req.setAttribute("passwordError", true);
						RequestDispatcher dispacher = req.getRequestDispatcher("login.jsp");
						dispacher.forward(req, resp);
					}
				}
				//SE L'ACCOUNT NON ESISTE
				else {
					req.setAttribute("accountError", true);
					RequestDispatcher dispacher = req.getRequestDispatcher("login.jsp");
					dispacher.forward(req, resp);
				}
			}
			//SE E' GIA LOGGATO
			else {
				System.out.println("Gia' e' loggato");
				req.setAttribute("loggato", true);
				req.setAttribute("messaggio", ((String)session.getAttribute("username")));
				req.setAttribute("giaLoggato", true);
				RequestDispatcher dispacher = req.getRequestDispatcher("CheckLogin.jsp");
				dispacher.forward(req, resp);
			}
		
		}
	}
}

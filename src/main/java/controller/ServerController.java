package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eventBean.Action;
import server.welcome.WelcomeUser;

@WebServlet({"/Welcome", "/RollingPaper"})
public class ServerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServerController() {
        super();
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		WelcomeUser welcome;
		Action result = null;
		switch (req.getRequestURI().substring(req.getContextPath().length() + 1)) {
		case "Welcome": case "RollingPaper":
			welcome = new WelcomeUser(req);
			result = welcome.backController();
			break;
		}
		if(result.getForward()) {
			RequestDispatcher dispatcher = req.getRequestDispatcher(result.getPage());
			dispatcher.forward(req, res);
		}else {
			res.sendRedirect(result.getPage());
		}
	}

}

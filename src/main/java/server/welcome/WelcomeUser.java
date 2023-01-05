package server.welcome;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import eventBean.Action;
import eventBean.UserInfo;

public class WelcomeUser {
	private HttpServletRequest req;
	private HttpSession session;
	
	public WelcomeUser(HttpServletRequest req){
		this.req = req;
		this.session = req.getSession();
	}
	
	public Action backController() {
		Action result = new Action();
		
		switch (this.req.getServletPath()) {
//		case "/Langind":
//			result = this.pageInit();
		case "/Welcome":
			result = this.WelcomeCtl();
			break;
		case "/RollingPaper":
			result = this.RollingPaperCtl();
			break;
		}
		
		return result;
	}
	
//	private Action pageInit() {
//		Action result = new Action();
//		String page = "index.jsp";
//		boolean isForward = true;
//		
//		if(this.session.getAttribute("userInfo") != null) {
//			page = "main.jsp";
//		}else this.session.invalidate();
//		
//		result.setPage(page);
//		result.setForward(!isForward);
//		
//		return result;
//	}
	
	private Action WelcomeCtl() {
		Action result = new Action();
		String page = "index.jsp", message = "";
		boolean isForward = false;
		
		UserInfo user = new UserInfo();
		user.setUserId(req.getParameter("userId"));
		user.setUserPw(req.getParameter("userPw"));
		
		WelDao dao = new WelDao();
		Connection connect = dao.openConnection();
		dao.modifyTranStatus(connect, false);
		
		if(dao.convertToBoolean(dao.isMember(connect, user))) {
			dao.getUserInfo(connect, user);
			this.session.setAttribute("userInfo", user);
			page = "main.jsp";
			isForward = true;
		}else message = "입력 정보를 확인해 주세요.";
		
		if (message != null) {
			try {
				page += "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {e.printStackTrace();}
		}
		
		dao.closeConnection(connect);
		
		result.setPage(page);
		result.setForward(isForward);
		
		return result;
	}
	
	private Action RollingPaperCtl() {
		Action result = new Action();
		String page = "main.jsp", message;
		boolean isForward = false;
		
		UserInfo user = new UserInfo();
		user.setUserId(req.getParameter("userId"));
		user.setPaper(req.getParameter("commentBody"));
		
		WelDao dao = new WelDao();
		Connection connect = dao.openConnection();
		dao.modifyTranStatus(connect, false);
		
		if(dao.convertToBoolean(dao.setRollingPaper(connect, user))) {
			message = "등록이 완료되었습니다!";
			isForward = true;
		}else message = "네트워크가 불안정합니다. 잠시 후 다시 시도해 주세요.";
		
		if (message != null) {
			try {
				page += "?message=" + URLEncoder.encode(message, "UTF-8");
			} catch (UnsupportedEncodingException e) {e.printStackTrace();}
		}
		
		dao.setTrasaction(isForward, connect);
		dao.modifyTranStatus(connect, true);
		dao.closeConnection(connect);
		
		result.setPage(page);
		result.setForward(isForward);
		
		return result;
	}
}

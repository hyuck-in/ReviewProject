package reviewjsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		String user_id = request.getParameter("user_id");
		String user_pwd = request.getParameter("user_pwd");
		String submitflag = request.getParameter("submitflag");
		if(user_id == null) {
			user_id = "";
		}
		if(submitflag == null) {
			if(session.getAttribute("userBean") != null) {
				response.sendRedirect("index");
				return;
			}
			
			request.setAttribute("loginflag", 3);
			request.setAttribute("user_id", user_id);
		}
		else {
			LoginMgrPool loginMgrPool = new LoginMgrPool();
			int flag = loginMgrPool.loginIdCheck(user_id, user_pwd);
			if(flag == 1) {
				session.setAttribute("userBean", loginMgrPool.getUserBean(user_id));
				request.getRequestDispatcher("index").forward(request, response);
				return;
			}
			
			request.setAttribute("loginflag", flag);
			request.setAttribute("user_id", user_id);
		}
		
		request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
	}
}
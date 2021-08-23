package reviewjsp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class index
 */
@WebServlet("/index")
public class index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserBean sessionBean = (UserBean)session.getAttribute("userBean");
		if(sessionBean == null) {
			request.getRequestDispatcher("header_login.jsp").include(request, response);
		}else {
			request.setAttribute("name", sessionBean.getUser_name());
	
		}
    /* 디스패처의 역활은 서블릿과 jsp한테 리케스트 리스폰스를 받을수있게 값을 넘겨준다 */
	
	}

}

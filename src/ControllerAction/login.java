package ControllerAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.MembershipDAO;

public class login implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println("welcome to login");
		String id = (String) session.getAttribute("id");
		String userName = request.getParameter("id");
		String pwd = request.getParameter("password");
		MembershipDAO dao = MembershipDAO.getinstance();
		int result = dao.selectmembership(userName, pwd);
		request.setCharacterEncoding("UTF-8");

		if ((id == null || !id.equals(userName)) && userName != null) {
			System.out.println("세션설정");
			session.setAttribute("userid", userName);
			System.out.println("userName=" + userName);
			System.out.println("result=" + result);
			PrintWriter out = response.getWriter();
			out.print("alert('아이디를 잘못 입력하셨습니다.');");
		}
		if (result == 1) {
			request.setAttribute("pwd", pwd);
			System.out.println("login to viewmore");
			String view = "MovieServlet?command=selectmovieformember";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);

		} else if (result == 5) {
			session.setAttribute("userid", userName);
			System.out.println("login to manager");
			String view = "settingmovies.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);

		} else if (result == 0) {
			PrintWriter out = response.getWriter();
			out.print("alert('존재하지 않는 회원입니다.');");

			String view = "login.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);

		}
	}

}

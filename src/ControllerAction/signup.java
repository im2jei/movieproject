package ControllerAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.MembershipDAO;
import DB.MembershipDTO;

public class signup implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("welcome to signup");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		String phone = request.getParameter("phone");

		MembershipDAO dao = MembershipDAO.getinstance();
		MembershipDTO dto = new MembershipDTO();
		dto.setName(name);
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setPhone(phone);
		dao.insertmembership(dto);
		request.setAttribute("signup", dto);

		if (dto != null) {
			System.out.println("signup to login");
			// HttpSession session= request.getSession();
			// session.setAttribute("newid", id);
			String view = "./login.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}

	}
}

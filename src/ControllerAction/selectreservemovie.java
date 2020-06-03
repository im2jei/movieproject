package ControllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.reservemovieDAO;
import DB.reservemovieDTO;

public class selectreservemovie implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String country = request.getParameter("country");
		String id = request.getParameter("id");
		System.out.println("myid=" + id);
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");

		reservemovieDAO dao = reservemovieDAO.getinstance();
		reservemovieDTO dto = new reservemovieDTO();
		dto.setTitle(title);
		dto.setRdate(date);
		dto.setTime(time);
		dto.setCountry(country);
		dto.setId(id);
		dto.setName(name);
		dto.setPhone(phone);
		ArrayList<reservemovieDTO> rlist = dao.selectreservemovie(id);
		request.setAttribute("rlist", rlist);
		System.out.println("리스트 값 있니?=" + rlist);

		String view = "mypage.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}

}

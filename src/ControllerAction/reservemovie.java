package ControllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.MovieDTO;
import DB.reservemovieDAO;
import DB.reservemovieDTO;

public class reservemovie implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String total = request.getParameter("total");
		String seat = request.getParameter("seat");
		String country = request.getParameter("country");
		String id = request.getParameter("id");
		String name = request.getParameter("reservename");
		String phone = request.getParameter("phone");

		reservemovieDAO dao = reservemovieDAO.getinstance();
		reservemovieDTO dto = new reservemovieDTO();
		dto.setNum(num);
		dto.setTitle(title);
		dto.setRdate(date);
		dto.setTime(time);
		dto.setSeat(seat);
		dto.setCountry(country);
		dto.setId(id);
		dto.setName(name);
		dto.setPhone(phone);
		dto = dao.insertreservemovie(dto);
		request.setAttribute("dto", dto);
		request.setAttribute("total", total);
		String view = "reservedone.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(view);
		dispatcher.forward(request, response);

	}

}

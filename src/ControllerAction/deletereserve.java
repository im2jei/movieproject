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

public class deletereserve implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		System.out.println("title=" + title);
		String id = request.getParameter("id");
		System.out.println("delid=" + id);
		reservemovieDAO dao = reservemovieDAO.getinstance();
		reservemovieDTO dto = dao.deletemovies(title);
		ArrayList<reservemovieDTO> dlist = dao.selectreservemovie(id);

		if (dto != null) {
			request.setAttribute("rlist", dlist);
			String view = "mypage.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}

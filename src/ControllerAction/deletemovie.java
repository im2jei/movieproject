package ControllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.MovieDAO;
import DB.MovieDTO;

public class deletemovie implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));

		MovieDAO dao = MovieDAO.getinstance();
		MovieDTO dto = dao.deletemovies(num);
		ArrayList<MovieDTO> list = dao.selectallmovies();
		if (dto != null) {
			request.setAttribute("list", list);

			String view = "movielist.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}

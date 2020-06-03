package ControllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.MovieDAO;
import DB.MovieDTO;

public class selectmoviem implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		MovieDAO dao = MovieDAO.getinstance();
		ArrayList<MovieDTO> list = dao.selectallmovies();
		if (list != null) {
			request.setAttribute("list", list);

			String view = "movielistformem.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}

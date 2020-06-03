package ControllerAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.MovieDAO;
import DB.MovieDTO;

public class updatemovieform implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		MovieDAO dao = MovieDAO.getinstance();
		MovieDTO dto = dao.selectmovie(num);

		if (dto != null) {
			request.setAttribute("movie", dto);
			request.setAttribute("num", num);
			String view = "updateform.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}
	}

}

package ControllerAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.MovieDAO;
import DB.MovieDTO;

public class viewmore implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		MovieDAO dao = MovieDAO.getinstance();
		MovieDTO dto = dao.selectmovie(num);
		request.setCharacterEncoding("UTF-8");
		if (dto != null) {
			request.setAttribute("board", dto);
			request.setAttribute("title", dto.getTitle());
			request.setAttribute("mdate", dto.getMdate());
			request.setAttribute("summary", dto.getSummary());
			request.setAttribute("src", dto.getSrc());
			request.setAttribute("num", num);

			String view = "review.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		}

	}

}

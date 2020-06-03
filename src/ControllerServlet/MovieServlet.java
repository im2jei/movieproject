package ControllerServlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ControllerAction.Action;

/**
 * Servlet implementation class MovieServlet
 */
@WebServlet("/MovieServlet")
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MovieServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		/**
		 * 아시겠지만, 'multipart/form-data'을 사용하면 request.getParameter()로 값을 받을 수 없다. 하지만,
		 * action부분에 이런식으로 하면 충분히(?) 가능하다.
		 * 
		 */
		String command = request.getParameter("command");
		System.out.println("BoardServlet에서 요청을 받음을 확인 : " + command);
		if (command.equals("insertmovie") || command.equals("updatemovie")) {
			// 여기를 바꿔주면 다운받는 경로가 바뀜
			String savePath = "./movie/upload";// 업로드 파일을 실제 서버에 저장할 디렉토리 위치
			// upload라는 폴더가 있는지 확인해보자!
			ServletContext context = getServletContext();// 실제 물리적인(c drive,d drive) 디렉토리 위치를 가져오는 메소드(webcontent)
			String uploadFilePath = context.getRealPath(savePath);
			request.setAttribute("uploadFilePath", uploadFilePath);
			System.out.println(uploadFilePath + "컨트롤러");
		}

		ActionFactory af = ActionFactory.getInstance();
		Action action = af.getAction(command);

		if (action != null) {
			action.execute(request, response);
			return;
		}
	}

}

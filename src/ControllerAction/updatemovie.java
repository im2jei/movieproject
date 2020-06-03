package ControllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DB.MovieDAO;
import DB.MovieDTO;

public class updatemovie implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDAO bDao = MovieDAO.getinstance();
		int indexNum = bDao.nowNum();
		String title = null;
		String date = null;
		String fileName = null;
		String summary = null;
		String src = null;
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		String uploadFilePath = (String) request.getAttribute("uploadFilePath");
		System.out.println("서버상의 실제 디렉토리 :" + uploadFilePath);

		try {
			MultipartRequest multi = new MultipartRequest(request, // request 객체
					uploadFilePath, // 서버상의 실제 디렉토리
					uploadFileSizeLimit, // 최대 업로드 파일 크기
					encType, // 인코딩 방법
					new DefaultFileRenamePolicy());// 동일한 이름이 존재하면 새로운 이름이 부여됨
			title = multi.getParameter("title");
			date = multi.getParameter("date");
			summary = multi.getParameter("summary");
			src = multi.getParameter("src");
			fileName = multi.getFilesystemName("uploadFile");
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			} else { // 파일이 업로드 되었을때
				System.out.println("업로드 성공!!" + fileName);
			} // else
			if (indexNum != -1) {
				MovieDTO dto = new MovieDTO();
				dto.setNum(indexNum);
				dto.setTitle(title);
				dto.setMdate(date);
				dto.setSummary(summary);
				dto.setFname(fileName);
				dto.setSrc(src);
				bDao.updatemovie(dto);

				request.setAttribute("num", indexNum);
				request.setAttribute("title", title);
				request.setAttribute("date", date);
				request.setAttribute("fname", fileName);
				request.setAttribute("summary", summary);
				request.setAttribute("src", src);

				ArrayList<MovieDTO> list = bDao.selectallmovies();

				request.setAttribute("list", list);
				String view = "movielist.jsp";
				RequestDispatcher dispatcher = request.getRequestDispatcher(view);
				dispatcher.forward(request, response);

			}
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		} // catch
	}

}

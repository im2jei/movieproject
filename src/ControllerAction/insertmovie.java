package ControllerAction;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DB.MovieDAO;
import DB.MovieDTO;

public class insertmovie implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MovieDAO bDao = MovieDAO.getinstance();
		int indexNum = bDao.nowNum();
		String title = null;
		String date = null;
		String fileName = null;
		String summary = null;
		String src = null;
		//
		// SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy.MM.dd
		// HH:mm:ss", Locale.KOREA );
		// Date currentTime = new Date ();
		// String mTime = mSimpleDateFormat.format ( currentTime );

		// 파일 업로드
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();// 컨트롤러에서 뷰파일에 바로 띄우고 싶을때 사용가능
		// 여기를 바꿔주면 다운받는 경로가 바뀜
		// String savePath = "./board/upload";
		// 최대 업로드 파일 크기 5MB로 제한
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		// 용량단위: 비트bit,바이트byte,키로바이트kb,메가바이트mb,기가바이트gb,테라바이트tb
		String encType = "UTF-8";
		// ServletContext context = getServletContext();
		// String uploadFilePath = context.getRealPath(savePath);
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
			// 업로드된 파일의 이름 얻기
			fileName = multi.getFilesystemName("uploadFile");
			if (fileName == null) { // 파일이 업로드 되지 않았을때
				System.out.print("파일 업로드 되지 않았음");
			} else { // 파일이 업로드 되었을때
				System.out.println("업로드 성공!!" + fileName);
				// request.setAttribute("fname", fileName);
			} // else
			if (indexNum != -1) {
				MovieDTO dto = new MovieDTO();
				dto.setNum(indexNum);
				dto.setTitle(title);
				dto.setMdate(date);
				dto.setSummary(summary);
				dto.setFname(fileName);
				dto.setSrc(src);
				toKSC5601(title);
				toKSC5601(summary);
				toKSC5601(fileName);
				bDao.insertmovie(dto);

				response.sendRedirect("./MovieServlet?command=selectmovieformanager");

			}
		} catch (Exception e) {
			System.out.print("예외 발생 : " + e);
		} // catch

		//
		request.setAttribute("num", indexNum);
		request.setAttribute("title", title);
		request.setAttribute("date", date);
		request.setAttribute("fname", fileName);
		request.setAttribute("summary", summary);

	}

	public static String toKSC5601(String s) {
		if (s == null) {
			return null;
		}
		try {
			return new String(s.getBytes("KSC5601"), "ISO8859-1");
		} catch (Exception e) {
			return s;
		}
	}

}

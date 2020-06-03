package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MovieDAO {
	static MovieDAO movie = null;

	private MovieDAO() {

	}

	public static MovieDAO getinstance() {
		if (movie == null) {
			movie = new MovieDAO();
		}
		return movie;
	}

	public MovieDTO insertmovie(MovieDTO dto) {
		String sql = "insert into movies(" + "num,title,mdate,summary,fname,src) " + "values(?, ?, ?, ?, ?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getMdate());
			pstmt.setString(4, dto.getSummary());
			pstmt.setString(5, dto.getFname());
			pstmt.setString(6, dto.getSrc());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return dto;
	}

	public ArrayList<MovieDTO> selectallmovies() {
		String sql = "select * from movies";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		ArrayList<MovieDTO> list = new ArrayList<MovieDTO>();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
//				dto.setMdate(rs.getString("mdate"));
//				dto.setSummary(rs.getString("summary"));
				dto.setFname(rs.getString("fname"));
				list.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public MovieDTO selectmovie(int num) {
		String sql = "select * from movies where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setMdate(rs.getString("mdate"));
				dto.setSummary(rs.getString("summary"));
				dto.setFname(rs.getString("fname"));
				dto.setSrc(rs.getString("src"));
				return dto;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public void updatemovie(MovieDTO dto) {
		String sql = "update movies set title=?, mdate=?, summary=?, fname=?, src=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		// ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2, dto.getMdate());
			pstmt.setString(3, dto.getSummary());
			pstmt.setString(4, dto.getFname());
			pstmt.setString(5, dto.getSrc());
			pstmt.setInt(6, dto.getNum());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			DBManager.close(conn, pstmt);
		}
		// return dto;
	}

	public MovieDTO deletemovies(int num) {
		String sql = "delete from movies where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MovieDTO dto = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new MovieDTO();
				dto.setNum(num);
				dto.setTitle(rs.getString("title"));
				dto.setMdate(rs.getString("mdate"));
				dto.setSummary(rs.getString("summary"));
				dto.setFname(rs.getString("fname"));
				dto.setSrc(rs.getString("src"));
				return dto;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	public int nowNum() {
		String sql = "select num.nextval as nextNum from dual";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		int num = -1;
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				num = Integer.valueOf(rs.getString("nextNum"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, stmt, rs);
		}
		return num;
	}

	public String selectdate(String date) {
			String sql = "select date,title from movies where date=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			MovieDTO dto = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, date);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					dto = new MovieDTO();
					dto.setNum(rs.getInt("num"));
					dto.setTitle(rs.getString("title"));
					dto.setMdate(rs.getString("mdate"));
					return date;

				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return date;
		
	}

}

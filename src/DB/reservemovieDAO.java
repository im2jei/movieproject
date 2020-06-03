package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class reservemovieDAO {
	static private reservemovieDAO dao = null;

	private reservemovieDAO() {

	}

	public static reservemovieDAO getinstance() {
		if (dao == null) {
			dao = new reservemovieDAO();
		}
		return dao;
	}

	public reservemovieDTO insertreservemovie(reservemovieDTO dto) {
		String sql = "insert into reservemovie values(?, ?, ?, ?, ?, ?, ?, ?, ? ,reservenum.nextval)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getNum());
			pstmt.setString(2, dto.getTitle());
			pstmt.setString(3, dto.getRdate());
			pstmt.setString(4, dto.getTime());
			pstmt.setString(5, dto.getSeat());
			pstmt.setString(6, dto.getCountry());
			pstmt.setString(7, dto.getId());
			pstmt.setString(8, dto.getName());
			pstmt.setString(9, dto.getPhone());
			pstmt.executeUpdate();
			return dto;

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return dto;
	}

	public ArrayList<reservemovieDTO> selectallreservemovies() {
		String sql = "select * from reservemovie";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		reservemovieDTO dto = null;
		ArrayList<reservemovieDTO> list = new ArrayList<reservemovieDTO>();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new reservemovieDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setRdate(rs.getString("rdate"));
				dto.setTime(rs.getString("time"));
				dto.setSeat(rs.getString("seat"));
				dto.setCountry(rs.getString("country"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setReservenum(rs.getInt("reservenum"));

				list.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<reservemovieDTO> selectreservemovie(String id) {
		String sql = "select * from reservemovie where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		reservemovieDTO dto = null;
		ArrayList<reservemovieDTO> rlist = new ArrayList<reservemovieDTO>();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new reservemovieDTO();
				dto.setNum(rs.getInt("num"));
				dto.setTitle(rs.getString("title"));
				dto.setRdate(rs.getString("rdate"));
				dto.setTime(rs.getString("time"));
				dto.setSeat(rs.getString("seat"));
				dto.setCountry(rs.getString("country"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setReservenum(rs.getInt("reservenum"));
				rlist.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rlist;
	}

	public reservemovieDTO deletemovies(String title) {
		String sql = "delete from reservemovie where title=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		reservemovieDTO dto = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				dto = new reservemovieDTO();
				dto.setTitle(title);
				dto.setRdate(rs.getString("rdate"));
				dto.setTime(rs.getString("time"));
				dto.setSeat(rs.getString("seat"));
				dto.setCountry(rs.getString("country"));
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setReservenum(rs.getInt("reservenum"));
				return dto;

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
}

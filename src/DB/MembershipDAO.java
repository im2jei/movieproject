package DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MembershipDAO {
	static MembershipDAO Membership = null;

	private MembershipDAO() {

	}

	public static MembershipDAO getinstance() {
		if (Membership == null) {
			Membership = new MembershipDAO();
		}
		return Membership;
	}

	public void insertmembership(MembershipDTO dto) {
		String sql = "insert into membership(" + "name,id,pwd,phone) " + "values(?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getPhone());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	public int selectmembership(String id, String pwd) {
		String sql = "select * from membership where id=? and pwd=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MembershipDTO dto = null;
		int result = 0;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = new MembershipDTO();
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setPhone(rs.getString("phone"));
				result = 1;

				if (rs.getString("id").equals("manager")) {
					result = 5;
					return result;
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public void deletemembership(String id) {
		String sql = "delete membership where id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

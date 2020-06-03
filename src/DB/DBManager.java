package DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBManager {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/myoracle?´?? ?´ë¦„ì„ ê°ì²´ë¥? ì°¾ì•„?„œ DataSourceê°? ë°›ëŠ”?‹¤.
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			// dsê°? ?ƒ?„±?˜?—ˆ?œ¼ë¯?ë¡? Connection?„ êµ¬í•©?‹ˆ?‹¤.
			System.out.println("ds : "+ds);
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	// select?„ ?ˆ˜?–‰?•œ ?›„ ë¦¬ì†Œ?Š¤ ?•´? œë¥? ?œ„?•œ ë©”ì†Œ?“œ
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DML(insert, update, delete)?„ ?ˆ˜?–‰?•œ ?›„ ë¦¬ì†Œ?Š¤ ?•´? œë¥? ?œ„?•œ ë©”ì†Œ?“œ
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

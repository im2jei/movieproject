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
			// jdbc/myoracle?΄?? ?΄λ¦μ κ°μ²΄λ₯? μ°Ύμ? DataSourceκ°? λ°λ?€.
			DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
			// dsκ°? ??±???Όλ―?λ‘? Connection? κ΅¬ν©??€.
			System.out.println("ds : "+ds);
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	// select? ??? ? λ¦¬μ?€ ?΄? λ₯? ?? λ©μ?
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DML(insert, update, delete)? ??? ? λ¦¬μ?€ ?΄? λ₯? ?? λ©μ?
	public static void close(Connection conn, Statement stmt) {
		try {
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

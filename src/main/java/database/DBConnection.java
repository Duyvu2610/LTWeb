package database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public DBConnection() {
		String url = "jdbc:sqlserver://Nguyen-Duy-Vu\\sqlexpress;databaseName=booking;user=sa;password=duyvu;encrypt=true;trustServerCertificate=true";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Connection connection  = DriverManager.getConnection(url);
			System.out.println("connect success");
		} catch (Exception e) {
			System.out.println("loi roi");
			e.printStackTrace();
		}
	}
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		String url = "jdbc:sqlserver://Nguyen-Duy-Vu\\sqlexpress;databaseName=booking;user=sa;password=duyvu;encrypt=true;trustServerCertificate=true";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		return DriverManager.getConnection(url);
	}
	

}

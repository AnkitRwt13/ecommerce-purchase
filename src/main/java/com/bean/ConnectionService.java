package com.bean;

import java.sql.Connection;
import java.sql.DriverManager;
public class ConnectionService {
	public Connection getConnectionService() {
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopnow","root","Ankit1310@");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}

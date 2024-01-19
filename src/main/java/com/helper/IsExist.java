package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.ConnectionService;

public class IsExist {
	public boolean check(String name, String password) {
		Connection con=new ConnectionService().getConnectionService();
		ResultSet rs=null;
		try {
			PreparedStatement pst=con.prepareStatement("select * from user where uname =? and password=?");
			pst.setString(1, name);
			pst.setString(2, password);
			rs=pst.executeQuery();
//			rs.next();
			if(rs.next()) {
				rs.close();
				return true;
			}
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	public ResultSet check(int flag,String name, String password) {
		Connection con=new ConnectionService().getConnectionService();
		try {
			PreparedStatement pst=con.prepareStatement("select * from user where uname =? and password=?");
			pst.setString(1, name);
			pst.setString(2, password);
			return pst.executeQuery();
			
		} catch (SQLException e) {
			
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}

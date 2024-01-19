package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InsertUser {
	public boolean insert(com.bean.UserBean ub) {
		Connection con=new com.bean.ConnectionService().getConnectionService();
		boolean flag=true;
		try {
			PreparedStatement pst=con.prepareStatement("insert into user values(?,?,?,?)");
			pst.setString(1,ub.getUname());
			pst.setString(2,ub.getPassword());
			pst.setLong(3, ub.getMobile());
			pst.setString(4, ub.getAddress());
			flag=pst.execute();
			pst.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return !flag;
	}
}

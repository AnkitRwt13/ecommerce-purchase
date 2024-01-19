package com.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bean.ConnectionService;
import com.bean.ProductBean;

public class ProductExtraction {
	public ProductBean[] extract(int limit) {
		System.out.print(limit);
		ProductBean[] product=new ProductBean[3];
		Connection con=new ConnectionService().getConnectionService();
		
		try {
			int i=0;
			PreparedStatement pst=con.prepareStatement("select * from products limit ?,3");
			pst.setInt(1, limit);
			ResultSet rs=pst.executeQuery();
			
			while(rs.next()) {
					product[i]=new ProductBean();
					product[i].setCompany(rs.getString(1));
					product[i].setModel(rs.getString(2));
					product[i].setPrice(rs.getInt(3));
					product[i].setFeatures(rs.getString(4));
					product[i].setImage(rs.getString(5));
					i++;
//					System.out.print(rs.getString(1));
			}
			con.close();
//			System.out.print(product[1].getPrice());
			return product;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null	;		
	}
}

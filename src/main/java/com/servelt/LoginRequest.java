package com.servelt;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginRequest
 */
@WebServlet("/LoginRequest")
public class LoginRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("userName");
		System.out.println(name);
		String password=request.getParameter("password");
		long mobile=Long.parseLong(request.getParameter("mobile"));
		String address=request.getParameter("address");
		
		com.bean.UserBean userBean=new com.bean.UserBean(name,password,mobile,address);
		com.helper.InsertUser insertUserDetail= new com.helper.InsertUser();
		boolean flag=insertUserDetail.insert(userBean);
		if(flag) {
			request.setAttribute("message","Registration Done Successfully");
			RequestDispatcher rd=request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("message","Registration Done Successfully");
			request.getRequestDispatcher("/registration.jsp");
			
		}
	}

}

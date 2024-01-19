package com.servelt;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.helper.IsExist;

/**
 * Servlet implementation class LoginCheck
 */
@WebServlet("/LoginCheck")
public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String password=request.getParameter("password");
		IsExist UserCheck=new IsExist();
		PrintWriter p=response.getWriter();
//		p.print("qwert");
		boolean flag=UserCheck.check(name, password);
//		p.print(flag);
		if(flag) {
//			System.out.print("working");
			HttpSession UserSession=request.getSession();
			UserSession.setAttribute("username", name);
			UserSession.setAttribute("password", password);
			UserSession.setAttribute("name", 1);
			response.sendRedirect("./homeLogin.jsp");
			
		}
		else {
			response.sendRedirect("./login.jsp");
		}
		
		
	}

}

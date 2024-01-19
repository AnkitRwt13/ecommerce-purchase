<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, com.bean.* , com.helper.* ,java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
  </head>
 <body>
<% 
System.out.print(request.getParameter("pervious1"));
if(session.getAttribute("name")!=null && session.getAttribute("name").equals(1)){
	if(request.getParameter("pervious1")!=null ){
		RequestDispatcher p=request.getRequestDispatcher("./samsung.jsp?limit=0");
		p.forward(request,response);
	}
	
	if(request.getParameter("purchase2")!=null && request.getParameter("purchase2").equals("purchase")){
		if(request.getParameter("flag1")==null){
			session.removeAttribute("product3");
		}
		if(request.getParameter("flag2")==null){
			session.removeAttribute("product4");
		}
		if(request.getParameter("flag3")==null){
			session.removeAttribute("product5");
		}
	}
	Enumeration e=session.getAttributeNames();
	int total=0;
	while(e.hasMoreElements()){
		String s=(String)e.nextElement();
		if(!(s.equals("name")||s.equals("username")||s.equals("password"))){
			ProductBean obj=(ProductBean)session.getAttribute(s);
			out.println("<h3 style=\"text-align:center;\">Model Name: "+obj.getModel()+"</h3>");
			out.println("<h3 style=\"text-align:center;\">Model Price: "+obj.getPrice()+"</h3><br>");
			total=total+obj.getPrice();
		}
	}
	out.println("<h4 style=\"text-align:center;\">Total Price:"+total+"</h4>");
	ResultSet userDetail=new IsExist().check((int)session.getAttribute("name"),(String)session.getAttribute("username"),(String)session.getAttribute("password"));
	while(userDetail.next()){
		out.println("<h3 style=\"text-align:center;\">User Name : "+userDetail.getString(1)+"</h3>");
		out.println("<h3 style=\"text-align:center;\">Model Name : "+userDetail.getLong(3)+"</h3>");
		out.println("<h3 style=\"text-align:center;\">Model Name : "+userDetail.getString(4)+"</h3>");
		out.println("<h3 style=\"text-align:center;\">Total Price : "+total+"</h3><br>");
	}
}
else{
	request.getRequestDispatcher("./home.jsp");
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%@ include file = "connection.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Treader Action Page</title>
</head>
<body>
<%!
public void doPost(HttpServletRequest req,HttpServletResponse res){
	
}
%>
<%
	String user = request.getParameter("username");
	String pass = request.getParameter("password");
	
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from marchant where username = '"+user+"' and password = '"+pass+"' ");
	if(rs.next()){
	getServletContext().getRequestDispatcher("/MarchantHome.jsp").forward(request, response);
	}
	else{
		out.println("<h1>Invalid username/password<h1>");
		getServletContext().getRequestDispatcher("/MarchantLoginError.jsp").forward(request, response);
	}
	doPost(request,response);
%>
</body>
</html>
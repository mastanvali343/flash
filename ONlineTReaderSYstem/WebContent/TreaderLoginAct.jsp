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
	ResultSet rs = st.executeQuery("select * from treader where username = '"+user+"' and password = '"+pass+"' ");
	if(rs.next()){
	getServletContext().getRequestDispatcher("/TreaderHome.jsp").forward(request, response);
	}
	else{
		getServletContext().getRequestDispatcher("/TreaderLoginError.jsp").forward(request, response);
	}
	doPost(request,response);
%>
</body>
</html>
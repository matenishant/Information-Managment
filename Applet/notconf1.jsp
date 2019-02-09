<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBInfo"%>
<body>

<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
	%>
	<%

	
		String visit=request.getParameter("id2");
		System.out.println("visit me gyi:::"+visit);
  		
	   Connection con=DBInfo.con;
	   
	   String status="";
	   
	   String query="Update visit set status='Not Confirm' where visit_num="+visit;
		PreparedStatement ps=con.prepareStatement(query);
      int flag=ps.executeUpdate();
	   System.out.println(":::::Updated:"+flag+"rows");
	   response.sendRedirect("ViewAll1.jsp");
%>
</body>
</html>

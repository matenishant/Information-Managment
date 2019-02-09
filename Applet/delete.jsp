<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBInfo"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'enquiry_entry.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
 
  <body>
  
  <%
  
  	try
  	{
  		String visit=request.getParameter("id3");
  		
  		
	   
	    Connection con=DBInfo.con;
	    
	    String query="delete from visit where visit_num=?";
	    
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1,visit);
		
	    int flag=ps.executeUpdate();
	    
	    if(flag!=0)
	   		response.sendRedirect("ViewAll1.jsp");
	    else
	   	
	    	response.sendRedirect("ViewAll1.jsp");
	   
		System.out.println("values"+flag);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

%>
		 	
  
  
  
  </body>
</html>

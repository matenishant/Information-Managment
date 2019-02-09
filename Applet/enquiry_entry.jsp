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
  
  <body>
  <%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
  
  <%
  
  	try
  	{
  	   String visit=request.getParameter("visit");
	   String name=request.getParameter("name");
	   String remote=request.getParameter("remote");
	    String email=request.getParameter("email");	  
	   String phone=request.getParameter("phone");
	  
	   String address=request.getParameter("address");
	   String country=request.getParameter("country");
	   String state=request.getParameter("state");
	   String city=request.getParameter("city");
	   //String person=request.getParameter("person");
	   String pur_date=request.getParameter("pur_date");
	   String raise_ticket=request.getParameter("raise_ticket");
	   String issue=request.getParameter("issue");
	   //String destination=request.getParameter("destination");
	   //String hotel_req=request.getParameter("hotel_req");
	   //String h_require=request.getParameter("h_require");
	   //String h_given=request.getParameter("h_given");
	 
	   //String rooms=request.getParameter("rooms");
	   String mode=request.getParameter("mode");
	  
	   String amt=request.getParameter("amt");
	   //String amt_paid=request.getParameter("amt-paid");
	   //String amt_due=request.getParameter("amt-due");
	   //String vehicle=request.getParameter("vehicle");
	   
	   String bank=request.getParameter("bank");
	   String status=request.getParameter("status");
	   
	    Connection con=DBInfo.con;
	    
	    
	     String query="insert into visit values('"+visit+"', '"+name+"', '"+remote+"', '"+email+"', '"+phone+"','"+address+"', '"+country+"', '"+state+"','"+city+"', '"+pur_date+"', '"+raise_ticket+"', '"+issue+"','"+mode+"','"+amt+"','"+bank+"','"+status+"');";
		PreparedStatement ps=con.prepareStatement(query);
		/* ps.setString(1, visit);
		ps.setString(2, name);
		ps.setString(3, email);
		ps.setString(4, phone);
		ps.setString(5, address);
		ps.setString(6, country);
		ps.setString(7, state);
		ps.setString(8, city);
		ps.setString(9, person);
		ps.setString(10, dept_date);
		ps.setString(11, arr_date);
		ps.setString(12, source);
		ps.setString(13, destination);
		ps.setString(14, hotel_req);
		ps.setString(15, h_require);
		ps.setString(16, h_given);
		ps.setString(17, rooms);
		ps.setString(18, vehicle);
		ps.setString(19, mode);
		ps.setString(20, amt);
		ps.setString(21, amt_paid);
		ps.setString(22, amt_due); */
	
	    int flag=ps.executeUpdate();
	    
	    if(flag!=0)
	    response.sendRedirect("ViewAll.jsp?id8="+visit);
	    else
	    response.sendRedirect("enquiry.jsp");
		
		System.out.println("values"+flag);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
		 	
  
  
  
  </body>
</html>

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
  		
  		
  		String visit=request.getParameter("visitnum");
  		System.out.println(visit+"::::::::update.jsp pe");
	   String name=request.getParameter("name");
	   String phone=request.getParameter("phone");
	   String email=request.getParameter("email");
	   String address=request.getParameter("address");
	   System.out.println("address aya:::::::"+address);
	   String country=request.getParameter("country");
	   String state=request.getParameter("state");
	   String city=request.getParameter("city");
	   String person=request.getParameter("person");
	   String dept_date=request.getParameter("dept_date");
	   String arr_date=request.getParameter("arr_date");
	   String source=request.getParameter("source");
	   String destination=request.getParameter("destination");
	   String hotel_req=request.getParameter("hotel");
	    String h_require=request.getParameter("h_require");
	   String h_given=request.getParameter("h_given");
	 
	   String rooms=request.getParameter("rooms");
	   String mode=request.getParameter("mode");
	   String amt=request.getParameter("amt");
	   String amt_paid=request.getParameter("amt-paid");
	   String amt_due=request.getParameter("amt-due");
	   String vehicle=request.getParameter("vehicle");
	   System.out.println("amt_paid::::::::"+amt_paid);
	    Connection con=DBInfo.con;
	    
	    String query="update visit set visit_num='"+visit+"', name='"+name+"', email='"+email+"', phone='"+phone+"', address='"+address+"', country='"+country+"', state='"+state+"',city='"+city+"', person='"+person+"', dept_date='"+dept_date+"', arrival_date='"+arr_date+"', source='"+source+"', destination='"+destination+"', hotel_req='"+hotel_req+"', h_require='"+h_require+"', h_given='"+h_given+"', rooms='"+rooms+"', vehicle='"+vehicle+"', mode='"+mode+"', amt='"+amt+"', amt_paid='"+amt_paid+"', amt_due='"+amt_due+"' where visit_num="+visit+";";
	    
		 PreparedStatement ps=con.prepareStatement(query);
		/*
		ps.setString(1,visit);
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
		ps.setString(22, amt_due);
		ps.setString(23, visit);
		*/
		 
		System.out.println(query);
	    int flag=ps.executeUpdate();
	    
	    if(flag!=0)
	    {
	  	    response.sendRedirect("ViewAll1.jsp");
	    }
	    else
	    {	  
	    	response.sendRedirect("ViewAll1.jsp");
		}
		System.out.println("values"+flag);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
		 	
  
  
  
  </body>
</html>

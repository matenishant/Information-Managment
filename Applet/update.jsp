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
	   String remote=request.getParameter("remote");
	   String phone=request.getParameter("phone");
	   String email=request.getParameter("email");
	   String address=request.getParameter("address");
	   System.out.println("address aya:::::::"+address);
	   String country=request.getParameter("country");
	   String state=request.getParameter("state");
	   String city=request.getParameter("city");
	  
	   String pur_date=request.getParameter("pur_date");
	   String raise_ticket=request.getParameter("raise_ticket");
	   String issue=request.getParameter("issue");

	   
	  
	   String mode=request.getParameter("mode");
	   
	   String amt=request.getParameter("amt");
	  
	  
	   String bank=request.getParameter("bank");
	   String status=request.getParameter("status");
	   System.out.println("amt::::::::"+amt);
	    Connection con=DBInfo.con;
	    
	    String query="update visit set visit_num='"+visit+"', name='"+name+"', remote='"+remote+"', email='"+email+"', phone='"+phone+"', address='"+address+"', country='"+country+"', state='"+state+"',city='"+city+"', pur_date='"+pur_date+"', raise_ticket= '"+raise_ticket+"', issue='"+issue+"', mode='"+mode+"',amt='"+amt+"', bank='"+bank+"', status='"+status+"' where visit_num="+visit+";";
	    
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

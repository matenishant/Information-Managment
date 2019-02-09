<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
response.setIntHeader("Refresh", 1000);
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewAll2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="refresh" content="1000">
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	
<link href='reg.css' rel='stylesheet' type='text/css' /> 
 <link rel='stylesheet' href='index.css' type=text/css /> 

 <link rel=stylesheet href=bootstrap.min.css> 
 <link rel=stylesheet href=bootstrap-theme.min.css> 
 <script src=jquery.min.js></script> 
 <script src=bootstrap.min.js></script>
  </head>
  
  <body>
    
  
<!-- <style type="text/css">
<!--
body {
	background-color: #FFFFCC;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

</style> -->


		
<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
 
				
			 <center>
				 <div id=form-head style="width:80%; float:left; height: 100px;"> 
				
					 <div id="head-mid" style="float:left; height: 100px; position: fixed; width: 100%;"> 
					 	<h2 id=heading align='left' style="padding-left:20px; ">All Records</h2>
					 
					  
					  
					  
						<!-- <div id=head-right style="padding-top: 20px; float:left;"> --> 
						 <p style="color:#FFF; margin-left:850px; margin-top:0px; padding-top:0px;"> 
								
							<a href="moderator.jsp" style="color: white;">Home</a>
							<br/>
							<a href="logout.jsp" style="color: white;">Logout</a>
						 </p>		
				 		</div>
				 		 </div>
				
				</center> 
				 
	<hr ><br><br><center>
<div align="center" style="width:80%; overflow:scroll; border:1px; border-color:blue; border-style:solid;">
 <br><br><br><br>
  <%@ page import="java.sql.*,p1.DBInfo"%>
  <table border="2px;" style="width:3000px; border-color: blue; margin: 2px;padding: 5px; text-align: center;" >
  <h3>All Information with payment details</h3>
    <tr style="text-align:center;">
      <th scope="col">Visit number</th>
      <th scope="col">Call Receiver Name</th>
	  <th scope="col">Customer Name</th>
      <th scope="col">Phone</th>
      <th scope="col">Email</th>
      
      <th scope="col">Operating System</th>
     <!-- <th scope="col">Destination</th>
      <th scope="col">Hotel Required</th>
      <th scope="col">Hotel Requested</th>
      <th scope="col">Hotel Allotted</th>
      <th scope="col">Rooms</th>
      <th scope="col">Vehicle</th>-->
      <th scope="col">Call Type Issue</th>	
	 <!-- <th scope="col">Transaction Id </th> --> 
      <th scope="col">Other</th>
	  
     <!-- <th scope="col">Amount Paid</th>
      <th scope="col">Amount Due</th>  -->
	  <th scope="col">Remark</th> 
	   
       	  
	      
     
      
    </tr>
	
	
	
    	

	<%
	    Connection con=DBInfo.con;
		String query="select * from agent";
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
	    while(res.next())
		{
		    String s1=res.getString(1);
		    System.out.println(s1+"::::::::::"+s1);
		    String s2=res.getString(2);
			String s3=res.getString(3);
			String s4=res.getString(4);
			String s5=res.getString(5);
			String s6=res.getString(6);
			String s7=res.getString(7);
			String s8=res.getString(8);
			String s9=res.getString(9);
			
			
			
			
			
			
			
			 out.println("<tr>");
             out.println("<td>"+s1+"</td>");
             out.println("<td>"+s2+"</td>");
			 out.println("<td>"+s3+"</td>");
			 out.println("<td>"+s4+"</td>");
			 out.println("<td>"+s5+"</td>");
             out.println("<td>"+s6+"</td>");
			 out.println("<td>"+s7+"</td>");
			 out.println("<td>"+s8+"</td>");
			 out.println("<td>"+s9+"</td>");
             
			
			 
			 
            
			 //out.println("<td><a href=conf.jsp?id2="+s1+">Confirm</a></td>");
			 //out.println("<td><a href=notconf.jsp?id2="+s1+">Not Confirm</a></td>");		 			 
			 //out.println("<td><a href=update1.jsp?id2="+s1+">Update</a></td>");			 
			 System.out.println("next s1"+s1);
             out.println("</tr>");
			
		}
	
	
	%>
	
	
	
	
	
   
  </table>
  <p>&nbsp; </p>
</div></center>
</body></html>

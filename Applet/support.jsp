<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.sun.xml.internal.ws.api.pipe.NextAction"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="p1.DBInfo"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href='reg.css' rel='stylesheet' type='text/css' /> 
 <link rel='stylesheet' href='index.css' type=text/css /> 

 <link rel=stylesheet href=bootstrap.min.css> 
 <link rel=stylesheet href=bootstrap-theme.min.css> 
 <script src=jquery.min.js></script> 
 <script src=bootstrap.min.js></script> 

		 <title>Agent panel</title>
		 

	<style>
	
		a:link{
		color: blue;
		
		}
		
		
		
	
	</style>	 
		 
		 
		 
</head>

<body><center>


<div id='main'>
		
			 <div id=form-head> <!--header-left--> 
				
			 <div id=head-mid style="width: 80%; float:left;"> 
				 <h2 id=heading align='left' style="padding-left:20px;">Agent Panel</h2> </div>
						<div id=head-right style="padding-top: 20px;float:left; width:20%;"> 
						 <p style=color:#FFF; margin-left:50px; margin-top:0px; padding-top:0px;> 
							<a href="logout.jsp" style="color: white;">Logout</a>	
						 </p>		
				 </div>
				 </div>
	
	
	
 <div id='form'><br />	 
		 <div style='height:auto; width:500px;'>		
		 <font color="blue">
		

		<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
		<ul> 	
	<li> <a href="ViewAll.jsp"><h4>View All Visitors Information</h4></a>
	<li> <a href="enquiry.jsp"><h4>New Client Enquiry Form</h4></a>
		</li> </li><br /><br />
		
			</ul>	
		
		 <br /><br /> </font>
		
		
		 	</form>	</div></center></div></div>	

</center>
</body>
</html>

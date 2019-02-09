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

		 <title>Admin panel</title>
		 

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
			 <h2 id=heading align='center' style="padding-left:20px;">Applet Admin Panel</h2> </div>
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
		
		<ul align="left">  
	
	<li><a href="ViewAll1.jsp"><h4>View All Visitors Information</a></h4> 
		 </li><br />
		 <li><a href="ViewAllUsers.jsp"><h4> View All Users</a>	</h4>	
		</li> 	<br />
		 <li><a href="user.jsp"><h4> Create New User</a>	</h4>	
		</li> 	<br />
		
		
			</ul>	
		
		 <br /><br /> </font>
		
		
		 	</form>	</div></center></div></div>	

</body>
</html>

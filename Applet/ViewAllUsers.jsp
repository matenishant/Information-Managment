<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewAll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->


<link href='reg.css' rel='stylesheet' type='text/css' /> 
 <link rel='stylesheet' href='index.css' type=text/css /> 

 <link rel=stylesheet href=bootstrap.min.css> 
 <link rel=stylesheet href=bootstrap-theme.min.css> 
 <script src=jquery.min.js></script> 
 <script src=bootstrap.min.js></script>

  </head>
  
  <body>
 <!-- 
<style type="text/css">

body {
	background-color: #FFFFCC;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

</style>
-->

			<center>	
			 <div id=form-head style="width:1000px;"> <!--header-left--> 
				
			 <div id=form-head> <!--header-left--> 
				
				 <div id=head-mid style="width: 80%; float:left;"> 
				 <h2 id=heading align='left' style="padding-left:20px;">All records</h2> </div>
						<div id=head-right style="padding-top: 20px;float:left; width:20%;"> 
						 <p style=color:#FFF; margin-left:50px; margin-top:0px; padding-top:0px;> 
							
							<a href="admin.jsp" style="color: white; ">Home</a>
							<br/>
							<a href="logout.jsp" style="color: white; ">Logout</a>	
							
							
						 </p>		
				 </div>
				 </div>
				 
				 
	<hr >


<div align="center" style="border: 2px; border-style: solid; border-color: blue;">
 <br><br><br><br>
  <%@ page import="java.sql.*,p1.DBInfo"%>
  <table border=2px; width=400px; style="border-color:blue;">
    <tr>
      <th scope="col">User Name</th>
      <th scope="col">Password</th>
      <th scope="col">User Type</th>
      
      
    </tr>
    	
<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
	<%
	    Connection con=DBInfo.con;
		String query="select * from login order by usertype, username";
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
	    while(res.next())
		{
		    String s1=res.getString(1);
			String s2=res.getString(2);
			String s3=res.getString(3);
			
			
			 out.println("<tr>");
             out.println("<td>"+s1+"</td>");
             out.println("<td>"+s2+"</td>");
			  out.println("<td>"+s3+"</td>");
			 
             out.println("</tr>");
			
		}
	
	
	%>
	
	
	
	

   
  </table>
  <p>&nbsp; </p>
</div>
</center>
    
  </body>
</html>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

		 <title>Registration form</title>
		 
		 <script>

 function checkForm(form)
  {
    if(form.name.value == "")
	{
      alert("Error: First Name cannot be blank!");
      form.name.focus();
      return false;
    }
    re = /^\w+$/;
    if(!re.test(form.name.value)) 
	{
      alert("Error: Username must contain only letters, numbers and underscores!");
      form.name.focus();
      return false;
    }

	 if(form.uname.value == "")
	 {
      alert("Error: Last Name cannot be blank!");
      form.uname.focus();
      return false;
    }
    
    if(!re.test(form.uname.value)) 
	{
      alert("Error: Username must contain only letters, numbers and underscores!");
      form.uname.focus();
      return false;
    }
		
	
    if(form.pass.value != "" && form.repass.value == form.pass.value)
	{
      if(form.pass.value.length < 6)
	  {
        alert("Error: Password must contain at least six characters!");
        form.pass.focus();
        return false;
      }
      if((form.pass.value == form.name.value) || (form.pwd1.value == form.uname.value))
	  {
        alert("Error: Password must be different from Username!");
        form.pass.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(form.pass.value))
	  {
        alert("Error: password must contain at least one number (0-9)!");
        form.pass.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(form.pass.value)) 
	  {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        form.pass.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(form.pass.value))
	  {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        form.pass.focus();
        return false;
      }
    } 
	
	else 
	{
      alert("Error: Please check that you've entered and confirmed your password!");
      form.pass.focus();
      return false;
    }

   
  }

</script>

		 
		 
		 
		 
</head>

<body><center>
<div id='main'>

		
		<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
		 
		
	 <div id=form-head> <!--header-left--> 
				
			 <div id=head-mid> 
				 <h2 id=heading align=center>REGISTRATION FORM</h2> 
			 </div>	<div id=head-right> 
				 <p style=color:#FFF; margin-left:50px; margin-top:0px; padding-top:0px;> 
					 Already registered!!<br />		<a href="enquiry.jsp"> Enquiry Form</a> 
				 </p>		</div> 
	
	
 <div id='form'><br />	<center> 
		 <div style='height:auto; width:500px;'>		<center> 
		
<form onsubmit="return checkForm(this);" action="#" >

		
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='name' class='tf' placeholder='Name'/>			<br /><br /> 
		
				
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='text' name='email' class='tf' placeholder='Email' />		<br /><br /> 
		
		
		 <button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='phone' class='tf' placeholder='Phone' />	<br /><br /> 
		
		
		 <button class='bt' style='background-image:url(images/reg/loc-icon.png); background-position:top; height:70px;' disabled="disabled"> </button> 
		 <textarea style='border-radius:0px 10px 10px 0px; margin-top:10px; border:groove;' name='address' placeholder='Address' rows='3' cols='40'></textarea>		<br /><br /> 
		
		
		<button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='country' class='tf' placeholder='Country' />	<br /><br /> 
		
		<button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='state' class='tf' placeholder='State' />	<br /><br /> 
		
		<button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='city' class='tf' placeholder='City' />	<br /><br /> 
		
		
		<input type="submit" style='border:outset;'/>	<input type='button' name='cancel' value='Cancel' style='border:outset;' /> 
	
		 	</form></center>		</div>	</center>	</div></div>
		 	
		 	<%
   String name=request.getParameter("name");
   String phone=request.getParameter("phone");
   String email=request.getParameter("email");
   String address=request.getParameter("address");
    String country=request.getParameter("country");
     String state=request.getParameter("state");
      String city=request.getParameter("city");
    Connection con=DBInfo.con;
    String query="insert into registration values(?,?,?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, phone);
	ps.setString(4, address);
	ps.setString(5, city);
	ps.setString(6, state);
	ps.setString(7, country);
    int flag=ps.executeUpdate();
	
	System.out.println("values"+flag);
	%>
		 	

</center>
</body>
</html>

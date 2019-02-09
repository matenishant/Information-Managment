

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

		 <title>Login form</title>
		 
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

		
		
		 
		
	 <div id=form-head> <!--header-left--> 
				
			 <div id=head-mid > 
			
				 <h2 id=heading align=center>Applet Services Login</h2> 
			 </div>	
			 
			 <div id=head-right> 
				 <p style=color:#FFF; margin-left:50px; margin-top:0px; padding-top:0px;> 
					<br />		
				 </p>		</div> 
	</div>
	
 <div id='form'><br />	
 
 
 <center> 
		 <div style='height:auto; width:500px;'>		<center> 
		
<form onsubmit="return checkForm(this);" action="verify.jsp" method="post" >

		
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='uname' class='tf' placeholder='Username'/>			<br /><br /> 
		
				
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='password' name='pass' class='tf' placeholder='Password'/>			<br /><br /> 
		
		
		 <br /><br /> 
		
		<input type="submit" style='border:outset;'/>	<input type='button' name='cancel' value='Cancel' style='border:outset;' /> 
	
		 	</form></center>		</div>	</center>	</div>
</center>
</body>
</html>

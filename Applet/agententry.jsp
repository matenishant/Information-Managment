<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- <meta http-equiv="refresh" content="5"/> -->
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


<!-- <script type="text/javascript"> -->
<!-- var country_arr = new Array("Afghanistan", "India", "USA", "Vietnam"); -->

<!-- var s_a = new Array(); -->
<!-- s_a[0]=""; -->
<!-- s_a[1]="Badakhshan|Badghis|Baghlan|Balkh|Bamian|Farah|Faryab|Ghazni|Ghowr|Helmand|Herat|Jowzjan|Kabol|Kandahar|Kapisa|Konar|Kondoz|Laghman|Lowgar|Nangarhar|Nimruz|Oruzgan|Paktia|Paktika|Parvan|Samangan|Sar-e Pol|Takhar|Vardak|Zabol"; -->
<!-- s_a[2]="Andhra Pradesh|Arunachal Pradesh|Assam|Bihar|Chhattisgarh|Goa|Gujarat|Haryana|Himachal Pradesh|Jammu and Kashmir|Jharkhand|Karnataka|Kerala|Madhya Pradesh|Maharashtra|Manipur|Meghalaya|Mizoram|Nagaland|Odisha(Orissa)|Punjab|Rajasthan|Sikkim|Tamil Nadu|Tripura|Uttar Pradesh|Uttarakhand|West Bengal"; -->
<!-- s_a[3]="Alabama|Alaska|Arizona|Arkansas|California|Colorado|Connecticut|Delaware|Florida|Georgia|Hawaii|Idaho|Illinois|Indiana|Iowa|ansas|Kentucky|Louisiana|Maine|Maryland|Massachusetts|Michigan|Minnesota|Mississippi|Missouri|Montana|Nebraska|Nevada|New Hampshire|New Jersey|New Mexico|New York|North Carolina|North Dakota|Ohio|Oklahoma|Oregon|Pennsylvania|Rhode Island|South Carolina|South Dakota|Tennessee|Texas|Utah|Vermont|Virginia|Washington|West Virginia|Wisconsin|Wyoming"; -->

<!-- s_a[4]="Ba Ria|Bạc Liêu|Bắc Giang|Bắc Ninh|Bảo Lộc|Biên Hòa|Bến Tre|Buôn Ma Thuột|Cà Mau|Cam Pha|Cao Lãnh|Đà Lạt|Điện Biên Phủ|Đông Hà|Đồng Hới|Hà Tĩnh|Hạ Long|Hải Dương|Hòa Bình|Hội An|Huế|Hưng Yên|Kon Tum|Lạng Sơn|Lào Cai|Long Xuyên|Móng Cái|Mỹ Tho|Nam Định|Ninh Bình|Nha Trang|Cam Ranh|Phan Rang-Tháp Chàm|Phan Thiết|Phủ Lý|Pleiku|Quảng Ngãi|Quy Nhơn|Rạch Giá|Sóc Trăng|Sơn La|Tam Kỳ|Tân An|Thái Bình|Thái Nguyên|Thanh Hóa|Trà Vinh|Tuy Hòa|Tuyen Quang|Uong Bi|Việt Trì|Vinh|Vĩnh Yên|Vĩnh Lon|Vũng Tàu|Yên Bái"; -->

<!-- function print_country(country){ -->
<!--     //given the id of the <select> tag as function argument, it inserts <option> tags -->
<!--     var option_str = document.getElementById(country); -->
<!--     option_str.length=0; -->
<!--     option_str.options[0] = new Option('Select Country',''); -->
<!--     option_str.selectedIndex = 0; -->
<!--     for (var i=0; i<country_arr.length; i++) { -->
<!--     option_str.options[option_str.length] = new Option(country_arr[i],country_arr[i]); -->
<!--     } -->
<!-- } -->

<!-- function print_state(state, selectedIndex){ -->
<!--     var option_str = document.getElementById(state); -->
<!--     option_str.length=0;    // Fixed by Julian Woods -->
<!--     option_str.options[0] = new Option('Select State',''); -->
<!--     option_str.selectedIndex = 0; -->
<!--     var state_arr = s_a[selectedIndex].split("|"); -->
<!--     for (var i=0; i<state_arr.length; i++) { -->
<!--     option_str.options[option_str.length] = new Option(state_arr[i],state_arr[i]); -->
<!--     } -->
<!-- } -->
<!-- </script> -->
		 
		 
		 
		 
</head>

<body><center>
<div id='main'>

	<center>	
	<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
 
 
 
 
  <div id=form-head> <!--header-left--> 
			
		
		 
		
	 <div id=form-head style="width:1000px;"> <!--header-left--> 
				
			 <div id=head-mid> 
				 <h2 id=heading align=center>Client Enquiry Form </h2> 
			 </div>	<div id=head-right style="padding-top: 20px;">
			 <a href="agent.jsp"style="color:white; padding-top: 80px;">Home</a> <br/>
			 <a href="logout.jsp" style="color:white;">Logout</a>	
						</div> 
	
	
 <div id='form'  style='height:1000px; width:1000px;' ><br />	<center> 
 
 
 <%
	String visit="";
	for(int i=0; i<5;i++)
	{
		visit+=(int)(Math.random()*9)+1;
	}

 %>

		 	
		<form onsubmit="return checkForm(this);" action="agent_entry.jsp" >
		
		 <center>
		<div id="form-left"  style='height:auto; width:50%; float:left;' >
		<fieldset>
          <legend> Basic Information</legend>
          
          
          <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:10px;"> Visit Number<br /></p>
		<button class='bt' style='background-image:url(images/reg/visit_num.png); ' disabled="disabled"></button> 
		 <input type='number' id='visit' name='visit' class='tf' placeholder='Visit Number' value="<%=visit %>" required/>			<br /><br /> 

        </center>

		 </div> 
          
		  
		  <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Call Receive By<br /></p>
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' id='name' name='cname' class='tf' placeholder='call receiver' required/>			<br /><br /> 
		</center>
		 </div> 
		  
          
        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Customer Name<br /></p>
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' id='name' name='name' class='tf' placeholder='Name' required/>			<br /><br /> 
		</center>
		 </div> 
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Contact<br /></p>
		 <button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' id='phone' name='phone' class='tf' placeholder='Phone' required/>	<br /><br /> 
		</center>
		 </div> 
      
		 
		 
        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Email<br /></p>
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='email' name='email' class='tf' placeholder='Email' required/>		<br /><br />
		</center>
		 </div> 
		
        
		 
        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Operating System<br /></p>
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <select id='os' name='os' class='tf' placeholder='OS Type' required>	
		 <option value="windows">Windows</option>
		 <option value="mac">MAC</option>
		 <option value="linux">Linux</option>
		 <option value="other">Other</option>
		 </select>		<br /><br />
		</center>
		 </div> 
		 
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Call Type<br /></p>
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <select id='ctype' name='ctype' class='tf' placeholder='call Type' required>	
		 <option value="popup">Pop-up call</option>
		 <option value="windowactivation">Window Activation</option>
		 <option value="printer">Printer issue</option>
		 <option value="hardware">Hardware</option>
		  <option value="other">Other</option>
		 </select>		<br /><br />
		</center>
		 </div> 
		 
		 
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Other Issue<br /></p>
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='text' name='other' class='tf' placeholder='other'/>		<br /><br />
		</center>
		 </div> 
		 
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Remark<br /></p>
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='text' name='remark' class='tf' placeholder='remark'/>		<br /><br />
		</center>
		 </div> 
		 
		 
		

		</fieldset> <br /><br />
		
		
	
		 	</form>
			<input type="submit" style='border:outset;'/>
		<input type='reset' name='Reset' value='Reset' style='border:outset;' /> 
			
			</center>
		
		
		</div>			 
		
		
			
				</div>
		 	
		 	
		 		</div></div>
		 	
		 	
		 	
</center>
</body>
</html>

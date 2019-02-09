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
		
		 
		
	 <div id=form-head style="width:1000px;"> <!--header-left--> 
				
			 <div id=form-head> <!--header-left--> 
				
				 <div id=head-mid style="width: 80%; float:left;"> 
				 <h2 id=heading align='left' style="padding-left:20px;">Create User</h2> </div>
						<div id=head-right style="padding-top: 20px;float:left; width:20%;"> 
						 <p style=color:#FFF; margin-left:50px; margin-top:0px; padding-top:0px;> 
							
							<a href="admin.jsp" style="color: white; ">Home</a>
							<br/>
							<a href="logout.jsp" style="color: white; ">Logout</a>	
							
						 </p>		
				 </div>
				 </div>
				 
				 


		
<%
	String id=(String)session.getAttribute("id");
	if(id==null)
	response.sendRedirect("index.jsp");
 %>
	
 <div id='form'  style='height:auto; width:1000px;' ><br />	<center> 
		 	
		<form onsubmit="return checkForm(this);" action="moderator_entry.jsp" >
		
		 <center> 
		<div id="form-left"  style='height:auto; width:100%; float:left;' >
		<fieldset>
          <legend> Basic Information</legend>
          
        
            
            <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		   <input type='text' id='username' name='username' class='tf' placeholder='User Name' required/>			<br /><br /> 
		
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='password' name='pass' id='pass' class='tf' placeholder='Password' required/>		<br /><br />
		
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='password' name='repass' id='repass' class='tf' placeholder='Re-type Password' required/>		<br /><br />
		 
		
		 <button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <select id='utype' name='utype' class='tf' placeholder='User Type' required>	
		 <option value="admin">Admin</option>
		 <option value="moderator">Moderator</option>
		 <option value="agent">Agent</option>
		 </select>
		 <br /><br /> 
		
		
		</fieldset>
		
		<!-- 
Select the Country :
<select onchange="print_state('state',this.selectedIndex);" id="country" name ="country"></select>
<br />
State in the above country :
<select name ="state" id ="state"></select>
<script language="javascript">print_country("country");</script> -->
		
			
		
			
		<input type="submit" style='border:outset;'/>	<input type='reset' name='Reset' value='Reset' style='border:outset;' /> 
	
		 	</form></center>		</div>
		 	
		 	
		 		</center>	</div></div>
		 	
		 	
		 	
</center>
</body>
</html>

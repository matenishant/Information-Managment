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


	

	<%
		String id2=(String)session.getAttribute("id2");
		
  		 String visit=id2;
	   Connection con=DBInfo.con;
	   session.setAttribute("id3", visit);
		String query="select * from visit where visit_num="+visit+";";
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
	    while(res.next())
		{
		    String name=res.getString("name");
			String email=res.getString("email");
			String phone=res.getString("phone");
			String address=res.getString("address");
			String country=res.getString("country");
			String state=res.getString("state");
			String city=res.getString("city");
			String person=res.getString("person");
			String dept_date=res.getString("dept_date");
			String arrival_date=res.getString("arrival_date");
			String source=res.getString("source");
			String destination=res.getString("destination");
			String hotel_req=res.getString("hotel_req");
			String h_require=res.getString("h_require");
			String h_given=res.getString("h_given");
			String rooms=res.getString("rooms");
			String vehicle=res.getString("vehicle");
			String mode=res.getString("mode");
			String amt=res.getString("amt");
			String amt_paid=res.getString("amt_paid");
			String amt_due=res.getString("amt_due");
		
			
			%>
	
	
	<div id='main'>

	<center>	
		<div id=form-head style="width:1000px;"> <!--header-left--> 
				
					 <div id=head-mid> 
						 <h2 id=heading align=center>Client Enquiry Form</h2> 
					 </div>	
					 <div id=head-right style="padding-top: 20px;">
					 <a href="moderator.jsp" style="color:white; padding-top: 80px;">Home </a>
					</div> 
					
					
	<div id='form'  style='height:auto; width:1000px;' ><br />	
		 	
		<form onsubmit="return checkForm(this);" action="update.jsp" >
		
		 <center> 
		 
		 
		 
				<div id="form-left"  style='height:auto; width:50%; float:left;' >
				<fieldset>
		          <legend> Basic Information</legend>
		          
				      <button class='bt' style='background-image:url(images/reg/icon-name.png);' disabled="disabled"></button>   
				      <input type="text" disabled="disabled" id='visit' name='visit' value="<%=visit%>" class='tf' required/>
				      		<br>    <br/>
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' id='name' name='name' class='tf' value="<%=name%>" required/>			<br /><br /> 
		
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='text' name='email' class='tf' value="<%=email %>"  required/>		<br /><br />
		
		
		 <button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' id='phone' name='phone' class='tf' value="<%=phone%>" required/>	<br /><br /> 
		
		
		 
			 <button class='bt' style='background-image:url(images/reg/loc-icon.png);' disabled="disabled"></button>
			 <input type='text' id='phone' name='phone' class='tf' value="<%=address%>" required/>	<br /><br /> 
		
		
		<button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='country' class='tf' value="<%=country%>"  required />	<br /><br /> 
		
		<button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='state' class='tf' value="<%=state%>"  required />	<br /><br /> 
		
		<button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' name='city' class='tf' value="<%=city%>"  required/>	<br /><br /> 
		
		</fieldset>
		<br/><br/>
		
		<!-- 
Select the Country :
<select onchange="print_state('state',this.selectedIndex);" id="country" name ="country"></select>
<br />
State in the above country :
<select name ="state" id ="state"></select>
<script language="javascript">print_country("country");</script> -->
		
		</div>
		
		<div id="form-ryt"  style='height:auto; width:50%; float:left; ' >
		
		<fieldset>
		<legend>Visit Information</legend>
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='person' class='tf' value="<%=person%>"  required/>			<br /><br /> 
		
		 <button class='bt' style='background-image:url(images/reg/cal-icon.png); background-position:center; ' disabled="disabled"></button> 
		 <input type='text' onfocus="this.type='date'" onblur= "this.type ='text'" name='dept_date' class='tf' value="<%=dept_date%>"  required /><br /><br /> 
		

		<button class='bt' style='background-image:url(images/reg/cal-icon.png); background-position:center; ' disabled="disabled"></button> 
		 <input type='text' onfocus="this.type='date'" onblur=this.type = 'text' name='arr_date' class='tf' value="<%=arrival_date%>"  required/><br /><br /> 
		
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='source' class='tf' value="<%=source%>"  required/>			<br /><br /> 
		
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='destination' class='tf' value="<%=destination%>" required/>			<br /><br /> 
		
		
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
<!-- 		 <select class='tf' placeholder='Hotel Category' name='cat'> -->
<!-- 		 <option>1 Star</option> -->
<!-- 		 <option>2 Star</option> -->
<!-- 		 <option>3 Star</option> -->
<!-- 		 <option>4 Star</option> -->
<!-- 		 <option>5 Star</option> -->
<!-- 		 </select> -->
 		<input type='text' name='hotel-req' class='tf' value='<%=hotel_req%>'  style="width:160px;" disabled="disabled" required/>		
		 
		 <input type="radio" value='yes' style="margin-left: 40px;"  name='hotel' value="yes"/>Yes
		 <input type="radio" value="no" name="hotel" style="margin-left: 20px;" value="no"/>No
		 <br/><br/>
		 
		 
		  <button class='bt' style='background-image:url(images/reg/icon-name.png); '></button> 
		 <input type='text' name='h_require' class='tf' value="<%=h_require%>"  default=0 required/>			<br /><br /> 
		
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); '></button> 
		 <input type='text' name='h_given' class='tf' value="<%=h_given%>"  default=0 required/>			<br /><br />
		 
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='rooms' class='tf' value="<%=rooms%>"  default=0 required/>			<br /><br /> 
		
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='vehicle' class='tf' value="<%=vehicle%>"  default=0 required/>			<br /><br /> 
		
		
		</fieldset>
		</div>
		
		 <div id='pay' style="height: auto; width: 100%; float:left;">
			<hr style="size=5px;"/>
		
		<fieldset>	
		<legend>Payment Information</legend>
		
		
		
		<input type="radio" name='mode' style="margin-left: 10px;" value="cash"/>  Cash
		<input type="radio" name='mode' style="margin-left: 40px;" value="cheque" />  Cheque
		<input type="radio" name='mode' style="margin-left: 30px;" value="online"/>  Online
		
		<br/><br/>
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt' class='tf' value="<%=amt%>"  default=0 required/>			<br /><br /> 
		
		
		
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt-paid' class='tf' value="<%=amt_paid%>"  default=0 required/>			<br /><br /> 
		 
		 
		
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt-due' class='tf' value="<%=amt_due%>"   required/>			<br /><br /> 
		
		</fieldset>
		<br/><br/>
		</div>			 
		
		
			
		<input type="submit" style='border:outset;' value="Update"/>	<input type='reset' name='reset' value='reset' style='border:outset;' /> 
	
		 	</form></center>		</div>
		 	
			</div>
		<%
		}
		 %> 		</center>	</div></div>
		 	
	</body>
</html>
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
				 <h2 id=heading align=center>Sales Form</h2> 
			 </div>	<div id=head-right style="padding-top: 20px;">
			 <a href="moderator.jsp" style="color:white; padding-top: 80px;">Home</a> <br/>
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

		 	
		<form onsubmit="return checkForm(this);" action="enquiry_entry.jsp" >
		
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
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">  Name<br /></p>
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' id='name' name='name' class='tf' placeholder='Name' required/>			<br /><br /> 
		</center>
		 </div> 
		 
		 
        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Remote ID<br /></p>
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' id='refer' name='remote' class='tf' placeholder='Remote ID' required/>			<br /><br />
		 
		 </center>
		 </div> 
		 
		 
        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Email<br /></p>
		 <button class='bt' style='background-image:url(images/reg/iconSmallEmail.jpeg); ' disabled="disabled"></button> 
		 <input type='email' name='email' class='tf' placeholder='Email' required/>		<br /><br />
		</center>
		 </div> 
		
        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Phone<br /></p>
		 <button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
		 <input type='text' id='phone' name='phone' class='tf' placeholder='Phone' required/>	<br /><br /> 
		</center>
		 </div> 
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Address<br /></p>
		  <button class='bt' style='background-image:url(images/reg/loc-icon.png);' disabled="disabled"></button>
		<input type='text' id='address' name='address' class='tf' placeholder='Address' required />	<br /><br /> 
		</center>
		 </div>		
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Country<br /></p>
		<button class='bt' style='background-image:url(images/reg/country.png);' disabled="disabled"></button> 
		 <input type='text' name='country' class='tf' placeholder='Country' required />	<br /><br /> 
		</center>
		 </div>	
		 
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> State<br /></p>
		<button class='bt' style='background-image:url(images/reg/state.png);' disabled="disabled"></button> 
		 <input type='text' name='state' class='tf' placeholder='State' required />	<br /><br /> 
		</center>
		 </div>	
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> City<br /></p>
		<button class='bt' style='background-image:url(images/reg/city.png);' disabled="disabled"></button> 
		 <input type='text' name='city' class='tf' placeholder='City' required />	<br /><br /> 
		</center>
		 </div>	
		 
		</fieldset>
		
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
		<legend>Payment Details</legend>
		
		<!-- <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:10px;"> No. of Persons<br /></p>
		<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
		 <input type='text' name='person' class='tf' placeholder='No. of Persons' required/>			<br /><br /> 
		</center>
		 </div>	-->
		 
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Purchase  date<br /></p>
		 <button class='bt' style='background-image:url(images/reg/cal-icon.png); background-position:center; ' disabled="disabled"></button> 
		 <input type='text' onfocus="this.type='date'" onblur= "this.type ='text'" name='pur_date' class='tf' placeholder='purchase date' required /><br /><br />
		</center>
		 </div>	 <br /><br />


<div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Close By<br /></p>
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); background-position:center; ' disabled="disabled"></button>
		 <input type='text' onfocus="this.type='text'" onblur= "this.type ='text'" name='raise_ticket' class='tf' placeholder='Close By' required /><br /><br /> 
		<!-- <select onfocus="this.type='name'" onblur= "this.type ='text'" name='raise_ticket' class='tf' placeholder='raise ticket' required>
			 <option value="nishant" >Nishant</option>
			  <option value="Aman">Aman</option> 
			  <option value="Arun">Arun</option> 
			  <option value="Rahul">Rahul</option>
			   <option value="Avinash">Avinash</option>
		  </select>-->
		  
		  <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Issue Description<br /></p>
		 <button class='bt' style='background-image:url(images/reg/icon-name.png); background-position:center; ' disabled="disabled"></button>
		  <textarea  rows="10" cols="50" onfocus="this.type='txtarea'" onblur= "this.type ='text'" name='issue'  wrap="soft" class='tf' placeholder='Issue Description'></textarea>
		  
		 <!--<input type='text' onfocus="this.type='date'" onblur= "this.type ='text'" name='pur_date' class='tf' placeholder='purchase date' required />--><br /><br />
		</center>
		 </div>	 <br /><br />



		 <!--<div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Arrival date<br /></p>
		<button class='bt' style='background-image:url(images/reg/cal-icon.png); background-position:center; ' disabled="disabled"></button> 
		 <input type='text' onfocus="this.type='date'" onblur="this.type = 'text'" name='arr_date' class='tf' placeholder='Arrival Date' required/><br /><br /> 
		</center>
		 </div>	-->
		
		
		<!-- <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">Arrival<br /></p>
		<button class='bt' style='background-image:url(images/reg/source2.png); ' disabled="disabled"></button> 
		 <input type='text' name='source' class='tf' placeholder='Arrival' required/>			<br /><br /> 
		</center>
		 </div>	
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Destination <br /></p>
		<button class='bt' style='background-image:url(images/reg/destination1.png); ' disabled="disabled"></button> 
		 <input type='text' name='destination' class='tf' placeholder='Destination' required/>			<br /><br /> 
		</center>
		 </div>	
		
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Hotel Required <br /></p>
		<button class='bt' style='background-image:url(images/reg/hotel.png); ' disabled="disabled"></button> -->
<!-- 		 <select class='tf' placeholder='Hotel Category' name='cat'> -->
<!-- 		 <option>1 Star</option> -->
<!-- 		 <option>2 Star</option> -->
<!-- 		 <option>3 Star</option> -->
<!-- 		 <option>4 Star</option> -->
<!-- 		 <option>5 Star</option> -->
<!-- 		 </select> -->
 		<!--<input type='text' name='hotel-req' class='tf' placeholder='Hotel Required' style="width:160px;" disabled="disabled" required/>		
		<input type="radio" value='yes' style="margin-left: 40px;"  name='hotel' value="yes"/>Yes
		 <input type="radio" value="no" name="hotel" style="margin-left: 20px;" value="no"/>No
		 <br/><br/>
		  </center>
		 </div>
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Hotel Required Name<br /></p>
		 <button class='bt' style='background-image:url(images/reg/hotel.png); ' disabled="disabled"></button> 
		 <input type='text' name='h_require' class='tf' placeholder='Hotel required name' default=0 required/>			<br /><br /> 
		 </center>
		 </div>
		 
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Hotel Given Name<br /></p>
		 <button class='bt' style='background-image:url(images/reg/hotel.png); ' disabled="disabled"></button> 
		 <input type='text' name='h_given' class='tf' placeholder='Hotel given name' default=0 required/>			<br /><br />
		  </center>
		 </div>
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Number of Rooms<br /></p>
		<button class='bt' style='background-image:url(images/reg/room.png); ' disabled="disabled"></button> 
		 <input type='text' name='rooms' class='tf' placeholder='Number of Rooms' default=0 required/>			<br /><br /> 
		 </center>
		 </div>
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Vehicle<br /></p>
		<button class='bt' style='background-image:url(images/reg/vehicl.png); ' disabled="disabled"></button> 
		 <input type='text' name='vehicle' class='tf' placeholder='Vehicle' default=0 required/>			<br /><br /> 
		 </center>
		 </div>
		
		</fieldset>
		</div>
		
		<div id='pay' style="height: auto; width: 100%; float:left;">
			<hr style="size=5px;"/>
		-->
		<fieldset>	
		<legend>Payment Information</legend>
		
		
		
		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">Payment mode<br /><br /></p>
		<input type="radio" name='mode' style="margin-left: 10px;" id="cash" value="debit" onclick="selection()"/>  Debit
		<input type="radio" name='mode' style="margin-left: 40px;" id="cheque" value="credit" onclick="selection()"/>  Credit
		<input type="radio" name='mode' style="margin-left: 30px;" id="online" value="wire" onclick="selection()"/>  Wire
		</center>
		</div>
		
		
		<script>
		
		function selection()
		{
			if(document.getElementById('cash').checked)
			{
				document.getElementById('trans-div').style.visibility= 'hidden';
				
				document.getElementById('bank-div').style.visibility= 'hidden';								
				
				document.getElementById('cheq-div').style.visibility= 'hidden';
				
			}
			else if(document.getElementById('cheque').checked)
			{
				document.getElementById('trans-div').style.visibility= 'hidden';
				
				document.getElementById('bank-div').style.visibility= 'visible';								
				
				document.getElementById('cheq-div').style.visibility= 'visible';
				
			}
			else if(document.getElementById('online').checked)
			{
				document.getElementById('trans-div').style.visibility= 'visible';
				document.getElementById('bank-div').style.visibility= 'hidden';
				document.getElementById('cheq-div').style.visibility= 'hidden';				
			}	
		}
		
		
		</script>
		
		<br/><br/>
		
		<!-- <div id="trans-div" style="width:400px; height:50px; visibility:hidden;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:0px;">Transaction ID<br /></p>
		<button class='bt' id='trans-bt' style='background-image:url(images/reg/rs.png); ' disabled="disabled"></button> 
		 <input type='text' name='trans' id="trans" class='tf' placeholder='Transaction ID' />			<br /><br /> 
		</center>
		</div>-->
		
		
		 <div id="total-div" style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">Total Amount(In $)<br /></p>
		<button class='bt' style='background-image:url(images/reg/rs1.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt' class='tf' placeholder='Total Amount (In $)' default=0 required/>			<br /><br /> 
		</center>
		</div>
		
		 <div id="total-div" style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">Status<br /></p>
		<button class='bt' style='background-image:url(images/reg/rs1.png); ' disabled="disabled"></button> 
		 <input type='text' name='status' class='tf' placeholder='Open/Close' default=0 required/>			<br /><br /> 
		</center>
		</div>
		
		
		<!-- <div id="paid-div" style="width:400px; height:50px; "><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Amount Paid<br /></p>
		<button class='bt' style='background-image:url(images/reg/paid.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt-paid' class='tf' placeholder='Amount Paid'  required/>			<br /><br /> 
		 </center>
		 </div>
		 
		 <div id="due-div" style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Amount Due<br /></p>
		<button class='bt' style='background-image:url(images/reg/due.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt-due' class='tf' placeholder='Amount Due'  required/>			<br /><br /> 
		 </center>
		 </div>-->
		 
		 <div id="bank-div" style="width:400px; height:50px; visibility:hidden;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Bank<br /></p>
		 <button class='bt' id='bank-bt' style='background-image:url(images/reg/rs.png);' disabled="disabled"></button> 
		 <input type='text' id="bank" name='bank' class='tf' placeholder='Bank'  />			<br /><br /> 
		</center>
		</div>
		
		
		 <!--<div id="cheq-div" style="width:400px; height:50px; visibility:hidden;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Cheque Number <br /></p>
		<button class='bt' id='cheq-bt' style='background-image:url(images/reg/paid.png);' disabled="disabled"></button> 
		 <input type='text' id="cheq" name='cheq' class='tf' placeholder='Cheque Number' />		
		 </center>
		 </div>-->
		 <br /><br />
		
		</fieldset>
		
		<input type="submit" style='border:outset;'/>
		<input type='reset' name='Reset' value='Reset' style='border:outset;' /> 
	
		 	</form></center>
		
		</div>			 
		
		
			
				</div>
		 	
		 	
		 		</div></div>
		 	
		 	
		 	
</center>
</body>
</html>

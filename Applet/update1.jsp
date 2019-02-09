<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- <meta http-equiv="refresh" content="5"/> -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Registration form</title>
<link href='reg.css' rel='stylesheet' type='text/css' /> 
 <link rel='stylesheet' href='index.css' type=text/css /> 

 <link rel=stylesheet href=bootstrap.min.css> 
 <link rel=stylesheet href=bootstrap-theme.min.css> 
 <script src=jquery.min.js></script> 
 <script src=bootstrap.min.js></script> 
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

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBInfo"%>

	
<body>
	
          
          





<center>
	

		
<div id='main' style="background-color: black;">

	<center>	
	
	 <div id=form-head style="width:1000px;"> <!--header-left--> 
				
			 <div id=form-head> <!--header-left--> 
				
				 <div id=head-mid style="width: 80%; float:left;"> 
				 <h2 id=heading align='left' style="padding-left:20px;">Update Details</h2> </div>
						<div id=head-right style="padding-top: 20px;float:left; width:20%;"> 
						 <p style=color:#FFF; margin-left:50px; margin-top:0px; padding-top:0px;> 
							
							<a href="moderator.jsp" style="color: white; ">Home</a>
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
 	 
	
	<%
		
		String visit=request.getParameter("id2");
		System.out.println("visit me gyi:::"+visit);
  		
	   Connection con=DBInfo.con;
	   
	   String name="", email="", phone="", remote="", address="", country="", state="", city="", pur_date="", mode="", trans="", amt="", bank="", cheq="";
	   
		String query="select * from visit where visit_num="+visit+";";
		
		PreparedStatement ps=con.prepareStatement(query);
        ResultSet res=ps.executeQuery();
	    while(res.next())
		{
		     name=res.getString("name");
			 remote=res.getString("remote");
			 email=res.getString("email");
			 phone=res.getString("phone");
			 address=res.getString("address");
			 country=res.getString("country");
			 state=res.getString("state");
			 city=res.getString("city");
			 
			 pur_date=res.getString("pur_date");
			
			 mode=res.getString("mode");
			 	 trans=res.getString("transaction");
			 amt=res.getString("amt");
			 
		
			  bank=res.getString("bank");
			   cheq=res.getString("cheq");
			}
			%>
	
		  	<div id='form' style="height:auto; width:1000px;" >
	<br />	
		 	
		<form onsubmit="return checkForm(this);" action="update.jsp"  >
		
					<div id="form-left"  style="height:auto; width:50%; float:left;" >
						<fieldset>
				          <legend> Basic Information</legend>
				          <%
				          	out.println("<input type=hidden name=visitnum value="+visit+">");
				          
				           %>
						   <div style="width:400px; height:50px;"><center>
							 <p style="color:blue; margin-bottom:0px; margin-top:10px;"> Visit Number<br /></p>
						      <button class='bt' style='background-image:url(images/reg/visit_num.png);' disabled="disabled"></button>   
						      <input type="text" disabled="disabled" id='visit' name='visit' value="<%=visit%>" class='tf' required/>
						      		<br />    <br/>
								</center></div>
								
							  <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">  Name<br /></p>
						 <button class='bt' style="background-image:url(images/reg/icon-name.png);" disabled="disabled"></button> 
							 <input type='text' id='name' name='name' class='tf' value="<%=name %>" required/>			<br /><br />
							 </center></div>
							 
							 
						        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Remote ID<br /></p>
						<button class='bt' style='background-image:url(images/reg/icon-name.png); ' disabled="disabled"></button> 
						 <input type='text' id='refer' name='refer' class='tf' value="<%=remote%>" required/>			<br /><br /> 
								</center></div>
								
								        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Email<br /></p>
							 <button class='bt' style="background-image:url(images/reg/iconSmallEmail.jpeg);" disabled="disabled"></button> 
							 <input type='email' name='email' class='tf' value="<%=email %>"  required/>		<br /><br />
</center></div>				
				
				
				        <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Phone<br /></p>
							 <button class='bt' style='background-image:url(images/reg/ph-icon.png);' disabled="disabled"></button> 
							 <input type='text' id='phone' name='phone' class='tf' value="<%=phone%>" required/>	<br /><br /> 
				</center></div>
				
				 		 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Address<br /></p>
							 <button class='bt' style='background-image:url(images/reg/loc-icon.png);' disabled="disabled"></button>
							 <input type='text' id='address' name='address' class='tf' value="<%= address %>" />	<br /><br /> 
</center></div>				
				
						 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Country<br /></p>
							<button class='bt' style='background-image:url(images/reg/country.png);' disabled="disabled"></button> 
							 <input type='text' name='country' class='tf' value="<%=country%>"   />	<br /><br /> 
				</center></div>
				
						 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> State<br /></p>
							<button class='bt' style='background-image:url(images/reg/state.png);' disabled="disabled"></button> 
							 <input type='text' name='state' class='tf' value="<%=state%>" />	<br /><br /> 
							 </center></div>
				
									 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> City<br /></p>
							<button class='bt' style='background-image:url(images/reg/city.png);' disabled="disabled"></button> 
							 <input type='text' name='city' class='tf' value="<%=city%>" />	<br /><br /> 
</center></div>				
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
		
					<div id="form-ryt"  style="height:auto; width:50%; float:left; " >
					
					<fieldset>
					<legend>Visit Information</legend>
					
				
					
					
					
					
					 <div style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Purchase date<br /></p>
					 <button class='bt' style='background-image:url(images/reg/cal-icon.png); background-position:center; ' disabled="disabled"></button> 
					 <input type='text' onfocus="this.type='date'" onblur= "this.type ='text'" name='pur_date' class='tf' value="<%= pur_date%>" required /><br /><br /> 
					</center></div><br /><br />
			
			
							
					
					
			<!-- 		 <select class='tf' placeholder='Hotel Category' name='cat'> -->
			<!-- 		 <option>1 Star</option> -->
			<!-- 		 <option>2 Star</option> -->
			<!-- 		 <option>3 Star</option> -->
			<!-- 		 <option>4 Star</option> -->
			<!-- 		 <option>5 Star</option> -->
			<!-- 		 </select> -->
			 		<legend> Payment Information				</legend>
				
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
		
			
		<input type="radio" id="cash" name='mode' style="margin-left: 10px;" value="cash" onclick="selection()"  <%if(mode.equalsIgnoreCase("cash")){ %>checked<%} %>/>  Cash
		<input type="radio" id="cheque" name='mode' style="margin-left: 40px;" onclick="selection()" value="cheque" <%if(mode.equalsIgnoreCase("cheque")){ %>checked<%} %>/>  Cheque
	<input type="radio" id="online" name='mode' style="margin-left: 30px;" onclick="selection()"  value="online" <%if(mode.equalsIgnoreCase("online")){ %>checked<%} %>/>  Online
				
				<br/><br/>
				
	 <div id="trans-div" style="width:400px; height:50px; visibility:hidden;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:0px;">Transaction ID<br /></p>
			<button class='bt' id='trans-bt' style='background-image:url(images/reg/rs.png);' disabled="disabled"></button> 
		 <input type='text' name='trans' id="trans" class='tf' placeholder='Transaction ID' value="<%= trans%>" />			<br /><br /> 
		</center></div>
		
		
		 <div id="total-div" style="width:400px; height:50px;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;">Total Amount<br /></p>
			<button class='bt' style='background-image:url(images/reg/rs.png); ' disabled="disabled"></button> 
		 <input type='text' name='amt' class='tf' placeholder='Total Amount' value="<%= amt%>"  required/><br />
		 <br /> 
		</center></div>
		
		 
		
		
		 <div id="bank-div" style="width:400px; height:50px; visibility:hidden;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Bank<br /></p>
		 <button class='bt' id='bank-bt' style='background-image:url(images/reg/rs.png); ' disabled="disabled"></button> 
		 <input type='text' id="bank" name='bank' class='tf' placeholder='Bank' value="<%= bank%>" />			<br /><br /> 
		</center></div>	
		
		<div id="cheq-div" style="width:400px; height:50px; visibility:hidden;"><center>
		 <p style="color:blue; margin-bottom:0px; margin-top:20px;"> Cheque Number <br /></p>
		<button class='bt' id='cheq-bt' style='background-image:url(images/reg/paid.png); ' disabled="disabled"></button> 
		 <input type='text' id="cheq" name='cheq' class='tf' placeholder='Cheque Number' value="<%= cheq%>"  />			<br />
		
		 <br /> 
		 </center></div><br /><br />
		 
		  <input name="submit" type="submit" style="border:outset;" value="Update"/>
				</fieldset>
				<br/><br/>
				</div>			 
		
	   </form>
		 	
		 	</div>
		 	
					 
		  </center>
		 </div>
					 		 
					
					</fieldset>
				</div>
		
				 <div id='pay' style="height: auto; width:100%; float:left;">
					<hr style="size=5px;"/>
				
				<fieldset>	
				
		 		
		
		 
	</div>

	</body>
</html>          


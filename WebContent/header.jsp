<%--

    Online Movie Ticketing System
    Copyright (C) 2017 - Sayan Paul, Arjun Sengupta, Shubham Ghosh

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

--%>

<!-- HEADER FILE -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<title>Online Movie Ticketing System</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

<!-- Custom Theme files -->
<link rel="stylesheet" href="css/menu.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <link rel="stylesheet" href="/resources/demos/style.css">

  <script src="https://code.jquery.com/jquery-1.12.4.js (https://code.jquery.com/jquery-1.12.4.js)"></script>

  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js (https://code.jquery.com/ui/1.12.1/jquery-ui.js)"></script>
<script> 

$( function() {

  $( "#datepicker" ).datepicker();

} );
</script>

<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->

<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>

<!---- start-smooth-scrolling---->

	<!-- header-section-starts -->
		<div class="header-top-strip">
		<div class="container">
		
	<%@page import="com.movieticket.model.*" %>
	<%@page import="com.movieticket.controller.*" %>
	<%! User u=null;  %>
   <div class="header-top-left">
   
   <%
    u = (User) session.getAttribute("user");
   	if(u != null){
   		String name= u.getname();
   		if(u.gettype().equals("customer")){   			
	   		out.println("Welcome, <a href=\"custprofile.jsp\">"+name+"</a>  |  ");
   		}
   		else if(u.gettype().equals("halladmin")){
   			long haID = u.getid();
   			String hallName = new Hall().getHallByAdminId(haID).getHallName();
   			out.println("Welcome, <a href=\"custprofile.jsp\">" + name + "</a> | Your Hall: " + hallName + " ");
   		}
   		else{
   			out.println("Welcome, " + name );
   		}
   	}
   	else
   	{
   		if(request.getParameter("msg")!=null)
   		{
   			out.println("<font color=red>"+request.getParameter("msg")+"</font>");
   		}
   	}
   %>
 <!-- Button trigger modal  -->
	
	<!---pop-up-box---->  
					<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
					<div id="small-dialog1" class="mfp-hide">
						<div class="select-city">
							<h3>Select Your City</h3>
							<select class="list_of_cities"><option value="">Select Your City</option><optgroup label="Andhra Pradesh"><option style="padding-left: 10px;" value="ANAN">Anantapur</option><option style="padding-left: 10px;" value="CHDM">Chinnamandem</option><option style="padding-left: 10px;" value="GUDR">Gudur</option><option style="padding-left: 10px;" value="GUNT">Guntur</option><option style="padding-left: 10px;" value="JANG">Jangareddy Gudem</option><option style="padding-left: 10px;" value="KAKI">Kakinada</option><option style="padding-left: 10px;" value="KURN">Kurnool</option><option style="padding-left: 10px;" value="MART">Martur</option><option style="padding-left: 10px;" value="PRVT">Parvathipuram</option><option style="padding-left: 10px;" value="RAJA">Rajahmundry</option><option style="padding-left: 10px;" value="TENA">Tenali</option><option style="padding-left: 10px;" value="TIRU">Tirupati</option><option style="padding-left: 10px;" value="VIJA">Vijayawada</option><option style="padding-left: 10px;" value="VIZA">Vizag</option><option style="padding-left: 10px;" value="VIZI">Vizianagaram</option></optgroup><optgroup label="Arunachal Pradesh"><option style="padding-left: 10px;" value="TAWA">Tawang</option><option style="padding-left: 10px;" value="ZIRO">Ziro</option></optgroup><optgroup label="Assam"><option style="padding-left: 10px;" value="DIB">Dibrugarh</option><option style="padding-left: 10px;" value="GUW">Guwahati</option><option style="padding-left: 10px;" value="JORT">Jorhat</option><option style="padding-left: 10px;" value="SIL">Silchar</option><option style="padding-left: 10px;" value="TINS">Tinsukia</option></optgroup><optgroup label="Bihar"><option style="padding-left: 10px;" value="HAJI">Hajipur</option><option style="padding-left: 10px;" value="PATN">Patna</option></optgroup><optgroup label="Chhattisgarh"><option style="padding-left: 10px;" value="BHILAI">Bhilai</option><option style="padding-left: 10px;" value="BILA">Bilaspur</option><option style="padding-left: 10px;" value="CHAM">Champa</option><option style="padding-left: 10px;" value="DHMT">Dhamtari</option><option style="padding-left: 10px;" value="DURG">Durg</option><option style="padding-left: 10px;" value="JAGD">Jagdalpur</option><option style="padding-left: 10px;" value="KAWA">Kawardha</option><option style="padding-left: 10px;" value="KNGN">Kondagaon</option><option style="padding-left: 10px;" value="KRBA">Korba</option><option style="padding-left: 10px;" value="RAIG">Raigarh</option><option style="padding-left: 10px;" value="RAIPUR">Raipur</option><option style="padding-left: 10px;" value="TNO">Tilda Neora</option></optgroup><optgroup label="Croatia"><option style="padding-left: 10px;" value="DBRV">Dubrovnik</option></optgroup><optgroup label="Goa"><option style="padding-left: 10px;" value="GOA">Goa</option></optgroup><optgroup label="Gujarat"><option style="padding-left: 10px;" value="ADPR">Adipur</option><option style="padding-left: 10px;" value="AHD">Ahmedabad</option><option style="padding-left: 10px;" value="AND">Anand</option><option style="padding-left: 10px;" value="ANKL">Ankleshwar</option><option style="padding-left: 10px;" value="BHAR">Bharuch</option><option style="padding-left: 10px;" value="BHNG">Bhavnagar</option><option style="padding-left: 10px;" value="DAMA">Daman</option><option style="padding-left: 10px;" value="GDHAM">Gandhidham</option><option style="padding-left: 10px;" value="GNAGAR">Gandhinagar</option><option style="padding-left: 10px;" value="HIMM">Himmatnagar</option><option style="padding-left: 10px;" value="IDAR">Idar</option><option style="padding-left: 10px;" value="JAM">Jamnagar</option><option style="padding-left: 10px;" value="JETP">Jetpur</option><option style="padding-left: 10px;" value="JUGH">Junagadh</option><option style="padding-left: 10px;" value="KTCH">Kutch</option><option style="padding-left: 10px;" value="NADI">Nadiad</option><option style="padding-left: 10px;" value="NVSR">Navsari</option><option style="padding-left: 10px;" value="PALN">Palanpur</option><option style="padding-left: 10px;" value="PATA">Patan</option><option style="padding-left: 10px;" value="RAJK">Rajkot</option><option style="padding-left: 10px;" value="SANA">Sanand</option><option style="padding-left: 10px;" value="SILV">Silvassa</option><option style="padding-left: 10px;" value="SURT">Surat</option><option style="padding-left: 10px;" value="VAD">Vadodara</option><option style="padding-left: 10px;" value="VLSD">Valsad</option><option style="padding-left: 10px;" value="VAPI">Vapi</option></optgroup><optgroup label="Haryana"><option style="padding-left: 10px;" value="AMB">Ambala</option><option style="padding-left: 10px;" value="DHRA">Dharuhera</option><option style="padding-left: 10px;" value="FARI">Faridabad</option><option style="padding-left: 10px;" value="HISR">Hisar</option><option style="padding-left: 10px;" value="JHAJ">Jhajjar</option><option style="padding-left: 10px;" value="JIND">Jind</option><option style="padding-left: 10px;" value="KAIT">Kaithal</option><option style="padding-left: 10px;" value="KARN">Karnal</option><option style="padding-left: 10px;" value="KUND">Kundli</option><option style="padding-left: 10px;" value="KURU">Kurukshetra</option><option style="padding-left: 10px;" value="PNCH">Panchkula</option><option style="padding-left: 10px;" value="PAN">Panipat</option><option style="padding-left: 10px;" value="REWA">Rewari</option><option style="padding-left: 10px;" value="ROH">Rohtak</option><option style="padding-left: 10px;" value="SISA">Sirsa</option><option style="padding-left: 10px;" value="RAIH">Sonipat</option><option style="padding-left: 10px;" value="YAMU">Yamunanagar</option></optgroup><optgroup label="Himachal Pradesh"><option style="padding-left: 10px;" value="BADD">Baddi</option><option style="padding-left: 10px;" value="DMSL">Dharamsala</option><option style="padding-left: 10px;" value="HAMI">Hamirpur (HP)</option><option style="padding-left: 10px;" value="KANG">Kangra</option><option style="padding-left: 10px;" value="KULU">Kullu</option><option style="padding-left: 10px;" value="MANA">Manali</option><option style="padding-left: 10px;" value="SMLA">Shimla</option><option style="padding-left: 10px;" value="SCO">Solan</option></optgroup><optgroup label="Jammu and Kashmir"><option style="padding-left: 10px;" value="JAMM">Jammu</option><option style="padding-left: 10px;" value="KATH">Kathua</option><option style="padding-left: 10px;" value="KATR">Katra</option><option style="padding-left: 10px;" value="LEHA">Ladakh</option></optgroup><optgroup label="Jharkhand"><option style="padding-left: 10px;" value="BOKA">Bokaro</option><option style="padding-left: 10px;" value="DOGH">Deoghar</option><option style="padding-left: 10px;" value="DHAN">Dhanbad(Jharkhand)</option><option style="padding-left: 10px;" value="JMDP">Jamshedpur</option><option style="padding-left: 10px;" value="RANC">Ranchi</option></optgroup><optgroup label="Karnataka"><option style="padding-left: 10px;" value="BELG">Belgaum</option><option style="padding-left: 10px;" value="BANG">Bengaluru</option><option style="padding-left: 10px;" value="BIDR">Bidar</option><option style="padding-left: 10px;" value="COOR">Coorg</option><option style="padding-left: 10px;" value="DAVA">Davangere</option><option style="padding-left: 10px;" value="GULB">Gulbarga</option><option style="padding-left: 10px;" value="HUBL">Hubli</option><option style="padding-left: 10px;" value="KWAR">Karwar</option><option style="padding-left: 10px;" value="MLR">Mangalore</option><option style="padding-left: 10px;" value="MANI">Manipal</option><option style="padding-left: 10px;" value="MYS">Mysore</option><option style="padding-left: 10px;" value="TUMK">Tumkur</option><option style="padding-left: 10px;" value="UDUP">Udupi</option></optgroup><optgroup label="Kerala"><option style="padding-left: 10px;" value="99">Alappuzha</option><option style="padding-left: 10px;" value="ANHL">Anchal</option><option style="padding-left: 10px;" value="ANGA">Angamaly</option><option style="padding-left: 10px;" value="ERNK">Ernakulam</option><option style="padding-left: 10px;" value="KANN">Kannur</option><option style="padding-left: 10px;" value="KARG">Karunagapally</option><option style="padding-left: 10px;" value="KOCH">Kochi</option><option style="padding-left: 10px;" value="KOLM">Kollam</option><option style="padding-left: 10px;" value="KTYM">Kottayam</option><option style="padding-left: 10px;" value="MVLR">Mavellikara</option><option style="padding-left: 10px;" value="THAL">Thalayolaparambu</option><option style="padding-left: 10px;" value="THSR">Thrissur</option><option style="padding-left: 10px;" value="TRIV">Trivandrum</option></optgroup><optgroup label="Madhya Pradesh"><option style="padding-left: 10px;" value="BLGT">Balaghat</option><option style="padding-left: 10px;" value="BETU">Betul</option><option style="padding-left: 10px;" value="BHOP">Bhopal</option><option style="padding-left: 10px;" value="CHIN">Chhindwara</option><option style="padding-left: 10px;" value="DEWAS">Dewas</option><option style="padding-left: 10px;" value="GWAL">Gwalior</option><option style="padding-left: 10px;" value="HRDA">Harda</option><option style="padding-left: 10px;" value="IND">Indore</option><option style="padding-left: 10px;" value="JABL">Jabalpur</option><option style="padding-left: 10px;" value="KHDW">Khandwa</option><option style="padding-left: 10px;" value="NMCH">Neemuch</option><option style="padding-left: 10px;" value="RATL">Ratlam</option><option style="padding-left: 10px;" value="SAMP">Sagar</option><option style="padding-left: 10px;" value="SARN">Sarni</option><option style="padding-left: 10px;" value="SEHO">Sehore</option><option style="padding-left: 10px;" value="SEON">Seoni</option><option style="padding-left: 10px;" value="SHIV">Shivpuri</option><option style="padding-left: 10px;" value="UJJN">Ujjain</option></optgroup><optgroup label="Maharashtra"><option style="padding-left: 10px;" value="AHMED">Ahmednagar</option><option style="padding-left: 10px;" value="AKOL">Akola</option><option style="padding-left: 10px;" value="ALBG">Alibaug</option><option style="padding-left: 10px;" value="AMRA">Amravati</option><option style="padding-left: 10px;" value="AURA">Aurangabad</option><option style="padding-left: 10px;" value="BARA">Baramati</option><option style="padding-left: 10px;" value="BEED">Beed</option><option style="padding-left: 10px;" value="BHIW">Bhiwandi</option><option style="padding-left: 10px;" value="BOIS">Boisar</option><option style="padding-left: 10px;" value="BULD">Buldana</option><option style="padding-left: 10px;" value="CHAN">Chandrapur</option><option style="padding-left: 10px;" value="DHLE">Dhule</option><option style="padding-left: 10px;" value="DHUL">Dhulia</option><option style="padding-left: 10px;" value="INDA">Indapur</option><option style="padding-left: 10px;" value="JALG">Jalgaon</option><option style="padding-left: 10px;" value="KHED">Khed</option><option style="padding-left: 10px;" value="KHOP">Khopoli</option><option style="padding-left: 10px;" value="KOLH">Kolhapur</option><option style="padding-left: 10px;" value="LAT">Latur</option><option style="padding-left: 10px;" value="LAVA">Lavasa</option><option style="padding-left: 10px;" value="LNVL">Lonavala</option><option style="padding-left: 10px;" value="MHAD">Mahad</option><option style="padding-left: 10px;" value="MALE">Malegaon</option><option style="padding-left: 10px;" value="MUMBAI">Mumbai</option><option style="padding-left: 10px;" value="NAGP">Nagpur</option><option style="padding-left: 10px;" value="NAND">Nanded</option><option style="padding-left: 10px;" value="NASK">Nashik</option><option style="padding-left: 10px;" value="PALG">Palghar</option><option style="padding-left: 10px;" value="PANC">Panchgani</option><option style="padding-left: 10px;" value="PARB">Parbhani</option><option style="padding-left: 10px;" value="PEN">Pen</option><option style="padding-left: 10px;" value="PHAL">Phaltan</option><option style="padding-left: 10px;" value="PIMP">Pimpri</option><option style="padding-left: 10px;" value="PUNE">Pune</option><option style="padding-left: 10px;" value="RAI">Raigad</option><option style="padding-left: 10px;" value="SANG">Sangli</option><option style="padding-left: 10px;" value="SATA">Satara</option><option style="padding-left: 10px;" value="SOLA">Solapur</option><option style="padding-left: 10px;" value="TMB">Tembhode</option><option style="padding-left: 10px;" value="UDGR">Udgir</option><option style="padding-left: 10px;" value="WARD">Wardha</option></optgroup><optgroup label="Meghalaya"><option style="padding-left: 10px;" value="RNG">Rongjeng</option><option style="padding-left: 10px;" value="SHLG">Shillong</option></optgroup><optgroup label="Nagaland"><option style="padding-left: 10px;" value="DMPR">Dimapur</option></optgroup><optgroup label="NCR"><option style="padding-left: 10px;" value="NCR">National Capital Region (NCR)</option></optgroup><optgroup label="Orissa"><option style="padding-left: 10px;" value="BLSR">Balasore</option><option style="padding-left: 10px;" value="BHUB">Bhubaneshwar</option><option style="padding-left: 10px;" value="PURI">Puri</option><option style="padding-left: 10px;" value="SAMB">Sambalpur</option></optgroup><optgroup label="Punjab"><option style="padding-left: 10px;" value="ABOR">Abohar</option><option style="padding-left: 10px;" value="AHMG">Ahmedgarh</option><option style="padding-left: 10px;" value="AMRI">Amritsar</option><option style="padding-left: 10px;" value="BNGA">Banga</option><option style="padding-left: 10px;" value="BAR">Barnala</option><option style="padding-left: 10px;" value="BHAT">Bathinda</option><option style="padding-left: 10px;" value="CHD">Chandigarh</option><option style="padding-left: 10px;" value="HOSH">Hoshiarpur</option><option style="padding-left: 10px;" value="JALA">Jalandhar</option><option style="padding-left: 10px;" value="KHAN">Khanna</option><option style="padding-left: 10px;" value="KOTK">Kotkapura</option><option style="padding-left: 10px;" value="LUDH">Ludhiana</option><option style="padding-left: 10px;" value="MNSA">Mansa</option><option style="padding-left: 10px;" value="MOGA">Moga</option><option style="padding-left: 10px;" value="MOHL">Mohali</option><option style="padding-left: 10px;" value="NAVN">Nawanshahr</option><option style="padding-left: 10px;" value="PATH">Pathankot</option><option style="padding-left: 10px;" value="PATI">Patiala</option><option style="padding-left: 10px;" value="PATR">Patran</option><option style="padding-left: 10px;" value="RUPN">Rupnagar</option><option style="padding-left: 10px;" value="SANR">Sangrur</option><option style="padding-left: 10px;" value="ZIRK">Zirakpur</option></optgroup><optgroup label="Rajasthan"><option style="padding-left: 10px;" value="ABRD">Abu Road</option><option style="padding-left: 10px;" value="AJMER">Ajmer</option><option style="padding-left: 10px;" value="ALSR">Alsisar (Rajasthan)</option><option style="padding-left: 10px;" value="ALWR">Alwar</option><option style="padding-left: 10px;" value="BANS">Banswara</option><option style="padding-left: 10px;" value="BEAW">Beawar</option><option style="padding-left: 10px;" value="BHIL">Bhilwara</option><option style="padding-left: 10px;" value="BHWD">Bhiwadi</option><option style="padding-left: 10px;" value="BIK">Bikaner</option><option style="padding-left: 10px;" value="DAUS">Dausa</option><option style="padding-left: 10px;" value="JAIP">Jaipur</option><option style="padding-left: 10px;" value="JSMR">Jaisalmer</option><option style="padding-left: 10px;" value="JODH">Jodhpur</option><option style="padding-left: 10px;" value="KISH">Kishangarh</option><option style="padding-left: 10px;" value="KOTA">Kota</option><option style="padding-left: 10px;" value="NEEM">Neemrana</option><option style="padding-left: 10px;" value="SIKR">Sikar</option><option style="padding-left: 10px;" value="SRIG">Sri Ganganagar</option><option style="padding-left: 10px;" value="UDAI">Udaipur</option></optgroup><optgroup label="Singapore"><option style="padding-left: 10px;" value="SING">Singapore</option></optgroup><optgroup label="Tamil Nadu"><option style="padding-left: 10px;" value="ARIY">Ariyalur</option><option style="padding-left: 10px;" value="ARNI">Arni</option><option style="padding-left: 10px;" value="ARUP">Aruppukottai</option><option style="padding-left: 10px;" value="CHEN">Chennai</option><option style="padding-left: 10px;" value="COIM">Coimbatore</option><option style="padding-left: 10px;" value="CUDD">Cuddalore</option><option style="padding-left: 10px;" value="DHAR">Dharapuram</option><option style="padding-left: 10px;" value="DMPI">Dharmapuri</option><option style="padding-left: 10px;" value="DIND">Dindigul</option><option style="padding-left: 10px;" value="EROD">Erode</option><option style="padding-left: 10px;" value="KNPM">Kanchipuram</option><option style="padding-left: 10px;" value="KUMB">Kumbakonam</option><option style="padding-left: 10px;" value="MADU">Madurai</option><option style="padding-left: 10px;" value="MTPM">Mettuppalayam</option><option style="padding-left: 10px;" value="OOTY">Ooty</option><option style="padding-left: 10px;" value="POND">Pondicherry</option><option style="padding-left: 10px;" value="PUDH">Pudhukottai</option><option style="padding-left: 10px;" value="SALM">Salem</option><option style="padding-left: 10px;" value="SIV">Sivakasi</option><option style="padding-left: 10px;" value="TAJO">Tanjore</option><option style="padding-left: 10px;" value="TENK">Tenkasi</option><option style="padding-left: 10px;" value="TIRV">Tirunelveli</option><option style="padding-left: 10px;" value="TIRP">Tirupur</option><option style="padding-left: 10px;" value="TRIC">Trichy</option><option style="padding-left: 10px;" value="VELL">Vellore</option></optgroup><optgroup label="Telangana"><option style="padding-left: 10px;" value="ADIL">Adilabad</option><option style="padding-left: 10px;" value="AMAN">Amangal</option><option style="padding-left: 10px;" value="HYD">Hyderabad</option><option style="padding-left: 10px;" value="KARIM">Karimnagar</option><option style="padding-left: 10px;" value="KHAM">Khammam</option><option style="padding-left: 10px;" value="MRGD">Miryalaguda</option><option style="padding-left: 10px;" value="NIZA">Nizamabad</option><option style="padding-left: 10px;" value="PEDA">Peddapalli</option><option style="padding-left: 10px;" value="POCH">Pochampally</option><option style="padding-left: 10px;" value="SDDP">Siddipet</option><option style="padding-left: 10px;" value="SURY">Suryapet</option><option style="padding-left: 10px;" value="UPPA">Uppal</option><option style="padding-left: 10px;" value="WAR">Warangal</option></optgroup><optgroup label="Tripura "><option style="padding-left: 10px;" value="AGAR">Agartala</option></optgroup><optgroup label="Uttar Pradesh"><option style="padding-left: 10px;" value="AGRA">Agra</option><option style="padding-left: 10px;" value="ALI">Aligarh</option><option style="padding-left: 10px;" value="ALLH">Allahabad</option><option style="padding-left: 10px;" value="BARE">Bareilly</option><option style="padding-left: 10px;" value="BIJ">Bijnor</option><option style="padding-left: 10px;" value="GHAR">Ghazipur</option><option style="padding-left: 10px;" value="GRKP">Gorakhpur</option><option style="padding-left: 10px;" value="KANP">Kanpur</option><option style="padding-left: 10px;" value="LUCK">Lucknow</option><option style="padding-left: 10px;" value="MATH">Mathura</option><option style="padding-left: 10px;" value="MERT">Meerut</option><option style="padding-left: 10px;" value="MORA">Moradabad</option><option style="padding-left: 10px;" value="MUZ">Muzaffarnagar</option><option style="padding-left: 10px;" value="RENU">Renukoot</option><option style="padding-left: 10px;" value="SAHA">Saharanpur</option><option style="padding-left: 10px;" value="VAR">Varanasi</option></optgroup><optgroup label="Uttarakhand"><option style="padding-left: 10px;" value="DEH">Dehradun</option><option style="padding-left: 10px;" value="HRDR">Haridwar</option><option style="padding-left: 10px;" value="MSS">Mussoorie</option><option style="padding-left: 10px;" value="NAIN">Nainital</option><option style="padding-left: 10px;" value="RAMN">Ramnagar</option><option style="padding-left: 10px;" value="RKES">Rishikesh</option><option style="padding-left: 10px;" value="ROOR">Roorkee</option><option style="padding-left: 10px;" value="RUDP">Rudrapur</option></optgroup><optgroup label="West Bengal"><option style="padding-left: 10px;" value="ASANSOL">Asansol</option><option style="padding-left: 10px;" value="BEHA">Berhampore</option><option style="padding-left: 10px;" value="BLPR">Bolpur</option><option style="padding-left: 10px;" value="BURD">Burdwan</option><option style="padding-left: 10px;" value="COBE">Cooch Behar</option><option style="padding-left: 10px;" value="DARJ">Darjeeling</option><option style="padding-left: 10px;" value="DURGA">Durgapur</option><option style="padding-left: 10px;" value="HALD">Haldia</option><option style="padding-left: 10px;" value="HOOG">Hooghly</option><option style="padding-left: 10px;" value="HWRH">Howrah</option><option style="padding-left: 10px;" value="JPG">Jalpaiguri</option><option style="padding-left: 10px;" value="KOLK">Kolkata</option><option style="padding-left: 10px;" value="RANA">Ranaghat</option><option style="padding-left: 10px;" value="SILI">Siliguri</option></optgroup></select>
							<div class="clearfix"></div>
						</div>
					</div>	

                     <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
	</div>


   <div class="header-top-right">
  
	<!-- button trigger modal  -->
	<%	
		if(u == null){	
	%>
		<!-- Large modal -->
		<button class="btn btn-primary" data-toggle="modal" data-target=".myModal">Login</button>
		<div class="modal fade myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
		    aria-hidden="true">
		    <div class="modal-dialog modal-lg">
		        <div class="modal-content">
		            <div class="modal-header">
		                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
		                    &times;</button>
		                <h4 class="modal-title" id="myModalLabel">
		                    Don't Wait, Login now!</h4>
		            </div>
		            <div class="modal-body">
		                <div class="row">
		                    <div class="col-md-8" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
		                        <!-- Nav tabs -->
		                        <ul class="nav nav-tabs">
		                            <li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
		                            <li><a href="#Registration" data-toggle="tab">Registration</a></li>
		                        </ul>
		                        <!-- Tab panes -->
		                        <div class="tab-content">
		                            <div class="tab-pane active" id="Login">
		                                <form role="form" class="form-horizontal" action=Login method="post">
		                                <div class="form-group">
		                                    <label for="email" class="col-sm-2 control-label">
		                                        Email</label>
		                                    <div class="col-sm-10">
		                                        <input type="email" name="email" class="form-control" id="email1" placeholder="Email" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label for="exampleInputPassword1" class="col-sm-2 control-label">
		                                        Password</label>
		                                    <div class="col-sm-10">
		                                        <input type="password" name="pwd"class="form-control" id="exampleInputPassword1" placeholder="password" />
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-sm-2">
		                                    </div>
		                                    <div class="col-sm-10">
		                                        <button type="submit" class="btn btn-primary btn-sm">
		                                            Submit</button>
		                                        <a href="javascript:;">Forgot your password?</a>
		                                    </div>
		                                </div>
		                                </form>
		                            </div>
		                            <div class="tab-pane" id="Registration">
		                                <form role="form" class="form-horizontal" action=Regn method="post">
		                                <div class="form-group">
		                                    <label for="email" class="col-sm-2 control-label">
		                                        Name</label>
		                                    <div class="col-sm-10">
		                                        <div class="row">
		                                            <div class="col-md-3">
		                                                <select class="form-control"name="title">
		                                                    <option>Mr.</option>
		                                                    <option>Ms.</option>
		                                                    <option>Mrs.</option>
		                                                </select>
		                                            </div>
		                                            <div class="col-md-9">
		                                                <input type="text" class="form-control" name="name" placeholder="Name" />
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label for="email" class="col-sm-2 control-label">
		                                        Email</label>
		                                    <div class="col-sm-10">
		                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label for="mobile" class="col-sm-2 control-label">
		                                        Mobile</label>
		                                    <div class="col-sm-10">
		                                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Mobile" />
		                                    </div>
		                                </div>
		                                <div class="form-group">
		                                    <label for="password" class="col-sm-2 control-label">
		                                        Password</label>
		                                    <div class="col-sm-10">
		                                        <input type="password" class="form-control" id="password" name="pwd" placeholder="Password" />
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-sm-2">
		                                    </div>
		                                    <div class="col-sm-10">
		                                        <input type="submit" value="Registration" name="reg" class="btn btn-primary btn-sm">
		                                        <input type=reset name="reset" class="btn btn-default btn-sm">
		                                           
		                                    </div>
		                                </div>
		                                </form>
		                            </div>
		                        </div>
		                        
		                    </div>
		                    
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<script>
		$('#myModal').modal('show');
		</script>
		
	<%	} 
		else{	
	%>
			<form role="form" class="form-horizontal" action="Logout" method="post">
			<button type="submit" class="btn btn-primary btn-sm" >Logout</button>
			</form>
	<%} %>
			</div>
		</div>
	</div>

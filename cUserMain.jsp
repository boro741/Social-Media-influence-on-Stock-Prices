<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company User Main Page..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 22px}
.style3 {color: #FF0000}
.style4 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp">Admin</a></li>
          <li><a href="cUserLogin.jsp">Stock Market Company</a></li>
          <li><a href="UserLogin.jsp">User</a></li>
         
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html"><span class="style2">Web Media and Stock Markets A Survey and Future Directions</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar style4">
        <div class="article">
          <h1 class="style3"><a href="#"><span class="style2">Welcome  NSE User :: <span class="style2"> <span class="style2"><span class="style2"><%=(String)application.getAttribute("cuname")%> ( <%=(String)application.getAttribute("ucompany")%> )</span></span><span class="style2">..</span></span></span></a></h1>
          <p class="style3">&nbsp;</p>
          <p class="style3"><img src="images/SMC.jpg" width="612" height="314" /></p>
          <div class="clr"></div>
          
          
          <div class="clr"></div>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">NSE Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            
	  <li><a href="cUserProfile.jsp"> <strong> My Profile</strong></a></li>
	  <li><a href="A_NSE.jsp"> <strong>Add Company </strong></a></li>
	 <li><a href="cU_VT.jsp"><strong>View total Traded investment</strong></a></li>
	  <li><a href="cU_AddProfit.jsp"><strong>Add total profit to current traded investment</strong></a></li>
	  <li><a href="cU_UserProfitDetails.jsp"><strong>View All User Profit Details</strong></a></li>
	  <li><a href="U_PNcomments.jsp"><strong>View Sentiment analysis on this company(Positive,negative)</strong></a></li>
	  <li><a href="InvestmentChart1.jsp"><strong>View share holder investment for this company in pie chart</strong></a></li>
	  <li><a href="index.html"><strong>Logout</strong></a></li>
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>

</body>
</html>

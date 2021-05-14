<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Company..</title>
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
.style2 {font-size: 18px}
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
          <li><a href="about.html">Stock Market Company</a></li>
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
          <h1 class="title style2 style2" ><a href="#" class="style2"><span class="style2 style2">Add Company Details.....</span></a></h1>
        <P>&nbsp;</P>  
	<div class="clr"></div>
          
          <div class="post_content">
            <form action="A_NSE1.jsp" method="post" id="" enctype="multipart/form-data">
                    <label for="name"><span class="style33">Company Name</span></label>
                    <p class="style33">
                      <input id="name" name="name" class="text" value="<% out.print(application.getAttribute("ucompany")); %> " readonly />
                    </p>
			       
			        <span class="style33">
			        <label for="production">Company Production</label>
                    </span>
			        <p class="style33">
                      <input id="prod" name="production" class="text" />
                    </p>
			        <span class="style33">
			        <label for="shares">Company Shares</label>
                    </span>
			        <p class="style33">
                      <input id="shares" name="shares" class="text" />
                    </p>
				<span class="style33">
			        <label for="capital">Current Traded Value</label>
                    </span>
			        <p class="style33">
                      <input id="capital" name="capital" class="text" />
                    </p>
				<span class="style33">
			        <label for="desc">Company Description</label>
                    </span>
			        <p class="style33">
                      <textarea id="desc" name="desc" rows="3" cols="50"></textarea>
                    </p>
				<span class="style33">
			        <label for="mail">Company E-mail</label>
                    </span>
			        <p class="style33">
                      <input id="mail" name="mail" class="text" />
                    </p>
			       <span class="style33">
			        <label for="contact">Company Contact No</label>
                    </span>
			        <p class="style33">
                      <input id="cno" name="cno" class="text" />
                    </p>
				 <span class="style33">
			        <label for="address">Company Address</label>
                    </span>
			        <p class="style33">
                      <textarea id="address" name="addr" rows="3" cols="50"></textarea>
                    </p>
				
			        
			   
			        <p class="style33">
                      <label for="pic">Select Company Picture (required)</label>
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="Add Company" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="cUserMain.jsp" class="style11">Back</a></p>
		          </form>
          </div>
          <div class="clr"></div>
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="index.html">Logout</a></li>
            
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

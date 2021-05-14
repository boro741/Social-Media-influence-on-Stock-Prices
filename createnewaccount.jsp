<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Creating New Bank Account..</title>
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
          <li><a href="about.html">Company Users </a></li>
          <li><a href="UserLogin.jsp">User</a></li>
          <li><a href="contact.html"><span>Contact Us</span></a></li>
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
          <h1 class="title"><a href="#"><span class="style2"><span class="style2"><span class="style2">User Bank Acccount Registration ..</span></span></span></a></h1>
        <p>&nbsp;</p> 
	 <div class="clr"></div>
          
          <div class="post_content">
		  <%@ include file="connect.jsp" %>
                    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
		   <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5;
						
						 
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								
								s1=rs.getString("email");
								s2=rs.getString("mobile");
								s3=rs.getString("address");
								
								
								
								
					%>
            <form action="accountauthentication.jsp" method="post" id="" enctype="multipart/form-data">
  <label for="name"><span class="style43">Account Number(required)</span></label>
  <p class="style43">
    <input id="name" name="accno" class="text" />
  </p>
  <span class="style43">
  <label for="password">Branch (required)</label>
  </span>
  <p class="style43">
    <input type="text" id="branch" name="branch" class="text" />
  </p>
  <span class="style43">
  <label for="email">Email Address</label>
  </span>
  <p class="style43">
    <input id="email" name="email"value="<%=s1%>" readonly />
  </p>
  <span class="style43">
  <label for="mobile">Mobile Number</label>
  </span>
  <p class="style43">
    <input id="mobile" name="mobile" value="<%=s2%>" readonly />
  </p>
  <span class="style43">
  <label for="address">Address</label>
  </span>
  <p class="style43">
     <input id="address" name="address" value="<%=s3%>" readonly />
  </p>
  <p class="style9">
    <span class="style42">
    <label for="amount">Amount (required)</label>
    </span> </p>
  <p class="style9">
    <input id="amount" name="amount" class="text" />
  </p>
  <p align="left" class="style9"><br />
      <input name="submit" type="submit" value="Create Account" />
  </p>
  </form>
  <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </div>
          <div class="clr"></div>
        </div>
        <p>&nbsp;</p>
		<div align="center" class="style22"><a href="useraccount.jsp" class="style11">Back</a></div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="UserLogin.jsp">Logout</a></li>
            
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

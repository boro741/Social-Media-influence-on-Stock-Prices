<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Share Page..</title>
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
          <h1 class="title style2 style2" ><a href="#" class="style2"><span class="style2 style2">Purchase Share.....</span></a></h1>
         <p>&nbsp;</p> 
	<div class="clr"></div>
          
          <div class="post_content">
             <%
		  	String user=(String)application.getAttribute("uname");
			String cname=request.getParameter("cname");
			String cshar=request.getParameter("cshar");
			String account="",nshar="1";
  			String s1,s2,s3,s4;
		    String sql="select account_no from account where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					account=rs.getString("account_no");
					
					}
					
				
			
		  
		  
		  
		  %>
                    <form action="U_PurchaseVerification.jsp" method="post" >
                      <span class="style48">
                      <label for="name"><span class="style49">Account Number</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="accno" value="<%=account%>" readonly/>
                      </p>
					  <span class="style48">
                      <label for="name"><span class="style49">Company Name</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="cname" value="<%=cname%>" readonly/>
                      </p>
					  <span class="style48">
                      <label for="name"><span class="style49">Company Shares</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="cshar" value="<%=cshar%>" readonly/>
                      </p>
					  <span class="style50">
                      <label for="amount">Selected Shares</label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="nshar" value="<%=nshar%>" readonly/>
                      </p>
                      <span class="style50">
                      <label for="amount">Invest Money (amount required)</label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="amount" class="text" />
                      </p>
                      <span class="style50">
                      <label for="email"></label>
                      </span>
                      <p class="style48"><br />
					  
                          <input name="submit" type="submit" value="Purchase" />
                      </p>
                      
                    </form>
				    <p>&nbsp;</p>
		
			<div align="center" class="style22"><a href="U_VT.jsp" class="style11">Back</a></div>
          </div>
          <div class="clr"></div>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Account Details..</title>
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
          <h1 class="title"><a href="#"><span class="style2"><span class="style2"><span class="style2">User</span> <span class="style2"><%=(String)application.getAttribute("uname")%><span class="style2">'s</span></span> <span class="style2">account</span> </span><span class="style2">Details..</span></span></a></h1>
        <p>&nbsp;</p>  
	<div class="clr"></div>
          
          <div class="post_content">
            <table width="405" border="1" align="center"  cellpadding="0" cellspacing="0"  >
                    <%@ include file="connect.jsp" %>
                    <%@ page import="org.bouncycastle.util.encoders.Base64"%>
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from account where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString("account_no");
								s1=rs.getString("user");
								s2=rs.getString("address");
								s3=rs.getString("email");
								s4=rs.getString("mobile");
								s5=rs.getString("branch");
								s6=rs.getInt("amount");
								
								
					%>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Account Number </strong></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(i);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>User Name </strong></div></td>
                      <td  width="221" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Address</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Email</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Branch</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Amount</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                          <div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                            <%out.println(s6);%>Rs/-
                      </div></td>
                    </tr>
                    <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
                  </table>

<p>&nbsp;</p>
		<div align="center" class="style22"><a href="useraccount.jsp" class="style11">Back</a></div>

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

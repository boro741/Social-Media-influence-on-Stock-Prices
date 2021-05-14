<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Comment Insert Page..</title> 
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
        <h1 class="style3"><a href="#"><span class="style2">User Comment <span class="style2"> <span class="style2"><span class="style2">Status...</span></span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
		  <p>&nbsp;</p>

<%
					String username=request.getParameter("username");
			
					
					try
					{
					String cname=request.getParameter("cname");
					
					
					
						
			%>
			      <table width="572" border="1" align="left" cellpadding="0" cellspacing="0" >
                   
                    
					 <%
						int a=0;
						String str2="select * from ncomments"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_name = rs2.getString(3);
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
								if(a==0){
					%>
					 <tr>
					   <td width="123" height="24" valign="middle" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Company</div>
                       </div></td>
                       <td width="123" height="24" valign="middle" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Comment By</div>
                       </div></td>
					   <td width="347" height="24" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Comment Details</div>
					     </div></td>
					   <td width="94" height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style90 style93" style="margin-left:20px;">
                           <div align="center">Date</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
   				   	     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_name%></strong></div></td>	
                         <td height="49"><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_user%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_comment%></strong></div></td>
					     <td><div align="center" class="style78 style76 style10 style9 style88 style89"><strong><%= c_date%></strong></div></td>
			        </tr>
					<%}%>
	            </table>	<p>&nbsp;</p>
			    
		         <p>&nbsp;		         </p>
			      <p>
			        <%
		
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>

 </p>
			      <div align="center"><a href="A_PNcomments.jsp" class="style11"><strong>Back</strong></a></div>
		
			
		

          </div>
          <div class="clr"></div>
        </div>
        
        
      </div>
<!-- end #content -->
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#"><strong>Home</strong></a></li>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Create Tweet Page..</title>
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
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
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
         <h1 class="style3"><a href="#"><span class="style2">Tweet Added<span class="style2"> <span class="style2"><span class="style2">Details..</span></span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
            <%
	  	
		String cname=request.getParameter("cname");
		String tname=request.getParameter("tname");
		String descr=request.getParameter("text");
	  	
		String keys = "ef50a0ef2c3e3a5f";
		byte[] keyValue = keys.getBytes();
		Key key = new SecretKeySpec(keyValue, "AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.ENCRYPT_MODE, key);
		String descr1 = new String(Base64.encode(descr.getBytes()));
		
		
	  %>
	   
	  <form name="s" action="U_TW2.jsp" method="post" enctype="multipart/form-data" onSubmit="return valid()"  ons target="_top">
                    <p>&nbsp;</p>
                    <table width="506" border="0" align="center">
                      
					  <tr>
                        <td width="173" height="37"><span class="style9 style7"><strong> Company Name :-</strong></span></td>
                        <td width="323"><input required="required" type="text" name="cname" id="cname" value="<%=cname%>" /></td>
                      </tr>
					  
					   <tr>
                        <td width="173" height="37"><span class="style9 style7"><strong> Tweet Name :-</strong></span></td>
                        <td width="323"><textarea required="required" type="text" name="tname" id="tname" cols="50" rows="3"><%=tname%></textarea></td>
                      </tr>
					  
                      <tr>
                        <td height="42" ><span class="style9 style7"><strong>Description content :- </strong></span></td>
                        
                        <td><textarea name="text" id="textarea" cols="50" rows="4"><%=descr1%></textarea></td>
                      </tr>
                  
				    <tr>
            		    <td><span class="style33"> <span class="style9">
            		      <label for="label"><strong>Select Image <strong>:-</strong> </strong></label>
          		      </span> </span></td>
            		    <td><input name="pic" type="file" class="file " id="pic" required />                </td>
              		</tr>
				  
				  
                      <tr>
                        <td><div align="right"></div></td>
                        <td><input type="submit" name="Submit" value="Upload Tweeet" /></td>
                      </tr>
                    </table>
        </form>
		
			<p>&nbsp;</p>
		<div align="center" class="style22"><a href="U_TW.jsp" class="style11">Back</a></div>

          </div>
          <div class="clr"></div>
        </div>
        
        
      </div>
<!-- end #content -->
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
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

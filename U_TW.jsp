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
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>


<script language="javascript" type="text/javascript">
function valid()
{
var na3=document.s.t42.value;
if(na3=="")

{
alert("Please Select Description File");
document.s.t42.focus();
return false;
}
var na31=document.s.cname.value;
if(na31=="")

{
alert("Please Select Company Name");
document.s.cname.focus();
return false;
}

var na4=document.s.tname.value;
if(na4=="")

{
alert("Please Enter Tweet Name");
document.s.tname.focus();
return false;
}


}
</script>
</head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
         <h1 class="style3"><a href="#"><span class="style2">Create<span class="style2"> <span class="style2"><span class="style2">Tweet..</span></span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          <p>&nbsp;</p>
          <div class="post_content">
            <form name="s" action="U_TW1.jsp" method="post" onSubmit="return valid()"  ons target="_top">
                    <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select companyname FROM companies"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("companyname"));
		
	   }
	   
		
		
%>
					
                    <table width="553" border="0" align="center">
                      
					  <tr>
                        <td width="226" height="33"><div align="justify"><span class="style8 style38 style5">Select Company :-</span></div></td>
                        <td width="317"><label>
                          <select id="s1" name="cname">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                        </label></td>
                      </tr>
					  
					   <tr>
                        <td width="226" height="37"><span class="style7"> Tweet Name :-</span></td>
                        <td width="317"><input required="required" type="text" name="tname" id="tname" /></td>
                      </tr>
					  
					  <tr>
                        <td width="226" height="37"><span class="style7"> Select Description File :-</span></td>
                        <td width="317"><input required="required" type="file" name="t42" id="file"  onchange="loadFileAsText()" /></td>
                      </tr>
                      
                      <tr>
                        <td height="42" ><span class="style7"> Description content :- </span></td>
                        
                        <td><textarea name="text" id="textarea" cols="50" rows="4"></textarea></td>
                      </tr>
                  
                      <tr>
                        <td><div align="right"><span class="style8"></span></div></td>
                        <td><input type="submit" name="Submit" value="Encrypt" /></td>
                      </tr>
                    </table>
					<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
        </form>
		
			<p>&nbsp;</p>
		<div align="center" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>

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

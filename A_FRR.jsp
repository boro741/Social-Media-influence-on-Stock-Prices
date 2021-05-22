<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Friend Requests/Response..</title>
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
          <h1 class="title"><a href="#"><span class="style12"><span class="style2"><span class="style2 style2 style2">All Friend Requests/Response..</span></span></span></a></h1>
        <p>&nbsp;</P>  
	<div class="clr"></div>
          
          <div class="post_content">
            <table width="831" border="1" align="center">
                    <tr>
                      <td width="36" height="47" align="center" valign="middle"><div align="center" class="style33 style49"><span class="style3 style67">Id </span></div></td>
                      <td width="100" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Request From </span></strong></div></td>
                      <td width="138" align="center" valign="middle"><div align="center" class="style36 style64 style70"><strong><span class="style3 ">Requested User </span></strong></div></td>
                      <td width="102" align="center" valign="middle"><div align="center" class="style55 style34 style65"><strong><span class="style3 ">Request To </span></strong></div></td>
                      <td width="185" align="center" valign="middle"><div align="center" class="style34 style50"><span class="style3 "> Request To Name </span></div></td>
                      <td width="96" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Status</span></strong></div></td>
                      <td width="128" align="center" valign="middle"><div align="center" class="style38 style67 style70"><strong><span class="style3 ">Date</span></strong></div></td>
                    </tr>
                    <%
 
      	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9,s10,s11,s12,s13;
	int i=0,j=0,k=0;

     try 
	{
           
					   String query="select * from  frequest"; 
					   Statement st=connection.createStatement();
					   ResultSet rs=st.executeQuery(query);
					   while( rs.next() )
					   {
						
								i=rs.getInt("id");
								s2=rs.getString("requestfrom");
								s3=rs.getString("requestto");
								s4=rs.getString("dt");
								s5=rs.getString("status");
				
								String query1="select * from user where username='"+s2+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
							 	while( rs1.next() )
							 	{
									j=rs1.getInt("id");  
							
									String query2="select * from user where username='"+s3+"'"; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									while( rs2.next() )
								 	{
										k=rs2.getInt("id");  
								
		
%>
                    <tr>
                      <td height="111"><div align="center" class="style48 style52 style54"><%=i%></div></td>
                      <td><div align="center" class="style48 style52 style54">
                          <input  name="image" type="image" src="user_Pic.jsp?id=<%=j%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><%=s2 %></div></td>
                      <td><div align="center" class="style52 style54">
                          <input  name="image2" type="image" src="user_Pic.jsp?id=<%=k%>" width="100" height="100" alt="Submit" />
                      </div></td>
                      <td><div align="center" class="style48 style52 style56"><%=s3 %></div></td>
                      <td><div align="center" class="style48 style52 style54"><%= s5%></div></td>
                      <td><div align="center" class="style48 style52 style54"><%= s4%></div></td>
                    </tr>
                    <%
		  }
	  }
		
	   }
	 

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		          </table>
			      <p class="style22">&nbsp;</p>
			      <div align="center" class="style22"><a href="AdminMain.jsp" class="style11">Back</a></div>
          </div>
          <div class="clr"></div>
        </div>
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
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

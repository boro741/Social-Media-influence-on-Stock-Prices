<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<head>
<title>Friend Requests..</title>
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
          <h1 class="title"><a href="#"><span class="style12"><span class="style2"><span class="style2">Friend requests To</span> <span class="style2"><%=(String)application.getAttribute("uname")%></span></span><span class="style2">..</span></span></a></h1>
	<p>&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
            <table width="554" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                      <tr>
                        <td  width="132" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Username</div></td>
                        <td  width="119" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Mobile</div></td>
                        <td  width="117" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Address</div></td>
                        <td  width="74" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Gender</div></td>
                        <td  width="78" height="30" align="center" valign="bottom" style="color: #2c83b0;"><div align="center" class="style42">Status</div></td>
                      </tr>
                      <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
											
											
						
					%>
                      <tr>
			
                        <td  width="132" height="54" align="center" valign="middle" class="style7" style="color:#00FFFFF;">&nbsp;&nbsp;
                              <%out.println(s1);%>                        </td>
                        <td  width="119" height="54" align="center" valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s3);%>                        </td>
                        <td height="54" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s4);%>                        </td>
                        <td height="54" align="center"  valign="middle" class="style7">&nbsp;&nbsp;
                              <%out.println(s5);%>                        </td>
                        <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                        <td  width="78" valign="middle" height="54" style="color:#000000;"align="center"><a href="updaterequest1.jsp?rid=<%=j%>" class="style44">waiting</a></td>
                        <%
						}
						else
						{
						%>
                        <td  width="16" height="54"align="center" valign="middle" class="style7" style="color:#000000;">
                          <span class="style45">
                          <%out.println(status);%>
                          </span>&nbsp;</td>
                        <%
						}
						%>
                      </tr>
                      <%
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
		
				<p>&nbsp;</p>
			   <div align="center" class="style22"><a href="UserMain.jsp" class="style11">Back</a></div>			
			   

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

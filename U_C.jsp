<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Company Details..</title>
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
          <h1 class="title style2 style2" ><a href="#" class="style2"><span class="style2 style2">Company Details.....</span></a></h1>
         <p>&nbsp;</p> 
	<div class="clr"></div>
          
          <div class="post_content">
             <table width="730" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style22"><strong>Si No. </strong></div></td>
                      <td  width="176" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style55 style52 style5 style37 style38 style22"><strong>Company Image</strong></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>company Name</strong></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Company Production</strong></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Company Shares</strong></div></td>
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Capital Invest</strong></div></td>
		      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Company Description</strong></div></td>	
		      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>E-mail ID</strong></div></td>
		      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Contact No</strong></div></td>
		      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style52 style55 style5 style38 style37 style22"><strong>Company Address</strong></div></td>
		      
                    </tr>
                    <%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*"%>
                    <%@ page import="java.util.*" %>
                    <%@ page import="com.oreilly.servlet.*"%>
                  
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,user1="";
						int i=0,j=1;
						try 
						{
					
							String cname=request.getParameter("cname");
						   	String query="select *  from company where cname='"+cname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
						
									s1=rs.getString(1);
									s2=rs.getString(2);
									s3=rs.getString(3);
									s4=rs.getString(4);
									s5=rs.getString(5);
									s6=rs.getString(6);
									s7=rs.getString(7);
									s8=rs.getString(8);
									s9=rs.getString(9);
									

									
										
												%>
                    <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style54 style5 style22 style83"><strong>
                          <%out.println(j);%>
                      </strong></div></td>
                      <td width="176" rowspan="1" align="center" valign="middle" ><div class="style54 style5 style22 style83" style="margin:10px 13px 10px 13px;" ><strong>
                          <input  name="image" type="image" src="user_Pic1.jsp?cname=<%=s2%>" style="width:150px; height:150px;" />
                      </strong></div></td>
                      <td align="center"  valign="middle" style="color: #2c83b0;"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                        <%out.println(s2);%>
                      </div></td>
                      <td align="center"  valign="middle" style="color: #2c83b0;"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                        <%out.println(s3);%>
                      </div></td>
                      <td align="center"  valign="middle" style="color: #2c83b0;"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                        <%out.println(s4);%>Shares
                      </div></td>
                      <td align="center"  valign="middle" style="color: #2c83b0;"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                          <%out.println(s5);%>Cr.Rs/-
                      </div></td>
			<td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                          <%out.println(s6);%>
                      </div></td>
			<td align="center"  valign="middle" style="color: #2c83b0;"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                          <%out.println(s7);%>
                      </div></td>
			<td align="center"  valign="middle" style="color: #2c83b0;"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                          <%out.println(s8);%>
                      </div></td>
			<td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style81 style83">
                          <%out.println(s9);%>
                      </div></td>
                    </tr>
                    <%
												j+=1;	
						
						
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
		
			<div align="center" class="style22"><a href="U_ShareDetails.jsp" class="style11">Back</a></div>
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

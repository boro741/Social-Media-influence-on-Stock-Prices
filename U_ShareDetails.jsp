<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Share Details Page..</title>
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
        <h1 class="title"><a href="#"><span class="style2"><span class="style2"><span class="style2">User</span> <span class="style2"><%=(String)application.getAttribute("uname")%><span class="style2">'s</span></span> <span class="style2">Share</span> </span><span class="style2">Details..</span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
		  <p>&nbsp;</p>
            <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="31" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >SI NO</div></td>
         
		  <td  width="137" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Company Name</div></td>
		  <td  width="115" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Purchased Shares</div></td>
          
          <td  width="142" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Purchased Date</div></td>
		  
		  <td  width="161" height="34" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style4" >Invested Amount + Profit </div></td>
        </tr>
         
		 
		    <%@ include file="connect.jsp" %>
            <%
					  
					  String uname=(String)application.getAttribute("uname");
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0;
					
						try 
						{
							
						   	String query="select * from purchase where user='"+uname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(4);
								s1=rs.getString(5);
								s2=rs.getString(6);
								s3=rs.getString(7);
								
								count++;
					%>
            <tr>
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			   
			    <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4"  >
                    <div align="center" >
       			   <a href="U_C.jsp?cname=<%=s0%>"> <%out.println(s0);%> </a>               </div>
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4"  >
                    <div align="center" >
       			   <%out.println(s1);%>                </div>
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                 	 <%out.println(s2);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4" >
                  <%out.println(s3);%>
              </div></td>
			  
			  
			   
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("You Have Not Purchased Any Shares");}
					
					%>
        </table>
		
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
            <li><a href="UserMain.jsp"><strong>Home</strong></a></li>
            <li><a href="UserLogin.jsp"><strong>Logout</strong></a></li>
            
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

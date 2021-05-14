<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Company List..</title>
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
	  <h1 class="style3"><a href="#"><span class="style2"><span class="style2"> <span class="style2"><span class="style3"><%=request.getParameter("cname")%> </span></span><span class="style2"></span>Company Details..</span></span></a></h1>
          
         <p>&nbsp;</p> 
	<div class="clr"></div>
          
          <div class="post_content">
             <%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
			<%
					
					try
					{
					String user=(String)application.getAttribute("uname");
					String cname=request.getParameter("cname");
					
					
					
			
					String str1="select * from company where cname='"+cname+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String cproduction = rs1.getString(3);
						String cshares = rs1.getString(4);
						String ccapital = rs1.getString(5);
						String cdescription = rs1.getString(6);
						String cmail = rs1.getString(7);
						String cno   = rs1.getString(8);
						String caddress = rs1.getString(9);
							
							
						
			%>
			      <table width="598" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="8" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="user_Pic1.jsp?cname=<%=cname%>" style="width:160px; height:180px;" />
                          </a> </div>
                      </div></td>
                      <td height="39" ><div align="center" class="style70 style73"><span class="style70">Company Production </span></div></td>
                      <td width="307"><div align="center" style="color: #2c83b0;" class="style84"><%= cproduction%></div></td>
                    </tr>
                    <tr >
                      <td height="37" ><div align="center" class="style70">Company Shares</div></td>
                      <td><div align="center" style="color: #2c83b0;" class="style84"><%= cshares%> shares</div></td>
                    </tr>
		    <tr >
                      <td height="37" ><div align="center" class="style70">Market Capital</div></td>
                      <td><div align="center" style="color: #2c83b0;" class="style84"><%= ccapital%> Cr.Rs/-</div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style70">Company Description </div></td>
                      <td><div align="center" class="style85"></div>
                      
                        
                              <div align="center"><span class="style85">
                              <textarea name="textarea" cols="40" rows="8"><%= cdescription%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" ><div align="center" class="style70">E-mail Id</div></td>
                     <td><div align="center" style="color: #2c83b0;" class="style84"><%= cmail%></div></td>
                    </tr>
		    <tr >
                      <td height="37" ><div align="center" class="style70">Contact No</div></td>
                      <td><div align="center" style="color: #2c83b0;" class="style84"><%= cno%></div></td>
                    </tr>
		    <tr >
                     <td height="47" ><div align="center" class="style70">Company Address </div></td>
                     <td><div align="center" class="style85"></div>
                      
                        
                              <div align="center"><span class="style85">
                              <textarea name="textarea" cols="40" rows="8"><%= caddress%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td width="97" height="56" ></td>
                      <td><br/><form method="post" action="U_PurchaseShare.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=cname%>" name="cname"/>
					    <input type="hidden" value="<%=cshares%>" name="cshar"/>
				       <input type="submit" name="Submit3" value="Purchase Share" />  
                    </div>
                 </label></form><br/></td>
                    </tr>
					 
	            </table>
				<p>&nbsp;</p>
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
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

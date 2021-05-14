<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Profit status..</title>
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
.style2 {font-size: 18px}
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
           <h1 class="title style2 style2" ><a href="#" class="style2"><span class="style2 style2">Adding Profit Status.....</span></a></h1>
          <P>&nbsp;</P>
		  <div class="clr"></div>
          
          <div class="post_content">
             <%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<% 



    try{
	int amount=0,amount1=0,amount2=0,amount3=0,amount4=0,profitamt=0,count=0;
	
	String capi=null;
			//String balance=request.getParameter("amount");
			String profit=request.getParameter("profit");
			String company=(String )application.getAttribute("ucompany");
			
			
			String user=(String)application.getAttribute("uname");
			 
			String query12="select * from company where cname='"+company+"' "; 
						   	Statement st12=connection.createStatement();
						   	ResultSet rs12=st12.executeQuery(query12);
							if(rs12.next())
							{
						 capi=rs12.getString(5);
				
							}
				
							out.print("cap"+capi);
								
				String query="select * from purchase where cname='"+company+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while( rs.next() )
					   		{
								
								count++;
						   }
								
								out.print(count);
								
								
								double ps= Double.valueOf(Integer.parseInt(profit) / (count+1));
								double ccapi=Double.valueOf(Integer.parseInt(capi) + ps);
								
							String query22="update company set ccapi="+ccapi+" where  cname='"+company+"'"; 
						   	Statement st22=connection.createStatement();
						   	st22.executeUpdate(query22);
			
			
			out.print("Profit="+ ps);
			
			String query1="select * from purchase where cname='"+company+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while( rs1.next() )
					   		{
								
								String uname=rs1.getString(3);
								double p=Double.parseDouble(rs1.getString(7)); 
							
								double ps1=ps+ p;
								
								//String prf=String.valueOf(ps1);
								
							
							
					 
								
								String query2="update purchase set invest="+ps1+" where (user='"+uname+"' and cname='"+company+"')"; 
						   	Statement st2=connection.createStatement();
						   	st2.executeUpdate(query2);
							
							 SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
											   Date now = new Date();
						
											   String strDate = sdfDate.format(now);
											   String strTime = sdfTime.format(now);
											   String date = strDate + "   " + strTime;
											   
											  
												PreparedStatement ps2=connection.prepareStatement("insert into profit(user,cname,date,profit) values(?,?,?,?)");
														
														ps2.setString(1,uname);
														ps2.setString(2,company);
														ps2.setString(3,date);
														ps2.setDouble(4,ps1);	
														
												int k=ps2.executeUpdate();
														if(k>0)
														{
															
															
																									
															%><br/><%
															out.println("Profit Added Successfully..");
															%><br/><br/><a href="cUserMain.jsp">Back</a><%

														}
														
						   }
						   
			
		
		connection.close();
		
		
	} 
	
	
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
</p>

          </div>
          <div class="clr"></div>
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="cUserMain.jsp">Home</a></li>
            <li><a href="cUserLogin.jsp">Logout</a></li>
            
            
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Share Status Page..</title>
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
          <h1 class="title style2 style2" ><a href="#" class="style2"><span class="style2 style2">Purchase Share Status.....</span></a></h1>
         <p>&nbsp;</p> 
	<div class="clr"></div>
          
          <div class="post_content">
             
<%


   
    try
	{
			int amount1 =0,amount2 =0,amount4=0,csr=0,nsr=0,shar=0,invest=0;
  			String s1,s2,s3,s4;
			
			String accno=request.getParameter("accno"); 
			String cname=request.getParameter("cname");   
			String cshar=request.getParameter("cshar"); 
			String nshar=request.getParameter("nshar"); 
   	        String amount=request.getParameter("amount");

			String user=(String)application.getAttribute("uname");
		
String credit="";
			
			String sql="SELECT * FROM account where user='"+user+"' and account_no='"+accno+"' ";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
								amount1=Integer.parseInt(rs.getString("amount"));
					
					
					
			
			    
				
				
				
							
																
								String sql1="SELECT * FROM company where cname='"+cname+"'";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt.executeQuery(sql1);
								if(rs1.next()==true)
								{
										int amount3=Integer.parseInt(amount);
										csr=Integer.parseInt(cshar);
										nsr=Integer.parseInt(nshar);
										int ccapi=Integer.parseInt(rs1.getString(5));
										
										if(csr<nsr)
										{
											 %><br/><%
											out.println("Number Exided");
											 %><br/><br/><a href="U_VT1.jsp">Back</a><%
										}
										else
										{
												amount2=amount1-amount3;
												String amt=String.valueOf(amount2);
												amount4=amount1+amount3;
												String amt1=String.valueOf(amount4);
												shar=csr-nsr;
												String sr=String.valueOf(shar);
												String tcapi=String.valueOf(ccapi+amount3);
												
												
												String sql2="Update account set amount='"+amt+"'  where user='"+user+"' and account_no='"+accno+"'";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);
												
												String sql3="Update company set cshar='"+sr+"',ccapi='"+tcapi+"'  where cname='"+cname+"'";
												Statement stmt3 = connection.createStatement();
												stmt3.executeUpdate(sql3);
												//ResultSet rs2=
												//if(rs2.next()==true)
									//{
											   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
											   Date now = new Date();
						
											   String strDate = sdfDate.format(now);
											   String strTime = sdfTime.format(now);
											   String date = strDate + "   " + strTime;
											   
											 Statement stmt8=connection.createStatement();
									String strQuery8 = "select srholder from company where cname='"+cname+"'"; 
									ResultSet rs8 = stmt8.executeQuery(strQuery8);
									if(rs8.next()==true)
									{
											int count=rs8.getInt(1);
											
											int total=count+1;
												Statement stmt0=connection.createStatement();
												String strQuery0 = "update company set srholder='"+total+"' where cname='"+cname+"'";
												stmt0.executeUpdate(strQuery0);
									}
											   
														PreparedStatement ps1=connection.prepareStatement("insert into purchase(account_no,user,cname,shar,date,invest) values(?,?,?,?,?,?)");
														ps1.setString(1,accno);
														ps1.setString(2,user);
														ps1.setString(3,cname);
														ps1.setString(4,nshar);
														ps1.setString(6,amount);	
														ps1.setString(5,date);
														
														
														int k=ps1.executeUpdate();
														if(k>0)
														{
															
															
																									
															%><br/><%
															out.println("Purchase Successfull..");
															%><br/><br/><a href="UserMain.jsp">Back</a><%

														}																
											}
								
									}
									else
									{
									
											%><br/><%
											out.print("Company Details Not Found..");
											 %><br/><br/><a href="UserMain.jsp">Back</a><%
									
									}
					}
					
					else
					{	 
						%><br/><%
						out.print("Account Not Found..");
						 %><br/><br/><a href="UserMain.jsp">Back</a><%
						
					}
									
					
		connection.close();
		
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
		

				    
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

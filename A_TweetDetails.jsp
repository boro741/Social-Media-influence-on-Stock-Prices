<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin User Profile Page..</title>
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
        <h1 class="style3"><a href="#"><span class="style2">Tweet<span class="style2"> <span class="style2"><span class="style2"> <%=request.getParameter("tname")%> </span> Details...</span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
	
             <p>
				
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
          String uname=(String)application.getAttribute("uname");
		   String type=request.getParameter("type");
		   int one= Integer.parseInt(request.getParameter("id"));
           String s0="",s1="",Keyword="",s2="",s3="",s4="",s5="",s7="",s8="";
	       int i=0,k=0,rank1=0;
  try 
	{	
	
	
  String str="select * from tweets where id='"+one+"' "; 
  Statement st=connection.createStatement();
   ResultSet rs=st.executeQuery(str);
   	   
	if ( rs.next() )
	   {
		i  = rs.getInt(1);
		s0 = rs.getString(3);
		s1 = rs.getString(4);
		s2 = rs.getString(2);
		s3 = rs.getString(5);
		s4 = rs.getString(6);
		
		
					
				
				
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					
					String descr = new String(Base64.decode(s3.getBytes()));
									
				
									
	
%>
          </p>
          
 <table border="1" align="center" cellpadding="0" cellspacing="0"  width="600" >
				 				<tr >
								    <td width="148" rowspan="9" bgcolor="#FFFFFF" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" > 
									    <div align="center"><a class="#" id="img1" href="#" >
		                        <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=i%>" style="width:120px; height:120px;"  />
								                                  </a> </div>
								  </div></td>
								  	<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7"><strong>Uploader Name </strong></div></td>
							      <td width="316" bgcolor="#FFFFFF"><div align="center" class="style8 style7"><strong><a href="A_UserProfile.jsp?uname=<%=s1%>&type=<%=type%>&id=<%=i%>&name=<%=s0%>"><%= s1%></a></strong></div></td>
		  						<tr/>
								
									<td width="128" height="27" bgcolor="#FFFFFF" >
								  <div align="center" class="style10 style7"><strong>Tweet Name </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s0%></strong></div></td>
				    			
								<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong>Company Name </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s2%></strong></div></td>
				    			</tr>
				    
				    			<tr>
									<td width="128" height="27" bgcolor="#FFFFFF">
						  		  <div align="center" class="style10 style7"><strong>Tweet Description </strong></div></td>
								    <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= descr%></strong></div></td>
								</tr>
								
								<tr>
										<td width="128" height="27" bgcolor="#FFFFFF">
								  <div align="center" class="style10 style7"><strong>Uploaded Date </strong></div></td>
								        <td bgcolor="#FFFFFF"><div align="center" class="style8"><strong><%= s4%></strong></div></td>
								</tr>
								
								
								
						<%
						}
						
						
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
		
		<h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("relevant")){%>
            <h2 align="right"><a href="A_Relevent.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("alltweets")){%>
            <h2 align="right"><a href="A_AllUserTweets.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("cluster")){%>
            <h2 align="right"><a href="A_ClustersByUname.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allfrqtweets")){%>
            <h2 align="right"><a href="A_TweetFreqCount.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("outlier")){%>
            <h2 align="right"><a href="A_OutlierTweets.jsp" class="style4">Back</a></h2>
			<%}
			

			%>
	  
	  <p>&nbsp;</p>
	  
	   <h2 align="center" class="style5">All User Re-Tweets On The Tweet </h2>
	
		<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0" >
			<tr bgcolor="#FFFFFF"><td width="127" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style5 style14 style7 style6" style="	margin-left:20px;"><strong><strong>Image</strong></strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Commented User</strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Comments </strong></div></td>
			<td width="80" height="44" valign="middle" style="color: #2c83b0;">
			<div align="left" class="style7 style14 style5 style6" style="margin-left:20px;"><strong> Commented Date </strong></div></td>
			</tr>
			

					<%
						
						int count=0;
						try 
						{   
							   
						   	String query="select * from comment where tid='"+one+"' "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query);
					   		while ( rs1.next() )
					   		{
								int j=rs1.getInt(1);
								String tname=rs1.getString(2);
								String c_user=rs1.getString(3);
								String dt=rs1.getString(6);
							    String comment=rs1.getString("comments");
								
								count++;
						
					%>
		<tr>
			<td width="50" bgcolor="#FFFFFF">
			<div class="style8 style2" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
			 <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=one%>" style="width:50px; height:50px;"  />
		    </a></div>	</td>
			
			
			<%if(c_user.equalsIgnoreCase("Admin")){%>
			   <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em> <%out.println(c_user);%> 
 		    </em></strong></div></td>
			
			<%}else{%>
			
			 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
			   <div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em><a href="A_UserProfile.jsp?uname=<%=c_user%>&type=<%=type%>&id=<%=one%>&name=<%=s0%>"> <%out.println(c_user);%> 
		    </a></em></strong></div></td>
			<%}%>
			
			
			    <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(comment);%>
			</em></strong></div></td>
				 <td  width="182" height="44" valign="middle" bgcolor="#FFFFFF" style="color:#000000;">
				<div align="left" class="style10 style7 style9 style2" style="margin-left:20px;"><strong><em>
		        <%out.println(dt);%>
			</em></strong></div></td>
</tr>
<%					
					}
					
						if(count==0){
										out.print("No one User Have Commented On This Tweet");
								}
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>


			</table>
	  
	  
	  
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
            <li><a href="AdminMain.jsp"><strong>Home</strong></a></li>
            <li><a href="AdminLogin.jsp"><strong>Logout</strong></a></li>
            
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

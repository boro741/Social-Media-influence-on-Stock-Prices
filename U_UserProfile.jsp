<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Profile Page..</title>
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
        <h1 class="style3"><a href="#"><span class="style2">User<span class="style2"> <span class="style2"><span class="style2"> <%=request.getParameter("uname")%>'s Profile...</span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
		  <p>&nbsp;</p>
          <table width="533" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            
            <%
						String user=request.getParameter("uname");
						String type=request.getParameter("type");
						String name=request.getParameter("name");
						
						String s1,s2,s3,s4,s5,s6,s7,s8;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								
								
					%>
            <tr>
              <td width="226" rowspan="8" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="37" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8" style="margin-left:10px;"><strong>E-Mail</strong></div></td>
              <td  width="158" valign="middle" style="color:#000000;"><div align="left" class="style40 style62 style4 style3 style9 style7" style="margin-left:10px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="40" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8" style="margin-left:10px;"><strong>Mobile</strong></div></td>
              <td  width="158" valign="middle" ><div align="left" class="style40 style62 style4 style3 style9 style7" style="margin-left:10px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8" style="margin-left:10px;"><strong>Address</strong></div></td>
              <td align="left" valign="middle"><div align="left" class="style40 style62 style4 style3 style9 style7" style="margin-left:10px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="43" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8" style="margin-left:10px;"><strong>Date of Birth</strong></div></td>
              <td  width="158" align="left" valign="middle"><div align="left" class="style40 style62 style4 style3 style9 style7" style="margin-left:10px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="141" height="47" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style42 style60 style61 style7 style8" style="margin-left:10px;"><strong>Gender</strong></div></td>
              <td  width="158" align="left" valign="middle" ><div align="left" class="style40 style62 style4 style3 style7 style9" style="margin-left:10px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
			
			
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
		  <%String id=request.getParameter("id");
		  %>
		 
		 	 <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("user1")){%>
            <h2 align="right"><a href="U_AllFriends.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("alltweets")){%>
            <h2 align="right"><a href="U_VTWF1.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allmytweets")){%>
            <h2 align="right"><a href="U_VTWF1.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("AllTweetsDetails")){%>
            <h2 align="right"><a href="U_Re_Tweets.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allfrdstweets")){%>
            <h2 align="right"><a href="U_TD.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user2")){%>
            <h2 align="right"><a href="U_FTW.jsp" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("search")){%>
            <h2 align="right"><a href="U_TD.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("allUserTweets")){%>
            <h2 align="right"><a href="U_TD.jsp?id=<%=id%>&type=<%=type%>&tname=<%=name%>" class="style4">Back</a></h2>
			<%}
			else if(type.equalsIgnoreCase("user3")){%>
            <h2 align="right"><a href="U_AllUserTweets.jsp" class="style4">Back</a></h2>
			<%}
			
			

			%> 
		
			
		

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

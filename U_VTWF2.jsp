<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All Tweets Page..</title>
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
        <h1 class="style3"><a href="#"><span class="style2">All My Tweets<span class="style2"> <span class="style2"><span class="style2">Details...</span></span><span class="style2">..</span></span></span></a></h1> 
          <div class="clr"></div>
          
          <div class="post_content">
            <table width="598" border="1" align="center"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="24" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >SI NO</div></td>
          <td  width="76" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" > Tweet Image </div></td>
		  <td  width="55" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Tweet Name</div></td>
          <td  width="68" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Company Name</div></td>
          <td  width="51" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Tweeted Date</div></td>
		  
		  <td  width="233" height="34" valign="baseline" bgcolor="#00FFFF" style="color: #2c83b0;"><div align="center" class="style4" >Friends Comments </div></td>
        </tr>
         
		 
		    <%@ include file="connect.jsp" %>
            <%
					  
					  String uname=(String)application.getAttribute("uname");
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0;
					
						try 
						{
							
						   	String query="select * from tweets where uname='"+uname+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								j=rs.getInt(1);
								s0=rs.getString(2);
								s1=rs.getString(3);
								s2=rs.getString(6);
								s3=rs.getString(7);
								
								
					%>
            <tr>
              <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
                    <div align="center">
                    <%out.println(i);%>
                </div>
              </div></td>
			   
			    <td width="76" valign="middle" bgcolor="#99FF33"><div class="style3 style7 style9 style9" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="images.jsp?value=<%="tweet"%>&id=<%=j%>" style="width:50px; height:50px;" />
              </div></td>
			   
			   <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4"  >
                    <div align="center" >
       			   <a href="U_MyTweetDetails.jsp?id=<%=j%>&type=<%="alltweets"%>&tname=<%=s1%>"> <%out.println(s1);%> </a>               </div>
              </div></td>
			  
              <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
                 	 <%out.println(s0);%> 
              </div></td>
			  
			  <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style4" >
                  <%out.println(s2);%>
              </div></td>
			  
			  
			   <td height="0"  valign="middle" bgcolor="#99FF33">
                  <div align="center" class="style9" ><strong>
                  <a href="U_Comment.jsp?id=<%=j%>&type=<%="allMyTweets"%>&tname=<%=s1%>">Comment</a></strong></div></td>
            </tr>
            <%
					i=i+1;	
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("You Have Not Uploaded Any Tweets");}
					
					%>
        </table>
		
			
		

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

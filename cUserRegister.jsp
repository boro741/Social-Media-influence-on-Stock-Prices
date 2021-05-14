<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Company User Registration..</title>
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
          <h2 class="style3">Welcome To User Registration</h2>
          <div class="clr"></div>
          <div class="img"><img src="Gallery/images (10).jpg" width="90" height="110" alt="" class="fl" /></div>
          <div class="post_content">
            <form action="cUserRegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
                     <%@page import ="java.util.*"%>
                    <%@ include file="connect.jsp" %>
					<%
	 	
      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select companyname FROM companies"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("companyname"));
		
	   }
	   
		
		
%>
					<label for="name"><span class="style33"><br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    User Name (required)</span></label>
                    <p class="style33">
                      <input id="name" name="userid" class="text" />
                    </p>
			        <span class="style33">
			        <label for="password">Password (required)</label>
                    </span>
			        <p class="style33">
                      <input type="password" id="password" name="pass" class="text" />
                    </p>
	          <span class="style33">
			        <label for="email">Email Address (required)</label>
              </span>
			        <p class="style33">
                      <input id="email" name="email" class="text" />
                    </p>
			        <span class="style33">
			        <label for="mobile">Mobile Number (required)</label>
                    </span>
			        <p class="style33">
                      <input id="mobile" name="mobile" class="text" />
                    </p>
			        <span class="style33">
			        <label for="address">Your Address</label>
                    </span>
			        <p class="style33">
                      <textarea id="address" name="address" rows="3" cols="50"></textarea>
                    </p>
			        <span class="style33">
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </span>
			        <p class="style33">
                      <input id="dob" name="dob" class="text" />
                    </p>
			        <span class="style33">
			        <label for="gender">Select Gender (required)</label>
                    </span>
			        <p class="style33">
                      <select id="s1" name="gender" style="width:480px;" class="text">
                        <option>--Select--</option>
                        <option>MALE</option>
                        <option>FEMALE</option>
                      </select>
                    </p>
					<span class="style33">
			        <label for="gender">Stock Market Company(required)</label>
                    </span>
			        <p class="style33">
                      <select id="s1" name="company" style="width:480px;" class="text">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                    </p>
			        <span class="style33">
			        <label for="pincode"></label>
			        <label for="location"></label>
                    </span>
			        <p class="style33">
                      <label for="pic">Select Profile Picture (required)</label>
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
					<p><br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="index.html" class="style11">Back</a></p>
					<%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
            </form>
          </div>
          <div class="clr"></div>
        </div>
       
        
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Main</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="AdminLogin.jsp">Admin</a></li>
            <li><a href="cUserLogin.jsp">Company User Login </a></li>
            
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

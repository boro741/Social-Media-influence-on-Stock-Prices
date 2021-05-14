<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Companies Status..</title>
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
.style4 {font-weight: bold}
.style5 {color: #636363}
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
          <h1 class="title"><a href="#"><span class="style2"><span class="style2"><span class="style2">Adding NSE Status..</span></span></span></a></h1>
          <p>&nbsp;</p>
		  <div class="clr"></div>
          
          <div class="post_content">
            <%@ include file="connect.jsp" %>
                      <%@ page import="java.io.*"%>
                      <%@ page import="java.util.*" %>
                      <%@ page import="com.oreilly.servlet.*"%>
                      <span class="style18">
                      <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String title=null,company=null,location1=null,sk=null,bin = "", paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("company"))
							{
								company=multi.getParameter(paramname);
								
							}
							
							
						}
							
						
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from companies  where companyname='"+company+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                      </span>
                  <p class="style37">Company Already Exist..</p>													
							
							
				
                    </p>
			        <p>&nbsp;</p>
			        <p><a href="A_AddCompany.jsp" class="style15 style38">Back</a><a href="A_AddCategory.jsp" class="style8 style15"></a></p>
			        <p>
                      <%
				
					   }
					   else
					   {
					   
					  
			
					  
										if(!company.equals(""))
										{
									
									
									
												String strQuery2 = "insert into companies(companyname) values('"+company+"')";
												connection.createStatement().executeUpdate(strQuery2);
												
							
												
														%><p class="style37">Company Added Successfully..</p>		
											
											
                    </p>
			        <p>&nbsp;</p>
			        <p><a href="A_AddCompany.jsp" class="style15 style38">Back</a></p>
			        <%
											 }
											 else
											 {
											 	
												
														%><p class="style37">Please Input Company Name..</p>
			        <p class="style37">&nbsp;</p>
			        <a href="A_AddCompany.jsp" class="style15 style38">Back</a>
			        </p>
			        <%
					
					
												}
					
						}
					connection.close();
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
			      
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
            <li><a href="index.html">Logout</a></li>
	    
            
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

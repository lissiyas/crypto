<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Owner Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-colaborate-800.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<%
                if (request.getParameter("msg") != null) {
            %>
            <script>alert('Login Successfully');</script>
            <%            }
            %>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
        <font style="font-family: serif; font-size: 24px"><br></br>Fine-Grained Two-Factor Protection Mechanism for Data Sharing in Cloud Storage</font>  
      <div class="logo">
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="ownerhome.jsp"><span>Owner Home</span></a></li>
          <li><a href="upload.jsp"><span>File Upload</span></a></li>
          <li><a href="file_de.jsp"><span>File Details</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide.jpg" width="960" height="333" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="333" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="333" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>OWNER HOME PAGE</span></h2>
          <p class="infopost">Cloud Storage <span class="date"></span></p>
          <p>
              <center><img src="images/owner1.jpg" width="500" height="200" /></center>
          </p>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="ownerhome.jsp">Owner Home</a></li>
            <li><a href="upload.jsp">File Upload</a></li>
            <li><a href="file_de.jsp">File Details</a></li>
            <li><a href="index.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Domain Name<a href="#"></a></p>
      <p class="rf"><a target="_blank" href="#">CloudComputing</a></p>
      <%session.setAttribute("atrri", "AES");%>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>


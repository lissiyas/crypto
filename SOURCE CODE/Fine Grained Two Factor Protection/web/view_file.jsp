<%@page import="DataBaseConnection.DbConnection"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.AALOAD"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Show Decrypted File Here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-colaborate-800.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
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
<!--          <li class="active"><a href="ownerhome.jsp"><span>Owner Home</span></a></li>
          <li><a href="upload.jsp"><span>File Upload</span></a></li>-->
          <!--<li><a href="file_de.jsp"><span>File Details</span></a></li>-->
          <li><a href="file_de.jsp"><span>Back</span></a></li>
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
        <center>
         <div id="content">
                    <%

                        String id = request.getQueryString();
                        String fname = null;
                        System.out.println("Print Value:" + id);
                        Connection con = DbConnection.getConnection();
                        Statement st = con.createStatement();
                        ResultSet rt = st.executeQuery("select * from upload where id='" + id + "'");
                        StringBuffer sb = new StringBuffer();
                        if (rt.next()) {
                            //    String fkey=rt.getString("secret_key");
                            fname = rt.getString("filename");
                            InputStream is = rt.getAsciiStream("dfile");
                            BufferedReader br = new BufferedReader(new InputStreamReader(is));

                            String temp = null;
                            while ((temp = br.readLine()) != null) {
                                sb.append(temp);
                            }
                            System.out.println(sb);
                            String content = (sb.toString());

                    %>

                    <h2>Document Name: <font style="color: tomato"> <%=fname%></font></h2><br>
                        <textarea name="content" style="width: 500px;height: 150px;position: relative;left: 50px;"><%=content%></textarea>
                        <%
                            }
                        %>
                        <pre>
                                                                      
                        </pre>
                        </form>


                </div>
       </center>    
      
      <div class="clr"></div>
    </div>
  </div>
  
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">Domain Name<a href="#"></a></p>
      <p class="rf"><a target="_blank" href="#">CloudComputing</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>



<%@page import="DataBaseConnection.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%session.setAttribute("attri", "AES");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Re-encrypt file share to DR</title>
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
        <script>alert('Proxy Re-Encrypt data shared to DR');</script>
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
                            <li><a href="c_home.jsp"><span>Cloud Home</span></a></li>
                            <li><a href="file_de2.jsp"><span>File Details</span></a></li>
                            <li class="active"><a href="re_enc.jsp"><span>Re-encrypted data</span></a></li>
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

                    <!--  start body--->
                    <br><center><h2 style="font-size: 26px; color: deepskyblue; font-family: cursive">Proxy Re-Encrypt data share to DR</h2>
                            <br><table border="2" style="text-align: center; margin-left: 0px; border-color: black">
                                    <tr>
                                        <th style="text-align: center;width: 200px; font-size: 16px; color: black">File ID</th>
                                        <th style="text-align: center;width: 200px; font-size: 16px; color: black">File Name</th>
                                        <th style="text-align: center;width: 400px;  font-size: 16px; color: black">Policy</th>
                                        <th style="text-align: center;width: 300px;  font-size: 16px; color: black">Data Provider</th>
                                        <th style="text-align: center;width: 200px;  font-size: 16px; color: black">Date</th>
                                        <th style="text-align: center;width: 200px;  font-size: 16px; color: darkcyan">Re-enc File share to DR</th>
                                    </tr>
                                    <tr>
                                        <%

                                            Connection con = null;
                                            Statement st = null;
                                            ResultSet rs = null;
                                            try {
                                                con = DbConnection.getConnection();
                                                st = con.createStatement();
                                                rs = st.executeQuery("select * from upload");
                                                while (rs.next()) {
                                        %>
                                        <td style="font-size: 16px"><%=rs.getString("id")%></td>   
                                        <td style="font-size: 16px"><%=rs.getString("filename")%></td>   
                                        <td style="font-size: 16px"><%=rs.getString("policy")%></td>  
                                        <td style="font-size: 16px"><%=rs.getString("dataowner")%></td>  
                                        <td style="font-size: 16px"><%=rs.getString("date")%></td>  
                                        <td><a href="re_encshare.jsp?id=<%=rs.getString("id")%>"><font style="color: coral; font-size: 14px">Share</a></td>
                                    </tr>
                                    <%


                                            }
                                        } catch (Exception ex) {
                                            ex.printStackTrace();
                                        }

                                    %>
                                </table>
                                <br><br><br><br><br><br><br><br><br><br>
                                                                        <!---End body---->


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



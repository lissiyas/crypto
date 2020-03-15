<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>File Upload Here</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-colaborate-800.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <%
            if (request.getParameter("msg") != null) {
        %>
        <script>alert('File Upload Successfully');</script>
        <%            }
        %>
        <style> 

            .inputs {
                background: #b5b6ba;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                font-family: sans-serif;
                padding: 10px 10px;
                width: 200px;
                height: 16px;
                font-size: 14px;
                color: black;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputs:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #7588a5, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }

            .inputss {
                background: #b5b6ba;
                font-size: 0.9rem;
                -moz-border-radius: 3px;
                -webkit-border-radius: 3px;
                border-radius: 3px;
                border: none;
                padding: 10px 10px;
                width: 220px;
                margin-bottom: 20px;
                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );
                clear: both;
            }

            .inputss:focus {
                background: #fff;
                box-shadow: 0 0 0 3px #7588a5, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );
                outline: none;
            }
            .button {
                background-color : #778aa7; /* Green */
                border: none;
                color: white;
                width: 100px;
                height: 30px;
                font-family: fantasy;
                padding: 3px 07px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 14px;
            }

            #content { 
                overflow:auto; 
                width: 600px; 
                background: white; 
            } 

            #left, #right { 
                width: 40%; 
                margin:5px; 
                padding: 1em; 
                background: white; 
            } 

            #left  { float:left;  }
            #right { float:right; } 

        </style>
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
                            <li><a href="ownerhome.jsp"><span>Owner Home</span></a></li>
                            <li class="active"><a href="upload.jsp"><span>File Upload</span></a></li>
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

                            <!-- start content-top -->
                            <br><center><br>
                                        <h2 style="font-size: 22px; color: darkslateblue; font-family: cursive">Cipher Policy - Attribute Based Encryption </h2>
                                        <br><form action="FileUpload" method="post" enctype="multipart/form-data"> 
                                                <table>
                                                    <tr>
                                                        <td><input type="checkbox" name="attribute" value="Cloud Computing"/>Cloud Computing<br><br></td>
                                                         </tr>
                                                         <tr>
                                                         <td><input type="checkbox" name="attribute" value="Networking"/>Networking<br><br></td>
                                                         </tr>
                                                         <tr>
                                                         <td><input type="checkbox" name="attribute" value="Secure Computing"/>Secure Computing<br><br></td>
                                                         </tr>
                                                         <tr>
                                                         <td><input type="checkbox" name="attribute" value="Multimedia"/>Multimedia<br><br></td>
                                                         </tr>
                                                         <tr>
                                                         <td><input type="file" name="file" required=""/><br><br></td>
                                                         </tr>
                                                          </table>
                                                         <input type="Submit" value="Upload" class="button" >
                                                         </form></center>
                                                                                                                                        <!-- end content-top -->

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
                                                                                                                                                <div style="clear:both;"></div>
                                                                                                                                            </div>
                                                                                                                                        </div>
                                                                                                                                        </div>
                                                                                                                                        </body>
                                                                                                                                        </html>



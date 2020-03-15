<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Data sharing in cloud storage is receiving</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-colaborate-800.js"></script>
        <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/coin-slider.min.js"></script>
        <%
                if (request.getParameter("msgg") != null) {
            %>
            <script>alert('Please Enter Correct username and Password');</script>
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
                            <li><a href="index.jsp"><span>Home Page</span></a></li>
                            <li class="active"><a href="owner.jsp"><span>Data Owner</span></a></li>
                            <li><a href="user.jsp"><span>Data Receivers</span></a></li>
                            <li><a href="ca.jsp"><span>Central Authority</span></a></li>
                            <li><a href="cloud.jsp"><span>Cloud</span></a></li>
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
                            <h2><span>OWNER LOGIN</span></h2>
                            <p class="infopost">Cloud Storage <span class="date"></span></p>
                            <div id="content">
                                <div id="left">
                                    <form action="loginaction.jsp" method="get">
                                        <table>
                                            <tr>
                                                <br><label style="font-family: sans-serif; font-size: 20px;">User Name And Password </label>&nbsp;&nbsp;&nbsp;
                                                <td><input type="text" name="name" class="inputs" placeholder="User Name" required=""/></td>
                                            </tr>
                                            <tr>
                                               
                                                <td><input type="password" name="pass" class="inputs" placeholder="Password" required=""/></td>
                                            </tr>
                                            <tr>
                                                <input type="hidden" name="status" value="1" />
                                                <td><input type="submit" class="button" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="font-family: fantasy; font-size: 20px" href="oreg.jsp">New Owner</a></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>

                                <div id="right">
                                    <img src="images/logimages.jpg" width="250" height="200" />
                                </div>
                            </div>

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
                                <li><a href="index.jsp">Home Page</a></li>
                                <li><a href="owner.jsp">Data Owner</a></li>
                                <li><a href="user.jsp">Data Receivers</a></li>
                                <li><a href="ca.jsp">Central Authority</a></li>
                                <li><a href="cloud.jsp">Cloud</a></li>
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




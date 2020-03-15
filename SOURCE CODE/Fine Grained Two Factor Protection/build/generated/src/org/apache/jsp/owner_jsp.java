package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class owner_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <title>Data sharing in cloud storage is receiving</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/coin-slider.css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cufon-colaborate-800.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/coin-slider.min.js\"></script>\n");
      out.write("        <style> \n");
      out.write("\n");
      out.write("            .inputs {\n");
      out.write("                background: #b5b6ba;\n");
      out.write("                font-size: 0.9rem;\n");
      out.write("                -moz-border-radius: 3px;\n");
      out.write("                -webkit-border-radius: 3px;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                border: none;\n");
      out.write("                font-family: sans-serif;\n");
      out.write("                padding: 10px 10px;\n");
      out.write("                width: 200px;\n");
      out.write("                height: 16px;\n");
      out.write("                font-size: 14px;\n");
      out.write("                color: black;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );\n");
      out.write("                clear: both;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputs:focus {\n");
      out.write("                background: #fff;\n");
      out.write("                box-shadow: 0 0 0 3px #7588a5, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputss {\n");
      out.write("                background: #b5b6ba;\n");
      out.write("                font-size: 0.9rem;\n");
      out.write("                -moz-border-radius: 3px;\n");
      out.write("                -webkit-border-radius: 3px;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                border: none;\n");
      out.write("                padding: 10px 10px;\n");
      out.write("\n");
      out.write("                width: 220px;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("                box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );\n");
      out.write("                clear: both;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .inputss:focus {\n");
      out.write("                background: #fff;\n");
      out.write("                box-shadow: 0 0 0 3px #7588a5, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("            .button {\n");
      out.write("                background-color : #778aa7; /* Green */\n");
      out.write("                border: none;\n");
      out.write("                color: white;\n");
      out.write("                width: 100px;\n");
      out.write("                height: 30px;\n");
      out.write("                font-family: fantasy;\n");
      out.write("                padding: 3px 07px;\n");
      out.write("                text-align: center;\n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #content { \n");
      out.write("                overflow:auto; \n");
      out.write("                width: 600px; \n");
      out.write("                background: white; \n");
      out.write("            } \n");
      out.write("\n");
      out.write("            #left, #right { \n");
      out.write("                width: 40%; \n");
      out.write("                margin:5px; \n");
      out.write("                padding: 1em; \n");
      out.write("                background: white; \n");
      out.write("            } \n");
      out.write("\n");
      out.write("            #left  { float:left;  }\n");
      out.write("            #right { float:right; } \n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("\n");
      out.write("                <div class=\"header_resize\">\n");
      out.write("                    <font style=\"font-family: serif; font-size: 24px\"><br></br>Fine-Grained Two-Factor Protection Mechanism for Data Sharing in Cloud Storage</font>  \n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"menu_nav\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"index.jsp\"><span>Home Page</span></a></li>\n");
      out.write("                            <li class=\"active\"><a href=\"owner.jsp\"><span>Data Owner</span></a></li>\n");
      out.write("                            <li><a href=\"user.jsp\"><span>Data Receivers</span></a></li>\n");
      out.write("                            <li><a href=\"ca.jsp\"><span>Central Authority</span></a></li>\n");
      out.write("                            <li><a href=\"cloud.jsp\"><span>Cloud</span></a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                    <div class=\"slider\">\n");
      out.write("                        <div id=\"coin-slider\"> <a href=\"#\"><img src=\"images/slide.jpg\" width=\"960\" height=\"333\" alt=\"\" /> </a> <a href=\"#\"><img src=\"images/slide2.jpg\" width=\"960\" height=\"333\" alt=\"\" /> </a> <a href=\"#\"><img src=\"images/slide3.jpg\" width=\"960\" height=\"333\" alt=\"\" /> </a> </div>\n");
      out.write("                        <div class=\"clr\"></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"content_resize\">\n");
      out.write("                    <div class=\"mainbar\">\n");
      out.write("                        <div class=\"article\">\n");
      out.write("                            <h2><span>OWNER LOGIN</span></h2>\n");
      out.write("                            <p class=\"infopost\">Cloud Storage <span class=\"date\"></span></p>\n");
      out.write("                            <div id=\"content\">\n");
      out.write("                                <div id=\"left\">\n");
      out.write("                                    <form action=\"loginaction.jsp\" method=\"get\">\n");
      out.write("                                        <table>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <br><label style=\"font-family: sans-serif; font-size: 20px;\">User Name And Password </label>&nbsp;&nbsp;&nbsp;\n");
      out.write("                                                <td><input type=\"text\" name=\"name\" class=\"inputs\" placeholder=\"User Name\" required=\"\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                               \n");
      out.write("                                                <td><input type=\"password\" name=\"pass\" class=\"inputs\" placeholder=\"Password\" required=\"\"/></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                            <tr>\n");
      out.write("                                                <input type=\"hidden\" name=\"status\" value=\"1\" />\n");
      out.write("                                                <td><input type=\"submit\" class=\"button\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style=\"font-family: fantasy; font-size: 20px\" href=\"oreg.jsp\">New Owner</a></td>\n");
      out.write("                                            </tr>\n");
      out.write("                                        </table>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                                <div id=\"right\">\n");
      out.write("                                    <img src=\"images/logimages.jpg\" width=\"250\" height=\"200\" />\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"clr\"></div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"sidebar\">\n");
      out.write("                        <div class=\"searchform\">\n");
      out.write("                            <form id=\"formsearch\" name=\"formsearch\" method=\"post\" action=\"#\">\n");
      out.write("                                <span>\n");
      out.write("                                    <input name=\"editbox_search\" class=\"editbox_search\" id=\"editbox_search\" maxlength=\"80\" value=\"Search our ste:\" type=\"text\" />\n");
      out.write("                                </span>\n");
      out.write("                                <input name=\"button_search\" src=\"images/search.gif\" class=\"button_search\" type=\"image\" />\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"clr\"></div>\n");
      out.write("                        <div class=\"gadget\">\n");
      out.write("                            <h2 class=\"star\"><span>Sidebar</span> Menu</h2>\n");
      out.write("                            <div class=\"clr\"></div>\n");
      out.write("                            <ul class=\"sb_menu\">\n");
      out.write("                                <li><a href=\"index.jsp\">Home Page</a></li>\n");
      out.write("                                <li><a href=\"owner.jsp\">Data Owner</a></li>\n");
      out.write("                                <li><a href=\"user.jsp\">Data Receivers</a></li>\n");
      out.write("                                <li><a href=\"ca.jsp\">Central Authority</a></li>\n");
      out.write("                                <li><a href=\"cloud.jsp\">Cloud</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clr\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <div class=\"footer_resize\">\n");
      out.write("                    <p class=\"lf\">Domain Name<a href=\"#\"></a></p>\n");
      out.write("                    <p class=\"rf\"><a target=\"_blank\" href=\"#\">CloudComputing</a></p>\n");
      out.write("                    <div style=\"clear:both;\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

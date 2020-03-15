package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DataBaseConnection.DbConnection;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;

public final class re_005fenc_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
session.setAttribute("attri", "AES");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <title>Re-encrypt file share to DR</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/coin-slider.css\" />\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/cufon-colaborate-800.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/jquery-1.4.2.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/coin-slider.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"header\">\n");
      out.write("                <div class=\"header_resize\">\n");
      out.write("                    <font style=\"font-family: serif; font-size: 24px\"><br></br>Fine-Grained Two-Factor Protection Mechanism for Data Sharing in Cloud Storage</font>  \n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"menu_nav\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"c_home.jsp\"><span>Cloud Home</span></a></li>\n");
      out.write("                            <li class=\"active\"><a href=\"file_de2.jsp\"><span>File Details</span></a></li>\n");
      out.write("                            <li><a href=\"re_enc.jsp\"><span>Re-encrypted data</span></a></li>\n");
      out.write("                            <li><a href=\"index.jsp\"><span>Logout</span></a></li>\n");
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
      out.write("\n");
      out.write("                    <!--  start body--->\n");
      out.write("                    <br><center><h2 style=\"font-size: 26px; color: deepskyblue; font-family: cursive\">Re-Encrypt data share to DR</h2>\n");
      out.write("                            <br><table border=\"2\" style=\"text-align: center; margin-left: 0px; border-color: black\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th style=\"text-align: center;width: 200px; font-size: 16px; color: black\">File ID</th>\n");
      out.write("                                        <th style=\"text-align: center;width: 200px; font-size: 16px; color: black\">File Name</th>\n");
      out.write("                                        <th style=\"text-align: center;width: 400px;  font-size: 16px; color: black\">Policy</th>\n");
      out.write("                                        <th style=\"text-align: center;width: 300px;  font-size: 16px; color: black\">Data Provider</th>\n");
      out.write("                                        <th style=\"text-align: center;width: 200px;  font-size: 16px; color: black\">Date</th>\n");
      out.write("                                        <th style=\"text-align: center;width: 200px;  font-size: 16px; color: darkcyan\">Re-enc File share to DR</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        ");

                                            String spol = (String) session.getAttribute("spolicy");
                                            System.out.println("Policy De : " + spol);
                                            Connection con = null;
                                            Statement st = null;
                                            ResultSet rs = null;
                                            try {
                                                con = DbConnection.getConnection();
                                                st = con.createStatement();
                                                rs = st.executeQuery("select * from upload");
                                                while (rs.next()) {
                                        
      out.write("\n");
      out.write("                                        <td style=\"font-size: 16px\">");
      out.print(rs.getString("id"));
      out.write("</td>   \n");
      out.write("                                        <td style=\"font-size: 16px\">");
      out.print(rs.getString("filename"));
      out.write("</td>   \n");
      out.write("                                        <td style=\"font-size: 16px\">");
      out.print(rs.getString("policy"));
      out.write("</td>  \n");
      out.write("                                        <td style=\"font-size: 16px\">");
      out.print(rs.getString("dataowner"));
      out.write("</td>  \n");
      out.write("                                        <td style=\"font-size: 16px\">");
      out.print(rs.getString("date"));
      out.write("</td>  \n");
      out.write("                                        <td><a href=\"re_encshare.jsp?id=");
      out.print(rs.getString("id"));
      out.write("\"><font style=\"color: coral; font-size: 14px\">Share</a></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");



                                            }
                                        } catch (Exception ex) {
                                            ex.printStackTrace();
                                        }

                                    
      out.write("\n");
      out.write("                                </table>\n");
      out.write("                                <br><br><br><br><br><br><br><br><br><br>\n");
      out.write("                                                                        <!---End body---->\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                        <div class=\"clr\"></div>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                        </div>\n");
      out.write("\n");
      out.write("                                                                        <div class=\"footer\">\n");
      out.write("                                                                            <div class=\"footer_resize\">\n");
      out.write("                                                                                <p class=\"lf\">Domain Name<a href=\"#\"></a></p>\n");
      out.write("                                                                                <p class=\"rf\"><a target=\"_blank\" href=\"#\">CloudComputing</a></p>\n");
      out.write("                                                                                <div style=\"clear:both;\"></div>\n");
      out.write("                                                                            </div>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                        </div>\n");
      out.write("                                                                        </body>\n");
      out.write("                                                                        </html>\n");
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

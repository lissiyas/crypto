<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DataBaseConnection.DbConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String role = request.getParameter("role");
    String policy = request.getParameter("policy");
    String state = request.getParameter("state");
    String country = request.getParameter("country");

    Date date = new Date();
    DateFormat df = new SimpleDateFormat("dd/MM/yyyy 'at' hh:mm:ss");
    String CUDate = df.format(date);

    int status = Integer.parseInt(request.getParameter("status"));

    try {
        con = DbConnection.getConnection();
        st = con.createStatement();
        switch (status) {
            case 1:
                try {
                    System.out.println("Owner Login : " + name + pass);
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='owner'");
                    if (rs.next()) {
                        session.setAttribute("semail", rs.getString("email"));
                        session.setAttribute("sname", rs.getString("name"));
                        session.setAttribute("sid", rs.getString("id"));

                        response.sendRedirect("ownerhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("owner.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 2:
                try {
                    System.out.println("User Login : " + name + pass);
                    rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + pass + "' AND role='user'");
                    if (rs.next()) {
                        session.setAttribute("ssemail", rs.getString("email"));
                        session.setAttribute("sname", rs.getString("name"));
                        session.setAttribute("ssid", rs.getString("id"));
                        session.setAttribute("spolicy", rs.getString("policy"));
                        session.setAttribute("sstate", rs.getString("state"));
                        session.setAttribute("scountry", rs.getString("country"));
                        session.setAttribute("sstauts", rs.getString("status"));

                        response.sendRedirect("userhome.jsp?msg=success");
                    } else {
                        response.sendRedirect("user.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 3:

                try {
                    System.out.println("Owner Details : " + name + pass + email + dob + role + state + country + CUDate);
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg(name, pass, email, dob, role, policy, state, country, cudate, status) values ('" + name + "','" + pass + "','" + email + "','" + dob + "','" + role + "','Null','" + state + "','" + country + "','" + CUDate + "', 'No')");
                    if (i != 0) {

                        response.sendRedirect("oreg.jsp?msg=success");
                    } else {
                        response.sendRedirect("oreg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;
            case 4:

                try {
                    System.out.println("User Details : " + name + pass + email + dob + role + policy + state + country + CUDate);
                    con = DbConnection.getConnection();
                    st = con.createStatement();
                    int i = st.executeUpdate("insert into reg(name, pass, email, dob, role, policy, state, country, cudate, status) values ('" + name + "','" + pass + "','" + email + "','" + dob + "','" + role + "','" + policy + "','" + state + "','" + country + "','" + CUDate + "', 'No')");
                    if (i != 0) {

                        response.sendRedirect("reg.jsp?msg=success");
                    } else {
                        response.sendRedirect("reg.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 5:
                try {

                    if (name.equalsIgnoreCase("ca") && pass.equalsIgnoreCase("ca")) {

                        response.sendRedirect("cahome.jsp?msg=success");
                    } else {
                        response.sendRedirect("ca.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;

            case 6:
                try {
                    if (name.equalsIgnoreCase("cloud") && pass.equalsIgnoreCase("cloud")) {

                        response.sendRedirect("c_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("cloud.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

                break;

            case 8:
                try {
                    if (name.equalsIgnoreCase("Admin") && pass.equalsIgnoreCase("Admin")) {
                        response.sendRedirect("admin_home.jsp?msg=success");
                    } else {
                        response.sendRedirect("admin.jsp?msgg=failed");
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
                break;


            default:
                response.sendRedirect("index.html");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>

<%






%>
<%@page import="DataBaseConnection.Mail"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@ page import ="java.sql.*"%>
<%
    {
        String url = "jdbc:mysql://localhost:3306/mechanism";
        String user = "root";
        String password = "root";
        String id = request.getQueryString();
        session.setAttribute("sid", id);
        System.out.println("id get successfully" + id);
        Connection conn = DriverManager.getConnection(url, user, password);

        String sql = "Select *  from request where id = '" + id + "' ";
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet result = statement.executeQuery();
        if (result.next()) {

            String name = result.getString("uname");
            String email = result.getString("email");
            session.setAttribute("Email", email);
            String fname = result.getString("fname");
            String skey = result.getString("secret_key");
            String msg = "File Name : " + fname + "\nSecret Key : " + skey;
            System.out.println("uour randome string" + msg);
            
            Mail m = new Mail();
            m.secretMail(msg, name, email);

            response.sendRedirect("update.jsp");
        } else {
            response.sendRedirect("file_req.jsp");
        }
    }
%>


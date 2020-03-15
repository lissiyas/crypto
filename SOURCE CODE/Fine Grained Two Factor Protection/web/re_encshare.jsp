<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseConnection.DbConnection" %>
<%
    String enc = null;
    InputStream is = null;
    String id = request.getParameter("id");
    System.out.println("File ID : " + id);

    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();

    try {
        ResultSet rs = st.executeQuery("select * from upload where id='" + id + "'");
        if (rs.next()) {
            is = (InputStream) rs.getAsciiStream("content");

            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            String temp = null;
            StringBuffer sb = new StringBuffer();
            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }
            String content = (sb.toString());
            System.out.println(content);
            enc = content;
            st1.executeUpdate("update upload set reencupdate='Yes' where id='" + id + "'");

            response.sendRedirect("re_enc.jsp?msg=success");
        } else {
            response.sendRedirect("re_enc.jsp");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }




%>
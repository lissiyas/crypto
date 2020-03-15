<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseConnection.DbConnection"%>
<%
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();

    String sid = (String) session.getAttribute("sid");
    System.out.println("Sid" + sid);
    int i = st.executeUpdate("update request set status = 'Yes' where id = '" + sid + "'");
    if (i != 0) {
        response.sendRedirect("file_req.jsp?msg=Secret_key_sent_to_Success");
    } else {
        response.sendRedirect("file_req.jsp?msgg=Error");
    }
%>
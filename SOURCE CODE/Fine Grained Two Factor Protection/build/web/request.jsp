<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import="DataBaseConnection.DbConnection"%>
<%
    try {

        String User_Name = (String) session.getAttribute("sname");
        String Email = (String) session.getAttribute("ssemail");
        String State = (String) session.getAttribute("sstate");
        String Country = (String) session.getAttribute("scountry");

        String title = request.getParameter("fname");
        String skey = request.getParameter("skey");
        System.out.println("File name : " + title + "\nSecret Key : " + skey);

        String Status = "No";
        System.out.println("Request is activated" + Email + State + Country + title + skey + Status);
        Connection con = DbConnection.getConnection();
        Statement st = con.createStatement();

        String sql = "insert into request(uname, email, state, country, fname, secret_key, status) values ('" + User_Name + "','" + Email + "','" + State + "','" + Country + "','" + title + "','" + skey + "','" + Status + "')";

        int x = st.executeUpdate(sql);
        if (x != 0) {
            response.sendRedirect("file_de1.jsp?msg=Request_send_Successfully");

        } else {
            response.sendRedirect("file_de1.jsp?msgg=faild");

        }
        con.close();
        st.close();
    } catch (Exception e) {
        out.println(e);

    }
%>   
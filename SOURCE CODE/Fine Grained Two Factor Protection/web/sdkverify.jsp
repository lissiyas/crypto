<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseConnection.DbConnection"%>
<%
    final String FILENAME = "E:\\SECRETKEY\\SDK\\sdk.enc";
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    BufferedReader br = null;
    FileReader fr = null;

    try {

        fr = new FileReader(FILENAME);
        br = new BufferedReader(fr);
        StringBuffer sb = new StringBuffer();

        String temp = null;
        while ((temp = br.readLine()) != null) {
            sb.append(temp);
        }

        String str = sb.toString();

        String sdk = (String) session.getAttribute("sstauts");
        System.out.println("s1 : " + str);
        System.out.println("s2 : " + sdk);

        if (sdk.equalsIgnoreCase(str)) {
            System.out.println("************** SDK ERIFICATION SUCCESS *************");
            response.sendRedirect("download.jsp?msg=success");
        } else {
            response.sendRedirect("down.jsp?sdkeror=Device Not Found");
        }


    } catch (Exception ex) {
        response.sendRedirect("down.jsp?sdkeror=Device Not Found");
//        ex.printStackTrace();
    }

%>
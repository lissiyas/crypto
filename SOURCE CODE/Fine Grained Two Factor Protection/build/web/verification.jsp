<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="DataBaseConnection.DbConnection"%>
<%    
    String key = request.getParameter("verify");
    String skey = key.replace(" ", "+");
    System.out.println("Secret Key : " + skey);
    session.setAttribute("skkey", skey);
    Connection con = DbConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from upload where skey='" + skey + "'");
        if(rs.next()){
            response.sendRedirect("sdkverify.jsp");
            System.out.println("************** SPK ERIFICATION SUCCESS *************");
        }else{
            response.sendRedirect("down.jsp?spk=Not Mached");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
    
    
    
%>

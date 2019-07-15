<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="ActionPage.DBConnection"%>
<%@page import="ActionPage.MailSender" %>
<%
    String msgg = (String) session.getAttribute("message");
    String id = (String) session.getAttribute("ssid");
    String mail = (String) session.getAttribute("ssemail");
    String name = null, email = null;

    String msg = "Avoid this route, " + msgg;
    System.out.println("Message : " + msgg);
    MailSender ms = new MailSender();
    try {

        Connection con = DBConnection.getConnection();
        Statement st = con.createStatement();

        ResultSet rs = st.executeQuery("select * from reg where email!='" + mail + "'");
        while (rs.next()) {

            name = rs.getString("name");
            email = rs.getString("email");
            ms.secretMail(msg, name, email);
            
            response.sendRedirect("user_home.jsp?msgggg=success");
        }

        System.out.println("Error");
    } catch (Exception EX) {
        EX.printStackTrace();
    }
%>

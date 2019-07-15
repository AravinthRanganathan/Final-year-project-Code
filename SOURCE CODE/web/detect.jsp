<%@page import="ActionPage.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    Connection con1 = DBConnection.getConnection();
    Statement st1 = con1.createStatement();

    Connection con2 = DBConnection.getConnection();
    Statement st2 = con2.createStatement();
    
    Connection con3 = DBConnection.getConnection();
    Statement st3 = con3.createStatement();


    try {

        String Query1 = "select * from tweets";
        ResultSet rs1 = st1.executeQuery(Query1);
        while (rs1.next()) {
            String msg = rs1.getString("tweet");
            System.out.println("Message get from MYSQL : " + msg);

            String Query2 = "select * from reword";
            ResultSet rs2 = st2.executeQuery(Query2);
            while (rs2.next()) {
                String vel = rs2.getString("reword");
                System.out.println("----------------------- : " + vel);

                if (msg.indexOf(vel) >= 0) {

                    st3.executeUpdate("update tweets set status='Yes' where tweet='" + msg + "'");

                }

            }
        }
        response.sendRedirect("traffic_result.jsp");

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
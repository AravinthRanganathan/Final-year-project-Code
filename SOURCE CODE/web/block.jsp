<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="TwitterAPI.account.ComposeTweet" %>

<%
    String block = (String) session.getAttribute("message");
    
    System.out.println("Checking Traffic Related Words : " + block);
    boolean bol = false;

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/traffic", "root", "root");
    Statement st = con.createStatement();
    String Query = "select * from reword";
    ResultSet rs = st.executeQuery(Query);
    while (rs.next()) {
        String val1 = rs.getString("reword");
        System.out.println("val1 is :" + val1);
        if (block.indexOf(val1) >= 0) {
//            String word = block.replace(val1, "");
            System.out.println("Founded : " + val1);
//            session.setAttribute("filter", word);
            response.sendRedirect("report.jsp?word=" + block);

            bol = false;
            break;
        } else {
            bol = true;
        }
    }
    if (bol == true) {
        response.sendRedirect("user_home.jsp?" + block);
    }

%>


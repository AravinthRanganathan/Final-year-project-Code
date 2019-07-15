<%@page import="ActionPage.DBConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = request.getParameter("name");
    String password = request.getParameter("pass");
    System.out.println(name);
    
    System.out.println(password);
    Connection con = DBConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + password + "'");
        if (rs.next()) {

            session.setAttribute("ssid", rs.getString("id"));
            session.setAttribute("ssname", rs.getString("name"));
            session.setAttribute("ssemail", rs.getString("email"));
            session.setAttribute("ssgender", rs.getString("gender"));
            session.setAttribute("ssstate", rs.getString("state"));
            session.setAttribute("sscountry", rs.getString("country"));

            response.sendRedirect("user_home.jsp?msg=success");
        } else {
            response.sendRedirect("user.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }
%>
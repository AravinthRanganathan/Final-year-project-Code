<%@page import="java.sql.*" %>
<%@page import="ActionPage.DBConnection" %>
<%

    long serialVersionUID = -2486285775626564821L;
    String URL_REGEX = "((www\\.[\\s]+)|(https?://[^\\s]+))";

   
    String STARTS_WITH_NUMBER = "[1-9]\\s*(\\w+)";
    String tweet = "";
//    String premsg = "";
    Connection con1 = DBConnection.getConnection();
    Connection con2 = DBConnection.getConnection();
    Statement statement = con1.createStatement();
    Statement upd = con2.createStatement();
    String tid = "";
    try {
        ResultSet rs = statement.executeQuery("select * from tweets");
        while (rs.next()) {
            tid = rs.getString("id");
            tweet = rs.getString("tweet");
//            System.out.println("Before : " + tweet);
//            String t1 = rs.getString("tweet");
            System.out.println("Tweet getting for preprocessing : " + tweet);
            // Remove urls 
            tweet = tweet.replaceAll(URL_REGEX, "");

            // Remove @username 
            tweet = tweet.replaceAll("@([^\\s]+)", "");
            tweet = tweet.replaceAll("\'", "");
           

           

            // Remove words starting with a number 
            tweet = tweet.replaceAll(STARTS_WITH_NUMBER, "");
            String update = "update tweets set tweet='" + tweet + "' where id='" + tid + "'";

            upd.executeUpdate(update);
            System.out.println("Preprocessed Successfully!!");

        }
        response.sendRedirect("pre_result.jsp?Msg=Preprocessed Successfully!!");

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ActionPage;

import TwitterAPI.account.ComposeTweet;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/Twitter")
@MultipartConfig(maxFileSize = 16177215)
public class Tweets extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/traffic";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        String userid = (String) session.getAttribute("ssid");
        String uname = (String) session.getAttribute("ssname");
        System.out.println("User ID : " + userid + "User Name : " + uname);
        String msg = request.getParameter("msg");
        session.setAttribute("message", msg);
        ComposeTweet ct = new ComposeTweet();
        ct.PostTweets(msg);
        InputStream inputStream = null;
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }

        Connection conn = null;
        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "INSERT INTO tweet (uid, username, msg, photo) values (?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, userid);
            statement.setString(2, uname);
            statement.setString(3, msg);


            if (inputStream != null) {
                statement.setBlob(4, inputStream);
            }
            
            int row = statement.executeUpdate();
            if (row > 0) {
                response.sendRedirect("block.jsp?msg=success");
            } else {
                response.sendRedirect("user_home.jsp?msgg=Failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

    }
}
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ActionPage.DBConnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class detect_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

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

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

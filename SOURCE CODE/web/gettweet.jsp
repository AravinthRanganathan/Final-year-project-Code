<%@page import="TwitterAPI.GetTimeLineStatus" %>
<%

    String ckey = ("dghfghfghfghfghhjghjghjsckey");
    String cskey = ("scghjghjghj45545hgj4ghjskey");
    String tkey = ("stkghjghjghj1154544ghj1ghey");
    String toskey = ("445gh4j54gh5j45gh45j4hgstoskey");
    System.out.println("CKey : " + ckey + "\nCSKey : " + cskey + "\nTKey : " + tkey + "\nTSKey : " + toskey);

    GetTimeLineStatus status = new GetTimeLineStatus();
    status.GetTweetsFromTimeLine(ckey, cskey, tkey, toskey);

    response.sendRedirect("showtweets.jsp?msg=success");
%>
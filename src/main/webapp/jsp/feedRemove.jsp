<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%@ page import="dev.iosif.iosifmysns.util.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.net.InterfaceAddress" %>
<%
    String id = session.getAttribute("id").toString();
    request.setCharacterEncoding("utf-8");
    if(Objects.equals(id, "null")){
        out.print("Login First");
        response.setStatus(200);
    }
    if(request.getParameter("userid") != id) {
        out.print("No Permission.");
        response.setStatus(200);
    }
    String no = request.getParameter("no");
    int number = Integer.parseInt(no);
    FeedDAO dao = new FeedDAO();
    if (dao.remove(number)) {
        out.print("OK");
    }
    else {
        out.print("ER");
    }
%>
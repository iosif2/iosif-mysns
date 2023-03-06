<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%
	String uid = request.getParameter("id");
	String frid = request.getParameter("frid");
	out.print((new FriendDAO()).insert(uid, frid));
%>
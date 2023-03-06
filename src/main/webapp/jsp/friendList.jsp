<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%
	String uid = request.getParameter("id");
	out.print((new FriendDAO()).getList(uid));
%>
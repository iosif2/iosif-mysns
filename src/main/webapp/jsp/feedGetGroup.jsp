<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%
	String str = (new FeedDAO()).getGroup(request.getParameter("frids"), request.getParameter("maxNo"));
	out.print(str);
%>
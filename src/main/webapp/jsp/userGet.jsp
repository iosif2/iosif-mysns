<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%
	String uid = request.getParameter("id");
	String str = (new UserDAO()).get(uid);	// jsp는 dao에 대한 인터페이스 역할만 함
	out.print(str);
%> 
<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%	
	String str = (new FeedDAO()).getList();	// getList는 ResultSet을 return 해야함
	
	/*
	String str = "<table align=center>";
	// str += "<tr><th colspan=2>작성글 리스트</th></tr>";
	str += "<tr height=40><td><b>작성글 리스트</b></td>";
	str += "<td align=right>";
	str += "<a href='feedAdd.html'><button>글쓰기</button></a>";	// 버튼을 누르면 feedAdd.html로 이동
	str += "</td></tr>";
	
	// for (int i=0; i<feeds.size(); i++) {
	// FeedObj feed = feeds.get(i);
	for (FeedObj feed : feeds) {
		String img = feed.getImages(), imgstr = "";
		if (img != null) {
			imgstr = "<img src='images/" + img + "' width=240>";
		}
		str += "<tr><td colspan=2><hr></td></tr>";
		str += "<tr>";
		str += "<td><small>" + feed.getId() + "</small></td>";
		str += "<td><small>&nbsp;(" + feed.getTs() + ")</small></td>";
		str += "</tr>";
		str += "<tr><td colspan=2>" + imgstr + "</td></tr>";
		str += "<tr><td colspan=2>" + feed.getContent() + "</td></tr>";
	}
	str += "</table>";
	*/
	
	out.write(str);
%>
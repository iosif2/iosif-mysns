<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="dev.iosif.iosifmysns.dao.*" %>
<%@ page import="dev.iosif.iosifmysns.util.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%
	// String uid = null, ucon = null, ufname = null;
	String jsonstr = null, ufname = null;
	byte[] ufile = null;
	request.setCharacterEncoding("utf-8");
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	List items = sfu.parseRequest(request);
	Iterator iter = items.iterator();
	while(iter.hasNext()) {
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName();
		if(item.isFormField()) {
			String value = item.getString("utf-8");
			// if (name.equals("id")) uid = value;
			// else if (name.equals("content")) ucon = value;
			if (name.equals("jsonstr")) jsonstr = value;
		}
		else {
			if (name.equals("image")) {
				ufname = item.getName();
				ufile = item.get();
				String root = application.getRealPath(java.io.File.separator);
				FileUtil.saveImage(root, ufname, ufile);
			}
		}
	}

	FeedDAO dao = new FeedDAO(); 
	if (dao.insert(jsonstr)) {
		// session.setAttribute("id", uid);
		// response.sendRedirect("main.jsp");
		out.print("OK");
	}
	else {
		out.print("ER");	// "작성글이 업로드 중 오류가 발생하였습니다.");
	}
%>
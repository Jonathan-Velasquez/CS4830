<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello world tutorial</title>
</head>
<body>
<%= "Hello!" %>
<%
	out.println("Your IP address is " + request.getRemoteAddr());
	String userAgent = request.getHeader("user-agent");
	String browser = "unknown";
	out.print("<br/>and your browser is ");
	if (userAgent != null) {
		if (userAgent.indexOf("MSIE") > -1) {
		browser = "MS Internet Explorer";
		}
		else if (userAgent.indexOf("Firefox") > -1) {
		browser = "Mozilla Firefox";
		}
		else if (userAgent.indexOf("Opera") > -1) {
		browser = "Opera";
		}
		else if (userAgent.indexOf("Chrome") > -1) {
		browser = "Google Chrome";}
		else if (userAgent.indexOf("Safari") > -1) {
		browser = "Apple Safari";
		}
	}
	out.println(browser);
%>
<p>
   Today's date: <%= (new java.util.Date()).toLocaleString()%>
</p>
</body>
</html>
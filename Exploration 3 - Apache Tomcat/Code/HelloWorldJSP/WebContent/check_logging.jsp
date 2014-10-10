<%@ page import="MyClasses.MyLog"%>
<%
MyLog log = (MyLog)application.getAttribute("logFile");
if (log != null) log.println("This is my entry in the log");
%>
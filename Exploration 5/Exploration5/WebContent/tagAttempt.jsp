<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--This is where the panel tag file is located. --%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>panels attempt</title>
</head>
<body>
	<table border="0">
      <tr valign="top">
        <td>
          <tags:panel color="crimson" bgcolor="red" title="First panel">
            First panel.<br/>
          </tags:panel>
        </td>
        <td>
          <tags:panel color="DarkGreen" bgcolor="green" title="Second panel">
            Second panel.<br/>
            Second panel.<br/>
          </tags:panel>
        </td>
        <td>
          <tags:panel color="DarkMagenta" bgcolor="purple" title="Third panel">
            Third panel.<br/>
            <tags:panel color="HotPink" bgcolor="pink" title="Inner pannel">
              A panel in a panel.
              <tags:panel color="Gold" bgcolor="orange" title="Inner inner panel">
              A panel inside a panel in a panel.
            </tags:panel>
            </tags:panel>
            Third panel.<br/>
          </tags:panel>
        </td>
      </tr>
    </table>
</body>
</html>
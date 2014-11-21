<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="color" %>
<%@ attribute name="bgcolor" %>
<%@ attribute name="title" %>
<table border="1" bgcolor="${color}">
  <tr>
    <td><b>${title}</b></td>
  </tr>
  <tr>
    <td bgcolor="${bgcolor}">
      <jsp:doBody/>
    </td>
  </tr>
</table>
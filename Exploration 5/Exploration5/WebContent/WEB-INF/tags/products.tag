<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="normalPrice" fragment="true" %>
<%@ attribute name="onSale" fragment="true" %>
<%@ variable name-given="name" %>
<%@ variable name-given="price" %>
<%@ variable name-given="origPrice" %>
<%@ variable name-given="salePrice" %>
<%@ variable name-given="greatGame" %>

<table border="1">
  <tr>
    <td>
      <c:set var="name" value="Battlefield 4"/>
      <c:set var="price" value="$29.99"/>
      <jsp:invoke fragment="normalPrice"/>
    </td>
    <td>
      <c:set var="name" value="Far Cry 3"/>
      <c:set var="origPrice" value="$19.99"/>
      <c:set var="salePrice" value="$4.99"/>
      <c:set var="greatGame" value="true"/>
      <jsp:invoke fragment="onSale"/>
    </td>
    <td>
      <c:set var="name" value="Rise of Nations Gold"/>
      <c:set var="price" value="$9.99"/>
      <c:set var="greatGame" value="true"/> 
      <jsp:invoke fragment="normalPrice"/>
    </td>
    <td>
      <c:set var="name" value="Dark Souls 2"/>
      <c:set var="price" value="$39.99"/>
      <c:set var="greatGame" value="true"/>
      <jsp:invoke fragment="normalPrice"/>
    </td>
    <td>
      <c:set var="name" value="Total War: Rome 2"/>
      <c:set var="origPrice" value="$29.99"/>
      <jsp:invoke fragment="onSale"/>
    </td>
  </tr>
</table>

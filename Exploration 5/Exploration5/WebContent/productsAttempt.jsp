<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Products</h1>
    <tags:products>
      <jsp:attribute name="normalPrice">
        Item: ${name}<br/>
        Price: ${price}
      </jsp:attribute>
      <jsp:attribute name="onSale">
        Item: ${name}<br/>
        <font color="red"><strike>Was: ${origPrice}</strike></font><br/>
        <b>Now: ${salePrice}</b>
      </jsp:attribute>
     </tags:products>
</body>
</html>
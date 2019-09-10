<%--
  Created by IntelliJ IDEA.
  User: sk
  Date: 08/09/2019
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<h1>Product details</h1>

<p>
    <a href="/products">Back to product list</a>
</p>
<table border="1">
    <tr>
        <td>Name: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Describe: </td>
        <td>${requestScope["product"].getDescribe()}</td>
    </tr>
    <tr>
        <td>Producer: </td>
        <td>${requestScope["product"].getProducer()}</td>
    </tr>




</table>
<img src="<%=request.getContextPath()%>/images/${product.getImages()}" height="100px" width="100px">

</body>
</html>

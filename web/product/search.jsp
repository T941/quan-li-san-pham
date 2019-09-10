<%--
  Created by IntelliJ IDEA.
  User: sk
  Date: 09/09/2019
  Time: 06:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>search</title>
</head>

<body>

<form method="post">
    <input type="text" name="name">
    <input type="submit" value="Search">
</form>
<p>
    <a href="/products">Back to product list</a>
</p>
<h1>${requestScope["product"].getName()}</h1>
<table border="1">
    <tr>

        <td>Price</td>
        <td>Describe</td>
        <td>Producer</td>

    </tr>
    <tr>

        <td>${requestScope["product"].getPrice()}</td>
        <td>${requestScope["product"].getDescribe()}</td>
        <td>${requestScope["product"].getProducer()}</td>
        <td></td>
    </tr>
    <tr><img src="<%=request.getContextPath()%>/images/${requestScope["product"].getImages()}" height="100px"width="100px"></tr>
</table>
</body>
</html>

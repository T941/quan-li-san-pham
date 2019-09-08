<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sk
  Date: 06/09/2019
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List</title>
</head>
<body>
<h1>Products</h1>
<a href="/products?action=search">phần tìm kiếm ở dưới chưa dùng đc đâu em đang sửa muốn tìm kiếm ấn vào đây</a>
<form method="post">
    <input type="text" name="name">
    <input type="submit" value="Search">
</form>

<p>
    <a href="/products?action=create">Create new product</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Describe</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescribe()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a> </td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a> </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

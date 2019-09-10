<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sk
  Date: 08/09/2019
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post" enctype="multipart/form-data">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Describe:</td>
                <td><input type="text" name="describe" id="describe" value="${requestScope["product"].getDescribe()}"></td>
            </tr>
            <tr>
                <td>Producer:</td>
                <td><input id="producer" type="text" name="producer"value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td>Picture</td>
                <td>
                    <img src="<%=request.getContextPath()%>/images/${requestScope["product"].getImages()}" height="30px">
                    <input type="file" name="picture" id="picture" >
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>

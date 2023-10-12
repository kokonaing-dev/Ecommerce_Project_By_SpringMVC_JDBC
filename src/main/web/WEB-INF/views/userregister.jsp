<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/3/2023
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Register</title>
</head>
<body>
<form action="/useradd" method="post">
    <label for="customername">Name:</label>
    <input type="text" id="customername" name="customername" required><br><br>

    <label for="password">Password:</label>
    <input type="text" id="password" name="password" required><br><br>

    <label for="phone">Phone:</label>
    <input type="tel" id="phone" name="phone" required><br><br>

    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required><br><br>

    <input type="submit" value="Register">

</form>
</body>
</html>

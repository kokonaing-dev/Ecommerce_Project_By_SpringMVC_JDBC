<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/3/2023
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Login</title>
</head>
<body>
<div class="login-container">
    <h2 style="color:red">${error}</h2>
    <form action="/userlogin" method="post">
        <label for="customername">Username:</label>
        <input type="text" id="customername" name="customername" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login">
    </form>
</div>
</body>
</html>

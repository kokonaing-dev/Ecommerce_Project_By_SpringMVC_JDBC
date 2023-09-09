<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/26/2023
  Time: 7:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            position: relative;
        }

        body::before,
        body::after {
            content: "";
            position: absolute;
            top: 0;
            width: 50%;
            height: 100%;
            background-size: cover;
        }

        body::before {
            left: 0;
            background-image: url(''); /* Replace with your image URL */
        }

        body::after {
            right: 0;
            background-image: url(''); /* Replace with your image URL */
        }

        .form-container {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: rgba(249, 249, 249, 0.8);
            z-index: 1;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <title>Canceller</title>
</head>
<body>
<div class="form-container">
    <form action="/cancelleradd" method="post">
        <label for="name">Admin Name:</label>
        <input type="name" id="name" name="name" required><br><br>
        <label for="contact">Contact:</label>
        <input type="contact" id="contact" name="contact" required><br><br>
        <input type="submit" value="Add Table">
    </form>
</div>
</body>
</html>

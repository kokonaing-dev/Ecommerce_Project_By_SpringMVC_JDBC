<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/22/2023
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.2);
        }
        input[type="text"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        button[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
        h2 {
            text-align: center;
            margin-top: 20px;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
    <title>Search Form</title>
</head>
<body>
<h1>Search Information by Name</h1>
<form action="/search" method="post">
    <input type="date" name="date" placeholder="YY.MM.DD = eg.2023-08-22 "/>
    <input type="time" name="time" placeholder="00:00 = eg.9:00"/>
    <button type="submit">submit</button>
    </div>

</form>
<h2>Search Results</h2>
<table>
    <thead>
    <tr>
        <th>Tablename</th>
        <th>Date</th>
        <th>Time</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${finding}" var="data">
        <tr>
            <td>${data.tablename}</td>
            <td>${data.date}</td>
            <td>${data.time}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

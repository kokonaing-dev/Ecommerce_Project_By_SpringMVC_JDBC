<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="gp3.models.TableBook" %>
<%@ page import="java.util.List" %>
<%@ page import="gp3.daos.AddingtablebookDao" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/26/2023
  Time: 7:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        td a {
            text-decoration: none;
            color: #ff0000;
        }

        td a:hover {
            color: #cc0000;
        }
    </style>
    <title>Booked Tables</title>
</head>
<body>
<%
    AddingtablebookDao dao = new AddingtablebookDao();
    List<TableBook> tablebooks = dao.getAllTablebook();
    request.setAttribute("tableb",tablebooks);
%>
<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Table Name</th>
        <th>Date</th>
        <th>Time</th>
        <th>Name</th>
        <th>Phone</th>
        <th>Number of Guests</th>
        <th>Special Requests</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tableb}" var="tb">
        <tr>
            <td>${tb.getId()}</td>
            <td>${tb.getTablename()}</td>
            <td>${tb.getDate()}</td>
            <td>${tb.getTime()}</td>
            <td>${tb.getBname()}</td>
            <td>${tb.getPhone()}</td>
            <td>${tb.getNog()}</td>
            <td>${tb.getSr()}</td>
            <td><a href="/deletebookedtables?id=${tb.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
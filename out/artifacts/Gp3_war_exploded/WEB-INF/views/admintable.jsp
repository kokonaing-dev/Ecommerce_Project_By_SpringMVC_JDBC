<%@ page import="gp3.daos.AddingtableDao" %>
<%@ page import="gp3.models.Table" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Admin Tables</title>
</head>
<body>
<%
    AddingtableDao dao = new AddingtableDao();
    List<Table> tables = dao.getAllTable();
    request.setAttribute("tableb",tables);
%>
<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Table Name</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${tableb}" var="tb">
        <tr>
            <td>${tb.getId()}</td>
            <td>${tb.getTablename()}</td>
            <td><a href="/deletetables?id=${tb.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

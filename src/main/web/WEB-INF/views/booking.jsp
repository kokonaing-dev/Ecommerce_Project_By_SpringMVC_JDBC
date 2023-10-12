<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="gp3.daos.CustomerDao" %>
<%@ page import="gp3.models.Customer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 9/11/2023
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Booking</title>
    <style>
        .container1 {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
        }

        select, input[type="date"] {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #table-status {
            margin-top: 20px;
        }

        #table-status {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #table-status p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
<c:import url="layout/navbar.jsp"/>
<%--<%--%>
<%--    CustomerDao dao = new CustomerDao();--%>
<%--    List<Customer> customers = dao.getAllCustomers();--%>
<%--    request.setAttribute("cus",customers);--%>
<%--%>--%>
<div class="container">
    <h2>Make a Reservation</h2>
<form action="/booking" method="post">
<%--    <div class="table-selection">--%>
<%--        <!-- Create checkboxes for table selection -->--%>
<%--        <label class="table">Table 1 <input type="checkbox" name="tables[]" value="Table 1"></label>--%>
<%--        <label class="table">Table 2 <input type="checkbox" name="tables[]" value="Table 2"></label>--%>
<%--        <!-- Add more checkboxes as needed -->--%>
<%--    </div>--%>
    <label for="date">Date</label>
    <input type="date" id="date" name="date">
    <label for="time">Time</label>
    <select class="time" id="time" name="time">
        <option value="09:00">09:00 A.M</option>
        <option value="12:00">12:00 A.M</option>
        <option value="03:00">03:00 P.M</option>
        <option value="06:00">06:00 P.M</option>
    </select>
<% session.getAttribute("customerid"); %>
<%--    <p>Customer ID: ${customer.getCustomerid()}</p>--%>
<%--    <p>Customer ID: ${customerid}</p>--%>
    <label for="customerid"></label>
    <input type="hidden" id="customerid" name="customerid" value="${customer.getCustomerid()}">
<%--    <label for="bookingid"></label>--%>
<%--    <input type="hidden" id="bookingid" name="bookingid" value="3">--%>
    <button type="submit">Create</button>
</form>
<c:import url="layout/footer.jsp" />
</body>
</html>

        <%@ page import="java.util.Date" %>
                <%@ page import="java.text.SimpleDateFormat" %>
                <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <c:import url="../layout/header.jsp"/>
                <body class="sub_page">
                <c:import url="../layout/navbar.jsp"/>
                        <%
                                Date currentDate = new Date();
                                SimpleDateFormat dateFormat = new SimpleDateFormat("yy-MM-dd");
                                String date = dateFormat.format(currentDate);
                        %>
                <style>/* Apply styles to the container */
                .container {
                font-family: "Open Sans", sans-serif;
                margin: 0 auto;
                max-width: 600px;
                padding: 20px;
                border: 1px solid #ccc;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                }

                /* Style the header */
                h1 {
                color: red;
                text-align: center;
                }

                /* Style the user ID, shop name, and address */
                p {
                font-size: 16px;
                margin: 5px 0;
                }

                /* Style the table */
                table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
                }

                /* Style the table header */
                table th {
                background-color: #f2f2f2;
                text-align: left;
                padding: 10px;
                border: 1px solid #ddd;
                }

                /* Style the table cells */
                table td {
                padding: 10px;
                border: 1px solid #ddd;
                }

                /* Style the total amount row */
                .total-amount {
                font-weight: bold;
                }
                </style>

                <div class="container">
                <h1>Receipt</h1>
                <p id="receiptDate">Date: <%= date %></p>
                <p id="shopName">Shop Name: NgoYinSarr</p>
                <p id="shopAddress">Shop Address: Than Lan  , Hlang</p>
                <p>User Name: ${userName}</p>
                <table class="table">
                <thead>
                <tr>
                <th>Device</th>
                <th>Count</th>
                <th>Price</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orders}" var="order">
                        <tr>
                        <td>${order.product_name}</td>
                        <td>${order.count}</td>
                        <td>${order.price}</td>
                        </tr>
                </c:forEach>
                <tr>
                <td colspan="2">Total</td>
                <td>${totalAmount}</td>
                </tr>
                </tbody>
                </table>


                </div>
            <div>
                <button type="button" class="btn btn-primary" onclick="location.href = '/logout'">OK</button>
            </div>

                <c:import url="../layout/footer.jsp"/>
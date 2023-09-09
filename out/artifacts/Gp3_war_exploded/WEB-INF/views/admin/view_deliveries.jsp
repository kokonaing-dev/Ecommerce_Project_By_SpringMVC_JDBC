
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/header.jsp" />

<body class="sub_page">

<c:import url="../layout/navbar.jsp" />

<div class="container">
    <p>view By admin (read only)</p>

    <table class="table my-5">
        <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>CustomerName</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Total Price</th>
            <th>Order ID</th>
            <th>Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${dev}" var="dev" varStatus="loop">
            <tr>
                <td>${loop.index+1}</td>
                <td>${dev.address}</td>
                <td>${dev.phone}</td>
                <td>${dev.totalamount}</td>
                <td>${dev.order_id}</td>
                <td>${dev.create_up}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<c:import url="../layout/header.jsp" />
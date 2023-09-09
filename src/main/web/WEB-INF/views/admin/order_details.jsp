
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/header.jsp" />
<body class="sub_page">
<c:import url="../layout/navbar.jsp" />

<div class="container">
    <h4 style="color: red">View Order</h4>

    <table class="table my-5">
        <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>Product</th>
            <th>Price</th>
            <th>Count</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Date</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${orders}" var="order" varStatus="loop">
            <tr>
                <td>${loop.index+1}</td>
                <td>${order.product_name}</td>
                <td>${order.price}</td>
                <td>${order.count}</td>
                <td>${order.address}</td>
                <td>${order.phone}</td>
                <td>${order.created_up}</td>
                <td>${order.count*order.price}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<c:import url="../layout/footer.jsp" />
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:import url="../layout/header.jsp"/>
        <body class="sub_page">
        <c:import url="../layout/navbar.jsp"/>
        <div class="container">
            <h1>Receipt</h1>

            <table class="table my-5">
            <thead class="thead-light">
            <tr>
            <th>#</th>
            <th>Name</th>
            <th>count</th>
            <th>Price</th>
            <th>Total</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach  items="${orders}" var="order" varStatus="loop">
                    <tr>
                    <td>${loop.index+1}</td>
                    <td>${order.product_name}</td>
                    <td>${order.count}</td>
                    <td>${order.price}</td>
                    <td>${order.count*order.price}</td>
                    </tr>
                    <c:set var="lastCustId" value="${order.cust_id}" />
            </c:forEach>
                 <tr>
                        <td colspan="5">
                                <a href="/delivery?id=${lastCustId}"> <button class="btn btn-success btn-sm">Delivery</button> </a>
                        </td>
                 </tr>
            </tbody>
            </table>
        </div>
        <c:import url="../layout/footer.jsp"/>
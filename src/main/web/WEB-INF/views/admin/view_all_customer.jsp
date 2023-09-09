    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <c:import url="../layout/header.jsp" />
        <body class="sub_page">
        <c:import url="../layout/navbar.jsp" />
        <div class="container">
        <h4 style="color: green  ">View All Customers By Admin</h4>
                <table class="table my-5">
                        <thead class="thead-light">
                        <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Order</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach  items="${customers}" var="customer" varStatus="loop">
                                <tr>
                                        <td>${loop.index+1}</td>
                                        <td>${customer.name}</td>
                                        <td>${customer.email}</td>
                                        <td><a href="/order/singleUser?id=${customer.id}">    <button type="button" class="btn btn-primary">view</button>
                                        </a> </td>
                                </tr>
                        </c:forEach>
                        </tbody>
                </table>
        </div>
        <c:import url="../layout/footer.jsp" />
        <script src="../assets/js/card3.js"></script>


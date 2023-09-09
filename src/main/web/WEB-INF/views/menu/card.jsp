<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/header.jsp" />
<body class="sub_page">
<c:import url="../layout/navbar.jsp" />
<div class="container">
    <h4 style="color: red">Your Shopping Card</h4>

    <table class="table">
    <thead class="thead-light">
    <tr>
        <th scope="col">No</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Action</th>
        <th scope="col">Total</th>
    </tr>
    </thead>
    <tbody id="tableBd">
    </tbody>
    <tbody>
    <tr>
        <td colspan="2" class="text-right"><a href="/menu">Continue Shopping</a> </td>
        <td></td>
        <td></td>
        <td colspan="5">
            <a href="/checkout?id=${user.id}">
                <button class="btn btn-success btn-sm">Order Now</button>
            </a>
        </td>
    </tr>
    </tbody>
    </table>
</div>
<c:import url="../layout/footer.jsp" />
<script src="../../assets/js/card2.js"></script>


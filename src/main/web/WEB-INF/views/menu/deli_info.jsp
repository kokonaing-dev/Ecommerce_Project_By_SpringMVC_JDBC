    <%@ page import="gp3.impls.OrderImpl" %>
        <%@ page import="java.util.List" %>
        <%@ page import="gp3.models.Orders" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:import url="../layout/header.jsp" />

<body class="sub_page">
<c:import url="../layout/navbar.jsp" />
<div class="container">
    <h4 style="color: green  " align="center">Thank You</h4>
    <div class="container">
    <form:form method="post" action="/updateAddPh" >
        <div>
        <h2 style="font-family: Open Sans">Enter your info to deliver</h2>
        </div>
        <div class="form-group">
        <label for="address">Address</label>
        <input type="text" class="form-control" id="address"  placeholder="N0.22 LanMaTaw Yangon" name="address" />
        </div>
        <div class="form-group">
        <label for="phone">Phone</label>
        <input type="text" class="form-control" id="phone" placeholder="0949500123" name="phone" />
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form:form>
    </div>

</div>
<c:import url="../layout/footer.jsp" />
<script src="../assets/js/card3.js"></script>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/2/2023
  Time: 7:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="layout/header.jsp" />
<style>
    /*add to cart button*/
    .add-to-cart-button {
        display: block;
        margin: 0 auto; /* This will center-align the button */
        color: orange;
        border-radius: 5px;
        background-color: transparent;
        border: 1px solid orange;
        padding: 5px 10px;
        cursor: pointer;
    }
</style>
<body class="sub_page">
<c:import url="layout/navbar.jsp" />

<section class="food_section layout_padding">
    <div class="container">


        <c:if test="${!empty msgSuccess}">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong class="text-white">${msgSuccess}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </c:if>
        <div class="heading_container heading_center">
            <h2>
                Our Menu
            </h2>
        </div>

        <ul class="filters_menu">
            <c:forEach items="${categories}" var="category">
                <li><a href="/menu/${category.id}" style="color:black">${category.name}</a></li>
            </c:forEach>
        </ul>

        <div class="filters-content">
            <div class="row grid">
                <c:forEach items="${menu}" var="menu">
                    <div class="col-sm-6 col-lg-4">
                        <div class="box">
                            <div class="product-container">
                                <div class="img-box">
                                    <img src="../assets/imgs/${menu.image}" alt="${menu.item}">
                                </div>
                                <div class="detail-box">
                                    <h5>${menu.item}</h5>
                                    <p>${menu.content}</p>
                                    <div class="options">
                                        <h6>Price : $${menu.price} kyats</h6>
                                    </div>
                                    <div class="add-to-cart">

                                        <c:if test="${!empty customer}">
                                            <button class="add-to-cart-button" onclick="addItemToDBWithAlert(${menu.id})">
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to Cart
                                            </button>
                                        </c:if>

                                        <c:if test="${empty customer}">
                                            <button class="add-to-cart-button"  data-toggle="modal" data-target="#customModal">
                                                <i class="fa fa-shopping-cart"></i>
                                                Add to Cart
                                            </button>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </c:forEach>

                <!-- Custom Confirmation Modal -->
                <div class="modal fade" id="customModal" tabindex="-1" role="dialog" aria-labelledby="customModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="customModalLabel">Let's get you in!</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                In just a minute , you can access all our offers, services and more.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <a href="/login"><button type="button" class="btn btn-primary">Login</button> </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="btn-box">
            <a href="/menu">
                View More
            </a>
        </div>
    </div>
</section>
<c:import url="layout/footer.jsp" />

<script>
    function addItemToDBWithAlert(id) {
        // Show an alert message
        const alertMessage = "Item added to cart.";
        alert(alertMessage);

        // Automatically close the alert after a specified duration (e.g., 3 seconds)
        setTimeout(function () {
            const alertBox = document.querySelector(".alert");
            if (alertBox) {
                alertBox.style.display = "none";
            }
        }, 3000); // 3 seconds (adjust the duration as needed)

        // Call your existing addItemToDB function
        addItemToDB(id);
    }
</script>

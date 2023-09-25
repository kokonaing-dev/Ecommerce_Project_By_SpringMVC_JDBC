<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 9/17/2023
  Time: 2:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../assets/css/invoice.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="my-5 page" size="A4">
    <div class="p-5">

        <section class="top-content bb d-flex justify-content-between">
            <div class="logo">
                <img src="../assets/imgs/logo.png" alt="" class="img-fluid">
            </div>
            <div class="top-left">
                <div class="graphic-path">
                    <p>Invoice</p>
                </div>
                <div class="position-relative">
                    <p>Invoice No. <span>${orders.id}</span></p>
                </div>
            </div>
        </section>

        <section class="store-user mt-5">
            <div class="col-10">
                <div class="row bb pb-3">
                    <div class="col-7">
                        <p>Supplier,</p>
                        <h2>Ngo Yin Sarr</h2>
                        <p class="address"> , <br> Insein Road, <br>MPT Construction 9th Floor </p>
                        <div class="txn mt-2">TXN: XXXXXXX</div>
                    </div>
                    <div class="col-5">
                        <p>Client,</p>
                        <h2>${user.name}</h2>
                        <p class="address"> ${orders.address} <br> Abington MA 2351, <br>Phone Number </p>
                        <div class="txn mt-2">Order Id</div>
                    </div>
                </div>
                <div class="row extra-info pt-3">
                    <div class="col-7">
                        <p>Payment Method: <span>Don,t Have Yet</span></p>
                        <p>Order Number: <span>#${orders.id}</span></p>
                    </div>
                    <div class="col-5">
                        <p>Deliver Date: <span>${orders.date}</span></p>
                    </div>
                </div>
            </div>
        </section>

        <section class="product-area mt-4">
            <table class="table table-hover">
                <thead>
                <tr>
                    <td>Item Description</td>
                    <td>Price</td>
                    <td>Quantity</td>
                    <td>Total</td>
                </tr>
                </thead>
                <tbody>

                <tr>
                    <td>
                        <div class="media">
                            <img class="mr-3 img-fluid" src="mobile.jpg" alt="Product 01">
                            <div class="media-body">
                                <p class="mt-0 title">Media heading</p>
                                Cras sit amet nibh libero, in gravida nulla.
                            </div>
                        </div>
                    </td>
                    <td>200$</td>
                    <td>1</td>
                    <td>200$</td>
                </tr>

                </tbody>
            </table>
        </section>

        <section class="balance-info">
            <div class="row">
                <div class="col-8">
                    <p class="m-0 font-weight-bold"> Note: </p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In delectus, adipisci vero est dolore praesentium.</p>
                </div>
                <div class="col-4">
                    <table class="table border-0 table-hover">
                        <tr>
                            <td>Sub Total:</td>
                            <td>800$</td>
                        </tr>
                        <tr>
                            <td>Tax:</td>
                            <td>15$</td>
                        </tr>
                        <tr>
                            <td>Deliver:</td>
                            <td>10$</td>
                        </tr>
                        <tfoot>
                        <tr>
                            <td>Total:</td>
                            <td>825$</td>
                        </tr>
                        </tfoot>
                    </table>

                    <!-- Signature -->
                    <div class="col-12">
                        <img src="signature.png" class="img-fluid" alt="">
                        <p class="text-center m-0"> Director Signature </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Cart BG -->
        <img src="../assets/imgs/cart.jpg" class="img-fluid cart-bg" alt="">

        <footer>
            <hr>
            <p class="m-0 text-center">
                View THis Invoice Online At - <a href="#!"> invoice/saburbd.com/#868 </a>
            </p>
            <div class="social pt-3">
                    <span class="pr-2">
                        <i class="fas fa-mobile-alt"></i>
                        <span>0123456789</span>
                    </span>
                <span class="pr-2">
                        <i class="fas fa-envelope"></i>
                        <span>me@saburali.com</span>
                    </span>
                <span class="pr-2">
                        <i class="fab fa-facebook-f"></i>
                        <span>/sabur.7264</span>
                    </span>
                <span class="pr-2">
                        <i class="fab fa-youtube"></i>
                        <span>/abdussabur</span>
                    </span>
                <span class="pr-2">
                        <i class="fab fa-github"></i>
                        <span>/example</span>
                    </span>
            </div>
        </footer>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

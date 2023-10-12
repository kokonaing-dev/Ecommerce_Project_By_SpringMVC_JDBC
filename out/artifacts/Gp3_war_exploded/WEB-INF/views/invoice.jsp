<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="org.hibernate.query.criteria.internal.expression.function.CurrentDateFunction" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 9/27/2023
  Time: 12:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../assets/css/invoice.css">
    <style>
        .btn{
            display: block;
            margin: auto;
        }
    </style>
</head>
<body>
<%
    Date date = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy-MM-dd");
    String currentDate = simpleDateFormat.format(date);
%>
<section>
    <div class="invoice">
        <div class="header">
            <div class="i_row">
                <div class="i_logo">
                    <p>Ngo Yin Sarr</p>
                </div>
                <div class="i_title">
                    <h2>INVOICE</h2>
                    <p class="p_title text_right">
                        <%= currentDate%>
                    </p>
                </div>
            </div>
            <div class="i_row">
                <div class="i_number">
                    <p class="p_title">INVOICE NO: ${order.id}</p>
                </div>
                <div class="i_address text_right">
                    <p>TO</p>
                    <p class="p_title">
                        Fac${customer.name}<br />
                        <span>${order.address}</span><br />
                        <span>${order.phone}</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="body">
            <div class="i_table">
                <div class="i_table_head">
                    <div class="i_row">
                        <div class="i_col w_15">
                            <p class="p_title">NO.</p>
                        </div>
                        <div class="i_col w_15">
                            <p class="p_title">Item</p>
                        </div>
                        <div class="i_col w_15">
                            <p class="p_title">QTY</p>
                        </div>
                        <div class="i_col w_55">
                            <p class="p_title">DESCRIPTION</p>
                        </div>
                        <div class="i_col w_15">
                            <p class="p_title">PRICE</p>
                        </div>
                        <div class="i_col w_15">
                            <p class="p_title">TOTAL</p>
                        </div>
                    </div>
                </div>
                <div class="i_table_body">

                    <c:forEach var="orderDetail" items="${orderDetail}" varStatus="loop">
                    <div class="i_row">
                        <div class="i_col w_15">
                            <p>${loop.index+1}</p>
                        </div>
                        <div class="i_col w_15">
                            <p><img src="../assets/imgs/${orderDetail.image}" height="40" width="40"></p>
                        </div>
                        <div class="i_col w_15">
                            <p>${orderDetail.quantity}</p>
                        </div>
                        <div class="i_col w_55">
                            <p>${orderDetail.item}</p>
                            <span>${orderDetail.content}</span>
                        </div>
                        <div class="i_col w_15">
                            <p>$ ${orderDetail.price}</p>
                        </div>
                        <div class="i_col w_15">
                            <p>${orderDetail.quantity * orderDetail.price}</p>
                        </div>
                    </div>

                    </c:forEach>
                </div>
                <div class="i_table_foot">
                    <div class="i_row">
                        <div class="i_col w_15">
                            <p></p>
                        </div>
                        <div class="i_col w_55">
                            <p></p>
                        </div>
                        <div class="i_col w_15">
                            <p>Sub Total</p>
                            <p>Tax 10%</p>
                        </div>
                        <div class="i_col w_15">
                            <p>$ ${order.total}</p>
                            <p>$ ${order.total*0.10}</p>
                        </div>
                    </div>
                    <div class="i_row grand_total_wrap">
                        <div class="i_col w_50">
                        </div>
                        <div class="i_col w_50 grand_total">
                            <p><span>GRAND TOTAL:</span>
                                <span>$ ${order.total + (order.total*0.10) }</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="i_row">
                <div class="i_col w_50">
<%--                    payment?--%>
                    <p class="p_title">Payment Method</p>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, dicta distinctio! Laudantium voluptatibus est nemo.</p>
                </div>
                <div class="i_col w_50 text_right">
                    <p class="p_title">Terms and Conditions</p>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque, dicta distinctio! Laudantium voluptatibus est nemo.</p>
                </div>
            </div>

        </div>
    </div>
    <div class="btn">
        <button onclick="location.href='/'">Home</button>
    </div>
</section>
</body>
</html>

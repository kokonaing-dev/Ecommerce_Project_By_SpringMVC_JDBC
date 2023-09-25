<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 9/15/2023
  Time: 6:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container{
            width: 400px;
            border-radius: 8px;
            padding: 40px;
            box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1),
            0 5px 12px -2px rgba(0, 0, 0, 0.1),
            0 18px 36px -6px rgba(0, 0, 0, 0.1);
        }

        .container .title{
            font-size: 20px;
            font-family: Arial, Helvetica, sans-serif;
        }

        .container form input{
            display: none;
        }

        .container form .category{
            margin-top: 10px;
            padding-top: 20px;

            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 15px;
        }

        .category label{
            /* width: 100%; */
            /* height: 65px; */
            height: 145px;
            padding: 20px;
            box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.2);
            display: flex;
            /* justify-content: space-between; */
            justify-content: center;
            align-items: center;
            cursor: pointer;
            border-radius: 5px;
            position: relative;
        }

        /* label:nth-child(2), label:nth-child(3){
            margin: 15px 0;
        } */


        #visa:checked ~ .category .visaMethod,
        #mastercard:checked ~ .category .mastercardMethod,
        #paypal:checked ~ .category .paypalMethod,
        #AMEX:checked ~ .category .amexMethod{
            box-shadow: 0px 0px 0px 1px #6064b6;
        }


        #visa:checked ~ .category .visaMethod .check,
        #mastercard:checked ~ .category .mastercardMethod .check,
        #paypal:checked ~ .category .paypalMethod .check,
        #AMEX:checked ~ .category .amexMethod .check{
            display: block;
        }


        label .imgName{
            display: flex;
            /* justify-content: space-between;
             */
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            flex-direction: column;
            gap: 10px;
        }

        .imgName span{
            /* margin-left: 20px; */
            font-family: Arial, Helvetica, sans-serif;

            position: absolute;
            top: 72%;
            transform: translateY(-72%);
        }

        .imgName .imgContainer{
            width: 50px;
            display: flex;
            justify-content: center;
            align-items: center;

            position: absolute;
            top: 35%;
            transform: translateY(-35%);
        }

        img{
            width: 50px;
            height: auto;
        }

        .visa img{
            width: 80px;
            /* margin-left: 5px; */
        }

        .mastercard img{
            width: 65px;
        }

        .check{
            display: none;
            position: absolute;
            top: -4px;
            right: -4px;
        }

        .check i{
            font-size: 18px;
        }


    </style>
</head>
<body>
<!--Font Awesome CDN-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<div class="container">
    <div class="title">
        <h4>Select a <span style="color: #6064b6">Payment</span> method</h4>
    </div>

    <form action="/payment">
        <input type="radio" name="payment" id="Kpay">
        <input type="radio" name="payment" id="Wave">

        <div class="category">

            <label for="Kpay" class="visaMethod">
                <div class="imgName">
                    <div class="imgContainer visa">
                        <img src="https://i.ibb.co/vjQCN4y/Visa-Card.png" alt="">
                    </div>
                    <span class="name">VISA</span>
                </div>
                <span class="check"><i class="fa-solid fa-circle-check" style="color: #6064b6;"></i></span>
            </label>

            <label for="Wave" class="mastercardMethod">
                <div class="imgName">
                    <div class="imgContainer mastercard">
                        <img src="https://i.ibb.co/vdbBkgT/mastercard.jpg" alt="">
                    </div>
                    <span class="name">Mastercard</span>
                </div>
                <span class="check"><i class="fa-solid fa-circle-check" style="color: #6064b6;"></i></span>
            </label>

        </div>
    </form>
</div>
</body>
</html>

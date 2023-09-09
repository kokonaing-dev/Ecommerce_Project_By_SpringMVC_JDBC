<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 8/25/2023
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url('');
            background-size: 100% 100%; /* Fit the image to the screen */
            background-repeat: no-repeat;
            background-color: #f5f5f5;
        }

        .box {
            position: relative;
            display: flex;
            align-items: center;
            padding: 15px;
            margin: 10px;
            border-radius: 10px;
        }

        .link {
            color: white;
            text-decoration: none;
            margin-left: 10px;
            font-size: 18px;
        }

        .fa-hand-point-right {
            font-size: 24px;
            margin-right: 10px;
        }

        .yes-box {
            background-color: lightgreen;
        }
        .no-box {
            background-color: lightcoral;
        }
        .maybe-box {
            background-color: rgb(17, 137, 216);
        }
        .notmaybe-box {
            background-color: rgb(69, 26, 112);
        }

    </style>
    <title>Admin View</title>
</head>
<body>
<div class="box yes-box">
    <i class="fas fa-hand-point-right"></i>
    <a href="/tableadd" class="link">Table Add</a>
</div>

<%--<div class="box no-box">--%>
<%--    <i class="fas fa-hand-point-right"></i>--%>
<%--    <a href="/cancelleradd" class="link">Canceller Add</a>--%>
<%--</div>--%>

<div class="box maybe-box">
    <i class="fas fa-hand-point-right"></i>
    <a href="/bookedtables" class="link">See Booked Tables</a>
</div>

<div class="box notmaybe-box">
    <i class="fas fa-hand-point-right"></i>
    <a href="/admintables" class="link">See Added Table </a>
</div>
</body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/2/2023
  Time: 7:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="layout/header.jsp"/>

<style>
    .video-container {
        position: relative;
        width: 70%; /* Adjust the width as needed */
        max-width: 800px; /* Adjust the max-width as needed */
        margin: 50px auto;
    }

    .video-content {
        width: 100%;
        height: auto;
        display: block;
    }

     .container1 {
         max-width: 800px;
         margin: 20px auto;
         background-color: #fff;
         padding: 20px;
         border-radius: 5px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
     }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    label {
        font-weight: bold;
        margin-bottom: 10px;
    }

    select, input[type="date"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    button[type="submit"] {
        background-color: #333;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    #table-status {
        margin-top: 20px;
    }

    #table-status {
        margin-top: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    #table-status p {
        margin: 5px 0;
    }

</style>
<body class="sub_page">
<c:import url="layout/navbar.jsp"/>

<div class="container">
    <a href="/index">Index</a>
<%--    <h1 style="text-align: center">Welcome!!!</h1>--%>
</div>

<div class="video-container">
    <video class="video-content" autoplay loop muted>
        <source src="../assets/imgs/video.mp4" type="video/mp4">
    </video>
</div>
<div class="col-md-6">
    <div class="map_container ">
        <div id="googleMap"></div>
    </div>
</div>

<c:import url="layout/footer.jsp" />

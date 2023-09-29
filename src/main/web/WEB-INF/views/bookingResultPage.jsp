<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Thank You for Booking</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            background-color: #f5f5f5;--%>
<%--        }--%>

<%--        .thank-you-container {--%>
<%--            max-width: 800px;--%>
<%--            margin: 40px auto;--%>
<%--            padding: 20px;--%>
<%--            background-color: #ffffff;--%>
<%--            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        h1 {--%>
<%--            color: #333333;--%>
<%--        }--%>

<%--        h2 {--%>
<%--            color: #555555;--%>
<%--        }--%>

<%--        ul {--%>
<%--            list-style: none;--%>
<%--            padding: 0;--%>
<%--        }--%>

<%--        li {--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>

<%--        p {--%>
<%--            color: #777777;--%>
<%--            line-height: 1.5;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="thank-you-container">--%>
<%--    <h1>Thank You for Booking with Us!</h1>--%>
<%--    <p>Dear <span id="guest-name"></span>,</p>--%>
<%--    <p>We are thrilled to receive your reservation at our restautant.Your trust in us to make your dining experience exceptional is truly appreciated. Our team is dedicated to creating unforgettable moments, and we can't wait to welcome you.</p>--%>
<%--    <h2>Reservation Details:</h2>--%>
<%--&lt;%&ndash;    <p>Date: <span id="reservation-date"></span></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p>Time: <span id="reservation-time"></span></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p>Number of Guests: <span id="num-guests"></span></p>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <p>Special Requests: <span id="special-requests"></span></p>&ndash;%&gt;--%>
<%--    <ul>--%>
<%--        <li>Date: <span id="reservation-date"></span></li>--%>
<%--        <li>Time: <span id="reservation-time"></span></li>--%>
<%--        <li>Number of Guests: <span id="num-guests"></span></li>--%>
<%--        <li>Special Requests: <span id="special-requests"></span></li>--%>
<%--    </ul>--%>
<%--    <p>At this restaurant, we take pride in crafting a culinary journey that tantalizes your taste buds and leaves you with cherished memories. Whether you're celebrating a special occasion or simply looking to savor delectable dishes in a warm ambiance, we're here to exceed your expectations.</p>--%>
<%--    <p>Please feel free to contact us if you have any further questions or if there are any changes to your reservation. Our dedicated staff is available to assist you.</p>--%>
<%--    <p>Once again, thank you for choosing our restaurant. We look forward to serving you and making your visit remarkable.</p>--%>
<%--    <p>Warm regards,</p>--%>
<%--    <p><span><b>Kyaw Gyi</b></span><br><span>09963073590</span></p>--%>
<%--&lt;%&ndash;    <p><span id="your-name"></span><br><span id="your-title"></span><br><br><span id="contact-info"></span></p>&ndash;%&gt;--%>
<%--</div>--%>
<%--<script>--%>
<%--    document.addEventListener("DOMContentLoaded", function () {--%>
<%--        console.log("Script loaded and DOM is ready.");--%>

<%--        var guestName = "${sessionScope.bname}";--%>
<%--        var reservationDate = "${sessionScope.date}";--%>
<%--        var reservationTime = "${sessionScope.time}";--%>
<%--        var numGuests = "${sessionScope.nog}";--%>
<%--        var specialRe = "${sessionScope.sr}";--%>

<%--        console.log("Guest Name:", guestName);--%>
<%--        console.log("Reservation Date:", reservationDate);--%>
<%--        console.log("Reservation Time:", reservationTime);--%>
<%--        console.log("Number of Guests:", numGuests);--%>
<%--        console.log("Special requests:", specialRe);--%>

<%--        document.getElementById("guest-name").textContent = guestName;--%>
<%--        document.getElementById("reservation-date").textContent = reservationDate;--%>
<%--        document.getElementById("reservation-time").textContent = reservationTime;--%>
<%--        document.getElementById("num-guests").textContent = numGuests;--%>
<%--        document.getElementById("special-requests").textContent = specialRe;--%>
<%--    });--%>
<%--</script>--%>

<%--&lt;%&ndash;<script>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    &lt;%&ndash;%>&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        // Retrieving values using JSP scriptlets&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String tablename = (String) session.getAttribute("tablename");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String date = (String) session.getAttribute("date");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String time = (String) session.getAttribute("time");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String bname = (String) session.getAttribute("bname");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String phone = (String) session.getAttribute("phone");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String nog = (String) session.getAttribute("nog");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;        String sr = (String) session.getAttribute("sr");&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;&lt;%&ndash;    %>&ndash;%&gt;&ndash;%&gt;--%>
<%--&lt;%&ndash;    document.addEventListener("DOMContentLoaded", function () {&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("guest-name").textContent = "${sessionScope.bname}";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("restaurant-name").textContent = "Gourmet Delights";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("reservation-date").textContent = "${sessionScope.date}";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("reservation-time").textContent = "${sessionScope.time}";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("num-guests").textContent = "${sessionScope.nog}";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("special-requests").textContent = "Vegetarian options";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("your-name").textContent = "Jane Smith";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("your-title").textContent = "Restaurant Manager";&ndash;%&gt;--%>
<%--&lt;%&ndash;        document.getElementById("contact-info").textContent = "Email: jane@example.com | Phone: (123) 456-7890";&ndash;%&gt;--%>
<%--&lt;%&ndash;    });&ndash;%&gt;--%>
<%--&lt;%&ndash;</script>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>

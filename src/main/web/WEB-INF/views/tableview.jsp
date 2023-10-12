<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page import="gp3.daos.AddingtableDao" %>--%>
<%--<%@ page import="java.util.List" %>--%>
<%--<%@ page import="gp3.models.Table" %>--%>
<%--<%@ page import="java.util.ArrayList" %>--%>
<%--<c:import url="layout/header.jsp" />--%>
<%--<div class="hero_area">--%>
<%--    <div class="bg-box">--%>
<%--        <img src="../assets/imgs/hero-bg.jpg" alt="">--%>
<%--    </div>--%>
<%--    <!-- header section strats -->--%>
<%--    <header class="header_section">--%>
<%--        <div class="container">--%>
<%--            <nav class="navbar navbar-expand-lg custom_nav-container ">--%>
<%--                <a class="navbar-brand" href="/">--%>
<%--        <span>--%>
<%--        NgoYinSarr--%>
<%--        </span>--%>
<%--                </a>--%>

<%--                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--                    <span class=""> </span>--%>
<%--                </button>--%>

<%--                <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--                    <ul class="navbar-nav  mx-auto ">--%>
<%--                        <li class="nav-item ">--%>
<%--                            <a class="nav-link" href="/">Home </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link" href="/menu">Menu</a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item active">--%>
<%--                            <a class="nav-link" href="/about">About</a>--%>
<%--                            <span class="sr-only">(current)</span>--%>
<%--                        </li>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="nav-link" href="/tablebook">Book Table</a>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                    <div class="user_option">--%>

<%--                        <a href="/search" class="order_online">--%>
<%--                            Search Booked Tables--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </header>--%>
<%--    <!-- end header section -->--%>
<%--</div>--%>

<%--</div>--%>
<%--<body class="sub_page">--%>

<%--<style>--%>
<%--    /*body {*/--%>
<%--    /*    margin: 0;*/--%>
<%--    /*    padding: 0;*/--%>
<%--    /*    font-family: Arial, sans-serif;*/--%>
<%--    /*    background-color: #f0f0f0;*/--%>
<%--    /*}*/--%>

<%--    @media (min-width: 768px) {--%>
<%--        .reservation-container {--%>
<%--            max-width: 50%;--%>
<%--        }--%>
<%--        .image-container {--%>
<%--            max-width: 50%;--%>
<%--        }}--%>

<%--    .content-container {--%>
<%--        display: flex;--%>
<%--        max-width: 1000px;--%>
<%--        margin: 20px auto;--%>
<%--        background-color: white;--%>
<%--        border-radius: 8px;--%>
<%--        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);--%>
<%--        overflow: hidden;--%>
<%--        max-height: 900px;--%>
<%--    }--%>

<%--    .image-container {--%>
<%--        flex: 1;--%>
<%--        background: url('../assets/imgs/bb.jpg') center/cover no-repeat;--%>
<%--        border-top-left-radius: 8px;--%>
<%--        border-bottom-left-radius: 8px;--%>
<%--        max-height:900px ;--%>
<%--    }--%>

<%--    .reservation-container {--%>
<%--        flex: 1;--%>
<%--        padding: 20px;--%>
<%--        max-height: 900px;--%>
<%--    }--%>

<%--    .reservation-form label {--%>
<%--        font-weight: bold;--%>
<%--        margin-bottom: 10px;--%>
<%--        display: block;--%>
<%--    }--%>

<%--    .reservation-form input,--%>
<%--    .reservation-form select,--%>
<%--    .reservation-form textarea {--%>
<%--        width: 100%;--%>
<%--        padding: 10px;--%>
<%--        margin-bottom: 15px;--%>
<%--        border: 1px solid #ccc;--%>
<%--        border-radius: 5px;--%>
<%--    }--%>

<%--    .reservation-form select {--%>
<%--        height: auto;--%>
<%--    }--%>

<%--    .reservation-form textarea {--%>
<%--        resize: vertical;--%>
<%--    }--%>

<%--    .reservation-form input[type="submit"] {--%>
<%--        background-color: #0b1218;--%>
<%--        color: #fff;--%>
<%--        padding: 10px 20px;--%>
<%--        border: none;--%>
<%--        border-radius: 5px;--%>
<%--        cursor: pointer;--%>
<%--    }--%>

<%--    h2 {--%>
<%--        color: chocolate;--%>
<%--        font-size: 40px;--%>
<%--        margin-bottom: 20px;--%>
<%--    }--%>

<%--</style>--%>
<%--<div class="content-container">--%>
<%--    <div class="reservation-container">--%>
<%--        <h2>Reservation Form</h2>--%>
<%--        <%--%>
<%--            AddingtableDao dao = new AddingtableDao();--%>
<%--            List<Table> tables = dao.getAllTable();--%>
<%--            request.setAttribute("tbl" ,tables);--%>
<%--        %>--%>

<%--        <div class="content-container">--%>
<%--            <div class="reservation-container">--%>
<%--                <form action="/tablebook" method="post" class="reservationForm">--%>
<%--                    <label for="tablename">Table:</label>--%>

<%--                    <select class="tablename" id="tablename" name="tablename">--%>
<%--                        <c:forEach items="${tbl}" var="tbl">--%>
<%--                            <option value="${tbl.getTablename()}">${tbl.getTablename()}</option>--%>
<%--                        </c:forEach>--%>
<%--                    </select>--%>
<%--                    <br>--%>
<%--                    <label for="date">Date</label>--%>
<%--                    <input type="date" id="date" class="date" name="date" required>--%>

<%--                    <br>--%>
<%--                    <label for="time">Time:</label>--%>
<%--                    <select class="time" id="time" name="time" required>--%>
<%--                        <option value="9:00">9:00 AM</option>--%>
<%--                        <option value="9:30">9:30 AM</option>--%>
<%--                        <option value="10:00">10:00 AM</option>--%>
<%--                        <option value="10:30">10:30 AM</option>--%>
<%--                        <option value="11:00">11:00 AM</option>--%>
<%--                        <option value="11:30">11:30 AM</option>--%>
<%--                        <option value="12:00">12:00 PM</option>--%>
<%--                    </select>--%>
<%--                    <br>--%>
<%--                    <label for="bname">Name</label>--%>
<%--                    <input type="text" id="bname" class="bname" name="bname" required>--%>
<%--                    <br>--%>
<%--                    <label for="phone">Phone</label>--%>
<%--                    <input type="tel" id="phone" class="phone" name="phone" required>--%>
<%--                    <br>--%>
<%--                    <label for="nog">Number of Guests:</label>--%>
<%--                    <select class="time" id="nog" name="nog" required>--%>
<%--                        <option value="1">1</option>--%>
<%--                        <option value="2">2</option>--%>
<%--                        <option value="3">3</option>--%>
<%--                        <option value="4">4</option>--%>
<%--                        <option value="5">5</option>--%>
<%--                        <option value="6">6</option>--%>
<%--                        <option value="6+">6+</option>--%>
<%--                    </select>--%>
<%--                    <br>--%>
<%--                    <label for="sr">Special Requests:</label>--%>
<%--                    <textarea id="sr" name="sr" rows="4" cols="8" required></textarea>--%>
<%--                    <br>--%>
<%--                    <input type="submit" value="Table Booking">--%>

<%--                </form>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--            <%--%>

<%--                ArrayList<String> dateValues = (ArrayList<String>) session.getAttribute("date");--%>
<%--                ArrayList<String> timeValues = (ArrayList<String>) session.getAttribute("time");--%>
<%--                ArrayList<String> tableValues = (ArrayList<String>) session.getAttribute("tablename");--%>

<%--            %>--%>
<%--            <script>--%>


<%--                var reservedSlots = [];--%>


<%--                <% for (int i = 0; i < dateValues.size(); i++) { %>--%>
<%--                reservedSlots.push({ date: '<%= dateValues.get(i) %>', time: '<%= timeValues.get(i) %>', tablename: '<%= tableValues.get(i) %>' });--%>
<%--                <% } %>--%>

<%--                var forms = document.querySelectorAll('.reservationForm');--%>

<%--                forms.forEach(function(form) {--%>
<%--                    form.addEventListener('submit', function(event) {--%>
<%--                        var selectedDate = form.querySelector('.date').value;--%>
<%--                        var selectedTime = form.querySelector('.time').value;--%>
<%--                        var selectedTable = form.querySelector('.tablename').value;--%>

<%--                        var isSlotTaken = reservedSlots.some(function(slot) {--%>
<%--                            return slot.date === selectedDate && slot.time === selectedTime && slot.tablename === selectedTable;--%>
<%--                        });--%>

<%--                        if (isSlotTaken) {--%>
<%--                            alert("Dude, this slot is already booked.");--%>
<%--                            event.preventDefault(); // Prevent form submission--%>
<%--                        } else {--%>
<%--                            reservedSlots.push({ date: selectedDate, time: selectedTime, tablename: selectedTime });--%>
<%--                        }--%>
<%--                    });--%>
<%--                });--%>
<%--            </script>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="image-container"></div>--%>
<%--</div>--%>

<%--<body class="sub_page">--%>
<%--<c:import url="layout/footer.jsp" />--%>

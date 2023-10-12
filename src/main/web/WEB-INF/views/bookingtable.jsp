<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Booking Table</title>
    <style>
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
</head>
<body>
<c:import url="layout/navbar.jsp"/>
<%--        value="2023-09-18"--%>
<%--        value="09:00"--%>
<div class="container">
    <h2>Make a Reservation</h2>
    <form action="/bookingtable" method="post" class="reservationForm">



        <div class="table-selection">
            <!-- Create checkboxes for table selection -->
            <label class="table">Table 1 <input type="checkbox" name="tables[]" value="Table 1"></label>
            <label class="table">Table 2 <input type="checkbox" name="tables[]" value="Table 2"></label>
        </div>
        <% session.getAttribute("generatedBookingId"); %>
<%--        <p>Booking ID: ${generatedBookingId}</p>--%>
        <label for="bookingid"></label>
        <input type="hidden" id="bookingid" name="bookingid" value="${generatedBookingId}">
        <%
            session.getAttribute("datedate");
            session.getAttribute("timetime");
        %>
        <label for="date"></label>
        <input type="hidden" id="date" class="date" name="date" value="${datedate}">

        <label for="time"></label>
        <input type="hidden" id="time" name="time" value="${timetime}">

        <button type="submit">Submit</button>
    </form>
</div>
<c:import url="layout/footer.jsp" />

<%
   session.getAttribute("datedate");
   session.getAttribute("timetime");
%>

<%--    <form class="reservationForm">--%>
<%--        <label for="date">Date:</label>--%>
<%--        <input type="date" id="date" class="date" name="date" required>--%>

<%--        <label for="time">Time</label>--%>
<%--        <input type="time" id="time" name="time">--%>
<%--        <!-- Add more checkboxes as needed -->--%>

<%--        <div class="table-selection">--%>
<%--            <!-- Create checkboxes for table selection -->--%>
<%--            <label class="table">Table 1 <input type="checkbox" name="tables[]" value="Table 1"></label>--%>
<%--            <label class="table">Table 2 <input type="checkbox" name="tables[]" value="Table 2"></label>--%>
<%--        </div>--%>

<%--        <button type="submit">Create</button>--%>
<%--    </form>--%>


<%
    ArrayList<String> dateValues = (ArrayList<String>) session.getAttribute("date");
    ArrayList<String> timeValues = (ArrayList<String>) session.getAttribute("time");
    ArrayList<String> tableValues = (ArrayList<String>) session.getAttribute("tablename");
    System.out.println(dateValues);
    System.out.println(timeValues);
    System.out.println(tableValues);
    // Here, we're assuming that dateValues and timeValues have corresponding indices
%>

<%--    // Assuming dateValues and timeValues have the same length--%>
<%--    <% for (int i = 0; i < dateValues.size(); i++) { %>--%>
<%--    reservedSlots.push({ date: '<%= dateValues.get(i) %>', time: '<%= timeValues.get(i) %>', tablename: '<%= tableValues.get(i) %>' });--%>
<%--    <% } %>--%>


    <script>
        var reservedSlots = [];

            // Assuming dateValues and timeValues have the same length
            <% for (int i = 0; i < dateValues.size(); i++) { %>
            reservedSlots.push({ date: '<%= dateValues.get(i) %>', time: '<%= timeValues.get(i) %>', tablename: '<%= tableValues.get(i) %>' });
            <% } %>

        console.log(reservedSlots);

        var form = document.querySelector('.reservationForm');

        form.addEventListener('submit', function (event) {
            // event.preventDefault(); // Prevent form submission to check availability

            var selectedDate = form.querySelector('.date').value;
            var selectedTime = form.querySelector('#time').value;

            var selectedTableElement = form.querySelector('input[name="tables[]"]:checked');
            var selectedTable = selectedTableElement ? selectedTableElement.value : '';

            var isSlotTaken = reservedSlots.some(function (slot) {
                return slot.date === selectedDate && slot.time === selectedTime && slot.tablename === selectedTable;
            });

            if (isSlotTaken) {
                alert("Dude, this slot is already booked.");
                event.preventDefault();
            // } else {
                // reservedSlots.push({ tablename: selectedTable });
                // reservedSlots.push({ date: selectedDate, time: selectedTime, tablename: selectedTable });
                // alert("Reservation successful!");
                // form.reset(); // Clear the form after successful reservation
            }
        });
    </script>

</body>
</html>

<%--<form id="reservation-form">--%>

<%--    <input type="date" id="date-input">--%>
<%--    <input type="time" id="time-input">--%>

<%--    <button type="submit">Check Availability</button>--%>
<%--</form>--%>

<%--<!-- Placeholder for displaying table status -->--%>
<%--<div id="table-status"></div>--%>

<%--    <script>--%>
<%--// Sample reservations array in the format [table, date, time]--%>
<%--var reservations = [["table1", "2023-09-18", "09:00"],--%>
<%--    ["table4", "2023-09-18", "09:00"]];--%>

<%--&lt;%&ndash;    <% for (int i = 0; i < dateValues.size(); i++) { %>&ndash;%&gt;--%>
<%--&lt;%&ndash;    reservations.push({ tablename: '<%= tableValues.get(i) %>' , date: '<%= dateValues.get(i) %>', time: '<%= timeValues.get(i) %>' });&ndash;%&gt;--%>
<%--&lt;%&ndash;    <% } %>&ndash;%&gt;--%>

<%--// List of all available tables--%>
<%--var allTables = ["table1", "table2", "table3", "table4", "table5"];--%>

<%--// Function to check table availability--%>
<%--function checkTableAvailability() {--%>
<%--    // Get the user-selected date and time from the form--%>
<%--    var selectedDate = document.getElementById("date-input").value;--%>
<%--    var selectedTime = document.getElementById("time-input").value;--%>

<%--    // Combine the selected date and time into a single string--%>
<%--    var selectedDateTime = selectedDate + " " + selectedTime;--%>

<%--    // Initialize an object to store table availability status--%>
<%--    var tableAvailability = {};--%>

<%--    // Initialize all tables as available--%>
<%--    allTables.forEach(function (table) {--%>
<%--        tableAvailability[table] = true;--%>
<%--    });--%>

<%--    // Check reservations and mark tables as unavailable--%>
<%--    reservations.forEach(function (reservation) {--%>
<%--        var table = reservation[0];--%>
<%--        var date = reservation[1];--%>
<%--        var time = reservation[2];--%>
<%--        var dateTime = date + " " + time;--%>

<%--        // Assuming a reservation makes the table unavailable for 2 hours--%>
<%--        var reservationEndTime = new Date(dateTime);--%>
<%--        reservationEndTime.setHours(reservationEndTime.getHours() + 2);--%>

<%--        // Check if the selected date and time overlap with the reservation period--%>
<%--        if (new Date(selectedDateTime) >= new Date(dateTime) && new Date(selectedDateTime) < reservationEndTime) {--%>
<%--            tableAvailability[table] = false;--%>
<%--        }--%>
<%--    });--%>

<%--    // Display table availability status--%>
<%--    var tableStatusElement = document.getElementById("table-status");--%>
<%--    tableStatusElement.innerHTML = "";--%>

<%--    for (var table in tableAvailability) {--%>
<%--        if (tableAvailability[table]) {--%>
<%--            var tableStatusMessage = document.createElement("p");--%>
<%--            tableStatusMessage.textContent = table + " is available.";--%>
<%--            tableStatusElement.appendChild(tableStatusMessage);--%>
<%--        } else {--%>
<%--            var tableStatusMessage = document.createElement("p");--%>
<%--            tableStatusMessage.textContent = table + " is not available.";--%>
<%--            tableStatusElement.appendChild(tableStatusMessage);--%>
<%--        }--%>
<%--    }--%>
<%--}--%>

<%--// Attach the form submission handler to the form element--%>
<%--var reservationForm = document.getElementById("reservation-form");--%>
<%--reservationForm.addEventListener("submit", function (event) {--%>
<%--    event.preventDefault();--%>
<%--    checkTableAvailability(); // Call the availability check function when the form is submitted--%>
<%--});--%>
<%--    </script>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
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
<a href="/booking?customerid=${customer.customerid}">Booking</a>
<div class="container">
    <h2>Search Avalible Booking</h2>
<form id="reservation-form">

    <input type="date" id="date-input">
    <select class="time" id="time-input" name="time">
        <option value="09:00">9:00 A.M</option>
        <option value="12:00">12:00 P.M</option>
        <option value="15:00">3:00 P.M</option>
        <option value="18:00">6:00 P.M</option>
    </select>
    <button type="submit">Check Availability</button>
</form>

<!-- Placeholder for displaying table status -->
<div id="table-status"></div>
</div>
<c:import url="layout/footer.jsp" />

<%
    ArrayList<String> dateValues = (ArrayList<String>) session.getAttribute("date");
    ArrayList<String> timeValues = (ArrayList<String>) session.getAttribute("time");
    ArrayList<String> tableValues = (ArrayList<String>) session.getAttribute("tablename");
    System.out.println(dateValues);
    System.out.println(timeValues);
    System.out.println(tableValues);
    // Here, we're assuming that dateValues and timeValues have corresponding indices
%>


<%--            <% for (int i = 0; i < dateValues.size(); i++) { %>--%>
<%--            reservations.push({ tablename: '<%= tableValues.get(i) %>' , date: '<%= dateValues.get(i) %>', time: '<%= timeValues.get(i) %>' });--%>
<%--            <% } %>--%>

<script>
    // Sample reservations array in the format [{ tablename, date, time }]
    var reservations = [
        <% for (int i = 0; i < dateValues.size(); i++) { %>
        { tablename: '<%= tableValues.get(i) %>', date: '<%= dateValues.get(i) %>', time: '<%= timeValues.get(i) %>' },
        <% } %>
    ];

    console.log(reservations);

    // List of all available tables
    var allTables = ["Table 1", "Table 2", "Table 3", "Table 4", "Table 5"];

    // Function to check table availability
    function checkTableAvailability() {
        // Get the user-selected date and time from the form
        var selectedDate = document.getElementById("date-input").value;
        var selectedTime = document.getElementById("time-input").value;

        // Initialize an object to store table availability status
        var tableAvailability = {};

        // Initialize all tables as available
        allTables.forEach(function (table) {
            tableAvailability[table] = true;
        });

        // Check reservations and mark tables as unavailable
        reservations.forEach(function (reservation) {
            var table = reservation.tablename; // Access tablename property
            var date = reservation.date; // Access date property
            var time = reservation.time; // Access time property

            // Check if the selected date and time match the reservation
            if (selectedDate === date && selectedTime === time) {
                tableAvailability[table] = false;
            }
        });

        // Display table availability status
        var tableStatusElement = document.getElementById("table-status");
        tableStatusElement.innerHTML = "";

        for (var table in tableAvailability) {
            if (tableAvailability[table]) {
                var tableStatusMessage = document.createElement("p");
                tableStatusMessage.textContent = table + " is available.";
                tableStatusElement.appendChild(tableStatusMessage);
            } else {
                var tableStatusMessage = document.createElement("p");
                tableStatusMessage.textContent = table + " is not available.";
                tableStatusElement.appendChild(tableStatusMessage);
            }
        }
    }

    // Attach the form submission handler to the form element
    var reservationForm = document.getElementById("reservation-form");
    reservationForm.addEventListener("submit", function (event) {
        event.preventDefault();
        checkTableAvailability(); // Call the availability check function when the form is submitted
    });
</script>


</body>
</html>

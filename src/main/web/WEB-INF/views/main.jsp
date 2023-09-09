<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        /* Reset some default styles for the anchor tag */
        a {
            text-decoration: none; /* Remove underline by default */
        }

        /* Style the whole page */
        body {
            background-color: #f0f0f0; /* Set a background color for the page */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Center content vertically */
            margin: 0;
        }

        /* Common style for all links */
        .box-link {
            display: inline-block; /* Make it a block element with a width and height */
            padding: 20px 40px; /* Add padding for spacing inside the box */
            background-color: #3498db; /* Set background color */
            color: #fff; /* Set text color */
            border: 2px solid #2980b9; /* Add a border */
            border-radius: 10px; /* Add rounded corners */
            text-align: center; /* Center text horizontally */
            font-size: 24px; /* Set font size */
            font-weight: bold; /* Set font weight */
            transition: background-color 0.3s ease, transform 0.2s ease; /* Add smooth hover and click effects */
            cursor: pointer; /* Change cursor on hover */
            margin: 10px; /* Add margin between links */
        }

        /* Change background color on hover */
        .box-link:hover {
            background-color: #2980b9;
        }

        /* Add a slight scale effect on click */
        .box-link:active {
            transform: scale(0.95);
        }
    </style>
    <title>Main</title>
</head>
<body>
<a href="/tableadd" class="box-link">Table Add</a>
<a href="/admintables" class="box-link">Admin Tables</a>
<a href="/bookedtables" class="box-link">Booked Tables</a>
<a href="/menu/create" class="box-link">Menu Create</a>
<a href="/menu/view" class="box-link">Menu View</a>
<a href="/view_customers" class="box-link">Customers View</a>
</body>
</html>


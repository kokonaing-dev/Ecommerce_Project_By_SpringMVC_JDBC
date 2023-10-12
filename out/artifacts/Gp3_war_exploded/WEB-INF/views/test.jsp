<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="layout/header.jsp" />
<body class="sub_page">
<c:import url="layout/navbar.jsp" />

<p>This is a test page for every condition</p>

<h1>Hello Testing 1,2,3</h1>

<p>There is something to do...</p>


<p>Late night with sayr gyi myar</p>

<p>Win ston s paw</p>

protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
// Retrieve user input from the login form
String email = request.getParameter("email");
String password = request.getParameter("password");

// Perform database validation
if (validateLogin(email, password)) {
// If credentials are valid, create a session
HttpSession session = request.getSession();
session.setAttribute("loggedInUser", email); // You can store user information in the session

// Redirect to a logged-in page
response.sendRedirect("dashboard.jsp"); // Replace with the appropriate page
} else {
// If credentials are invalid, show an error message
request.setAttribute("error", "Invalid email or password");
request.getRequestDispatcher("login.jsp").forward(request, response); // Redirect back to the login page
}
}


protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException {
// Retrieve user input from the login form
String email = request.getParameter("email");
String password = request.getParameter("password");

// Perform database validation
if (validateLogin(email, password)) {
// If credentials are valid, create a session
HttpSession session = request.getSession();
session.setAttribute("loggedInUser", email); // You can store user information in the session

// Redirect to the dashboard page only if the user is logged in
if (session.getAttribute("loggedInUser") != null) {
response.sendRedirect("dashboard.jsp"); // Replace with the appropriate page
} else {
// Handle the case where the email is not found in the session
response.sendRedirect("login.jsp"); // Redirect to the login page
}
} else {
// If credentials are invalid, show an error message
request.setAttribute("error", "Invalid email or password");
request.getRequestDispatcher("login.jsp").forward(request, response); // Redirect back to the login page
}
}
<c:import url="layout/footer.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="../layout/header.jsp"/>
<body class="sub_page">
<c:import url="../layout/navbar.jsp"/>
<div class="container">
    <p>Enter Your Information</p>

    <form:form action="/register" method="post" modelAttribute="user">

        <div class="form-group">
            <label for="name">Name</label>
            <form:input type="text" class="form-control" id="name" name="name"  path="name"/>
            <form:errors path="name" cssStyle="color: red"/>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <form:input type="email" class="form-control" id="email" name="email"   path="email"/>
            <form:errors path="email" cssStyle="color: red" />
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <form:input type="password" class="form-control" id="password" name="password"   path="password"/>
            <form:errors path="password" cssStyle="color: red" />
        </div>

        <form:input type="hidden"  class="form-control" name="authority" path="authority" />

        <button type="submit" class="btn btn-primary">Register</button>

    </form:form>

</div>
<c:import url="../layout/footer.jsp"/>

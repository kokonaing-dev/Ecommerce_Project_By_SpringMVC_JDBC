<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="../layout/header.jsp"/>
<body class="sub_page">
<c:import url="../layout/navbar.jsp"/>
<div class="container my-5">

    <c:if test="${!empty msgPwError}">
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong class="text-white">${msgPwError}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </c:if>

    <p>Enter Your Information</p>

    <form:form action="/login" method="post" modelAttribute="user">

        <div class="form-group">
            <label for="email">Email</label>
            <form:input type="email" class="form-control" id="email"   path="email"/>
            <form:errors path="email" cssStyle="color: red" />
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <form:input type="password" class="form-control" id="password"   path="password"/>
            <form:errors path="password" cssStyle="color: red" />
        </div>

        <button type="submit" class="btn btn-primary">Login</button>

    </form:form>

</div>
<c:import url="../layout/footer.jsp"/>

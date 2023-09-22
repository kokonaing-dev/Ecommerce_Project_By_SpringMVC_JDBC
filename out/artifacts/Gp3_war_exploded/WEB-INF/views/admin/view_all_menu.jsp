
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/header.jsp" />

<body class="sub_page">

<c:import url="../layout/navbar.jsp" />

<div class="container">
    <p>view By admin</p>

    <div class="container my-5">
        Menu Create :
    <button type="button" class="btn btn-primary" onclick="location.href = '/menu/create'"><i class="fa fa-plus">Create</i></button>
    </div>
    <table class="table my-5">
        <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>Product Name</th>
            <th>Product Price</th>
            <th>Image</th>
            <th>Categories</th>
            <th>Content</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach  items="${menu}" var="menu" varStatus="loop">
            <tr>
                <td>${loop.index+1}</td>
                <td>${menu.item}</td>
                <td>${menu.price}</td>
                <td>
                    <img src="../assets/imgs/${menu.image}" alt="no img" width="40" height="40">
                </td>
                <td>${menu.category_name}</td>
                <td>${menu.content}</td>
                <td><a href="/admin/menu_update?id=${menu.id}">    <button type="button" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                </a> </td>
                <td><a href="/admin/menu_update?id=${menu.id}">    <button type="button" class="btn btn-primary"><i class="fa fa-sticky-note"></i></button>
                </a> </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<c:import url="../layout/header.jsp" />
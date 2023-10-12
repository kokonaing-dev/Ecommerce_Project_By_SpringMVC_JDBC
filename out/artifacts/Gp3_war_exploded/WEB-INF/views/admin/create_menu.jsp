<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:import url="../layout/header.jsp"/>
<body class="sub_page">
<c:import url="../layout/navbar.jsp" />
<div class="container my-5">
    <h1 class="text-info text-center">Create Menu</h1>

    <form:form action="/admin/menu_create" method="post" enctype="multipart/form-data" modelAttribute="menu">

        <div class="form-group">
            <label for="product_name">Product Name</label>
            <form:input type="text" class="form-control" id="product_name"    path="item"/>
        </div>
        <br>
        <div class="form-group">
            <label for="product_price">Price</label>
            <form:input type="text" class="form-control" id="product_price"   path="price"/>
        </div>
        <br>
        <div class="form-group">
            <label for="category">Category</label>
            <form:select id="category" path="category_id">
                <c:forEach items="${categories}" var="cat" >
                    <form:option value="${cat.id}" label="${cat.name}"/>
                </c:forEach>
            </form:select>
        </div>
        <br>
        <div class="form-group"><!--image-->
            <label for="file">Image</label>
            <form:input type="file" class="form-control" id="file" path="file"/>
        </div>
        <br>
        <div class="form-group"><!--product-details-->
            <label for="product_content">Content</label>
            <form:textarea class="form-control" id="product_content"   rows="2"  path="content" />
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Create</button>
    </form:form>

</div>

<c:import url="../layout/footer.jsp" />

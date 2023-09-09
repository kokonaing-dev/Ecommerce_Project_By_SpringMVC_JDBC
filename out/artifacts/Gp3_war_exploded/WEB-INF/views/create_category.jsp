<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="layout/header.jsp"/>
<div class="sub_page">
<c:import url="layout/navbar.jsp"/>
    <div class="container">
        <form action="/create" method="post">
            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" class="form-control" id="category" name="category"  />
            </div>
            <button type="submit" class="btn btn-primary">Create</button>
        </form>
    </div>
<c:import url="layout/footer.jsp"/>
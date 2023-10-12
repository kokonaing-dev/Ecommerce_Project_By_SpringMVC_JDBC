<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="layout/header.jsp" />
<body class="sub_page">
<c:import url="layout/navbar.jsp" />

<p>This is a test page for every condition</p>

<h1>Hello Testing 1,2,3</h1>

<p>There is something to do...</p>

<c:forEach items="${invoices}" var="invoce">
<tr>
<td>${invoce.image}</td>
<td>${invoce.content}</td>
<td>${invoce.price}</td>
<td>${invoce.item}</td>
<td>${invoce.quantity}</td>
<td>${invoce.address}</td>
<td>${invoce.phone}</td>
<td>${invoce.total}</td>
</tr>
</c:forEach>


<p>Late night with sayr gyi myar</p>

<p>Win Ston s paw</p>


<c:import url="layout/footer.jsp"/>
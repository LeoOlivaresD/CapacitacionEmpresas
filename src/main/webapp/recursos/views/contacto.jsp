<%--
  Created by IntelliJ IDEA.
  User: blancapinot
  Date: 10-10-22
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Prevención de riesgos</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%@include file="menu.jsp" %>
<spring:url value="/usuario/guardar" var="agregarURL" htmlEscape="true"/>
<form:form modelAttribute="usuarioForm" method="post" action="${agregarURL}" cssClass="form">
    <form:hidden path="id"/>
<div class="container">
    <form>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputName">Name</label>
                <form:input type="text" name="name" cssClass="form-control" id="inputName"/>
            </div>
            <div class="form-group col-md-6">
                <label for="lastName">lastName</label>
                <form:input type="text" name="lastName" cssClass="form-control" id="lastName"/>
            </div>
        </div>
        <div class="form-group">
            <label for="inputAddress">Address</label>
            <form:input type="text" cssClass="form-control" id="inputAddress" placeholder="1234 Main St"/>
        </div>
        <div class="form-group">
            <label for="inputCuestion">Cuestion</label>
            <form:input type="text" cssClass="form-control" id="inputCuestion" placeholder="Cuestion"/>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">City</label>
                <form:input type="text" cssClass="form-control" id="inputCity"/>
            </div>
            <div class="form-group col-md-4">
                <label for="inputState">State</label>
                <select id="inputState" cssClass="form-control">
                    <option selected>Choose...</option>
                    <option>...</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="form-check">
                <form:input cssClass="form-check-input" type="checkbox" id="gridCheck"/>
                <label class="form-check-label" for="gridCheck">
                    Check me out
                </label>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Sign in</button>
    </form>

</div>

</form:form>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</body>
</html>

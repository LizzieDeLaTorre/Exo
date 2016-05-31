<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../backend/layout/head.jsp" />
<div class="container">
    <em>Llena el siguiente formulario adecuadamente.</em>
    <br>
    <form action="" method="POST">
        <br>
        <input type="hidden" name="tipo" value="3">
        Nombre(s): <input type="text" class="form-control" name="nombre" placeholder="Nombre" maxlength="30"  autofocus required><br>
        <br>
        Apellido Paterno: <input type="text" class="form-control" name="apellidoP" placeholder="Apellido Paterno" maxlength="40" autofocus required><br>
        <br>
        Apellido Materno: <input type="text" class="form-control" name="apellidoM" placeholder="Apellido Materno" maxlength="40" autofocus required><br>
        <br>
        Telefono: <input type="text" class="form-control" name="tel" placeholder="Ej:1234567890" maxlength="10" autofocus required><br>
        <br>
        Correo: <input type="text" class="form-control" name="correo" placeholder="Ej:example@mail.com" maxlength="10" autofocus required><br>
        <br>
        Tipo de usuario: <select class="form-control" name="user" required>
            <option value="">Selecciona un usuario</option>
            <c:forEach items="${usuario}" var="user">
                <option value="${user.getId()}">${user.getNombre()}</option>
            </c:forEach>      
        </select>
        <br>
        <br>
        Contraseña: <input type="password" class="form-control" name="password" placeholder="password" maxlength="10" autofocus required>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
</div>
<jsp:include page="../backend/layout/foot.jsp" />
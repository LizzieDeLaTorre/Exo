<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../backend/layout/head.jsp" />
<div class="container">
    <em>Ingresa usuario y password</em>
    <br>
    <form action="" method="POST">
        <br>
        <input type="hidden" name="tipo" value="3">
        Usuario: <input type="text" class="form-control" name="usuario" placeholder="Usuario" maxlength="30"  autofocus required><br>
        <br>
        Contraseña: <input type="password" class="form-control" name="password" placeholder="password" maxlength="10" autofocus required><br>
        <br>
        Tipo de usuario: <select class="form-control" name="user" required>
            <option value="">Selecciona un usuario</option>
            <c:forEach items="${usuario}" var="user">
                <option value="${user.getId()}">${user.getNombre()}</option>
            </c:forEach>      
        </select>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
</div>
<jsp:include page="../backend/layout/foot.jsp" />
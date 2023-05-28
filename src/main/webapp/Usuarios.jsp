<%-- 
    Document   : usuarios
    Created on : 19 may 2023, 19:10:48
    Author     : Natasha
--%>

<%@ page import="java.util.List" %>
<%@ page import="com.example.dao.UsuarioDAO" %>
<%@ page import="com.example.model.Usuario" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Usuarios</title>
</head>
<body>
    <h1>Lista de  Usuarios</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
        </tr>
        <%-- Obtener la lista de usuarios desde el DAO --%>
        <% UsuarioDAO usuarioDAO = new UsuarioDAO(); %>
        <% List<Usuario> usuarios = usuarioDAO.listarUsuarios(); %>
        
        <%-- Iterar sobre la lista de usuarios y mostrar los datos --%>
        <c:forEach var="usuario" items="<%=usuarios%>">
            <tr>
                <td><c:out value="${usuario.getId()}" /></td>
                <td><c:out value="${usuario.getNombre()}" /></td>
                <td><c:out value="${usuario.getApellido()}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
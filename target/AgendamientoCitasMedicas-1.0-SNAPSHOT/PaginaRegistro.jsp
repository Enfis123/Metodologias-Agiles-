<%-- 
    Document   : PaginaRegistro
    Created on : 25 may 2023, 18:40:57
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
        <title>Registro de Usuario</title>
    </head>
    <body>
        <h1>Registro de Usuario</h1>

        <%
            // Obtener datos del formulario
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");

            // Crear objeto Usuario si se han enviado los datos
            if (nombre != null && apellido != null) {
                Usuario usuario = new Usuario(nombre, apellido);
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                usuarioDAO.guardarUsuario(usuario);
        // Mostrar los datos del usuario
        out.println("<p>Nombre: " + usuario.getNombre() + "</p>");
        out.println("<p>Apellido: " + usuario.getApellido() + "</p>");
        }

        %>

        <form action="PaginaRegistro.jsp" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required><br>

            <label for="apellido">Apellido:</label>
            <input type="text" id="apellido" name="apellido" required><br>

            <input type="submit" value="Registrar">
        </form>
    </body>
</html>

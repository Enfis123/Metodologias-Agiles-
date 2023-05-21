<%-- 
    Document   : InicioSesion
    Created on : 20 may 2023, 20:56:10
    Author     : Natasha
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Iniciar Sesión</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-form {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Iniciar Sesión</h1>
    <div class="login-form">
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if ("Natasha".equals(username) && "123".equals(password)) {
                session.setAttribute("username", username);
                response.sendRedirect("MenuPaciente.jsp");
            } else if (username != null || password != null) {
                out.println("<p>Credenciales inválidas. Inténtalo de nuevo.</p>");
            }
            if ("Victor".equals(username) && "123".equals(password)) {
                session.setAttribute("username", username);
                response.sendRedirect("MenuMedico.jsp");
            } else if (username != null || password != null) {
                out.println("<p>Credenciales inválidas. Inténtalo de nuevo.</p>");
            }
            if ("Sebastian".equals(username) && "123".equals(password)) {
                session.setAttribute("username", username);
                response.sendRedirect("MenuAdmin.jsp");
            } else if (username != null || password != null) {
                out.println("<p>Credenciales inválidas. Inténtalo de nuevo.</p>");
            }
        %>
        <form action="InicioSesion.jsp" method="post">
            
            <label for="usertype">Tipo de Usuario:</label>
            <select id="usertype" name="usertype">
                <option value="paciente">Paciente</option>
                <option value="medico">Médico</option>
                <option value="administrador">Administrador</option>
            </select><br>
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required><br>
            
            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required><br>
            
            
            
            <input type="submit" value="Iniciar Sesión">
        </form>
    </div>
</body>
</html>

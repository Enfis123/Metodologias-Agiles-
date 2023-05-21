<%-- 
    Document   : ListarCitas
    Created on : 20 may 2023, 22:13:49
    Author     : Natasha
--%>

<%@ page import="java.util.List" %>
<%@ page import="com.example.dao.CitaDAO" %>
<%@ page import="com.example.model.Cita" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listado de Citas</title>
</head>
<body>
    <h1>Listado de Citas</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nombre Paciente</th>
            <th>Nombre Médico</th>
            <th>Fecha</th>
        </tr>
        <%-- Importar las clases necesarias --%>
        <%@ page import="com.example.dao.CitaDAO" %>
        <%@ page import="com.example.model.Cita" %>
        <%-- Obtener la lista de citas desde el DAO --%>
        <% CitaDAO citaDAO = new CitaDAO(); %>
        <% List<Cita> citas = citaDAO.listarCitas(); %>
        <%-- Iterar sobre la lista de citas y mostrar los datos --%>
        <c:forEach var="cita" items="${citas}">
            <tr>
                <td>${cita.getId()}</td>
                <td>${cita.getNombrePaciente()}</td>
                <td>${cita.getNombreMedico()}</td>
                <td>${cita.getFecha()}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

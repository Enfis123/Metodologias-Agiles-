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
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h1 {
            color: #333;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th {
            background-color: #333;
            color: #fff;
            text-align: left;
            padding: 10px;
        }
        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
    </style>
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
        
        <c:forEach var="cita" items="<%=citas%>">
            <tr>
                <td><c:out value="${cita.getId()}" /></td>
                <td><c:out value="${cita.getNombrePaciente()}" /></td>
                <td><c:out value="${cita.getNombreMedico()}" /></td>
                <td><c:out value="${cita.getFecha()}" /></td>
            </tr>
        </c:forEach>
            
    </table>
</body>
</html>

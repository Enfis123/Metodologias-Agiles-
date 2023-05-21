<%-- 
    Document   : MenuPaciente
    Created on : 20 may 2023, 21:53:10
    Author     : Natasha
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menú Paciente</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #000;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Menú Paciente</h1>
        <ul>
            <li><a href="Usuarios.jsp">Listar citas</a></li>
            <li><a href="InicioSesion.jsp">Salir Sesión</a></li>
        </ul>
    </div>
</body>
</html>

<%-- 
    Document   : MenuAdmin
    Created on : 20 may 2023, 21:53:45
    Author     : Natasha
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Menú de Administrador</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f0f0f0;
            }

            h1 {
                color: #333;
                text-align: center;
                padding: 20px 0;
            }

            .menu {
                background-color: #fff;
                padding: 20px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }

            .menu ul {
                list-style-type: none;
                padding: 0;
                margin: 0;
                text-align: center;
            }

            .menu ul li {
                display: inline-block;
                margin-right: 10px;
            }

            .menu ul li a {
                color: #333;
                text-decoration: none;
                padding: 10px 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                transition: background-color 0.3s ease;
            }

            .menu ul li a:hover {
                background-color: #f0f0f0;
            }
        </style>
    </head>
    <body>
        <h1>Menú de Administrador</h1>
        <div class="menu">
            <ul>
                <li><a href="PaginaRegistro.jsp">Registrar Usuario</a></li>
                <li><a href="Usuarios.jsp">Listar Usuarios</a></li>
                <li><a href="InicioSesion.jsp">Salir Sesión</a></li>
                
            </ul>
        </div>
    </body>
</html>
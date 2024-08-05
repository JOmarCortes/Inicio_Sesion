<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario de Ejemplo</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #3cddc6;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }

        /* Barra lateral izquierda */
        .sidebar-left {
            width: 10%;
            background-color: #09c9ad;
            padding: 10px;
            box-sizing: border-box;
        }

        /* Contenedor principal para centrar el formulario */
        .main-content {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            box-sizing: border-box;
        }

        /* Barra lateral derecha */
        .sidebar-right {
            width: 10%;
            background-color: #09c9ad;
            padding: 10px;
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
            margin-top: 100px;
            font-size: 48px;
            color: #bf8413;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        form {
            background-color: #ffffff;
            max-width: 400px;
            width: 100%;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .error-bg {
            background-color: #ccf6f4; /* Naranja claro */
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <!-- Barra lateral izquierda -->
    <div class="sidebar-left"></div>
    
    <!-- Contenedor principal -->
    <div class="main-content">
        <h1>Formulario de Registro</h1>
        <form action="procesarFormulario" method="post" autocomplete="off" novalidate
            class="<%= request.getAttribute("errorExists") != null ? "error-bg" : "" %>">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario">
            
            <label for="clave">Clave:</label>
            <input type="password" id="clave" name="clave">
            
            <!-- Nuevo menú desplegable para seleccionar el rol -->
            <label for="rol">Rol:</label>
            <select id="rol" name="rol">
                <option value="administrador">Administrador</option>
                <option value="vendedor">Vendedor</option>
                <option value="operario">Operario</option>
            </select>
            
            <input type="submit" value="Enviar">
        </form>
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
        <p class="error"><%= error %></p>
        <%
            }
        %>
    </div>
    
    <!-- Barra lateral derecha -->
    <div class="sidebar-right"></div>
</body>
</html>



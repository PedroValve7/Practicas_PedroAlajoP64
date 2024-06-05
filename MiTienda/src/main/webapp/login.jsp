<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forros de Celulares</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css">
<style>
    .login-container {
        border: 2px solid #4CAF50; /* Borde colorido */
        padding: 20px; /* Espaciado interno */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra */
        border-radius: 10px; /* Bordes redondeados */
        background-color: #f9f9f9; /* Fondo claro */
        max-width: 400px; /* Ancho máximo */
        margin: 20px auto; /* Centrar horizontalmente */
        font-family: Arial, sans-serif; /* Fuente */
        text-align: center; /* Centrar el texto */
    }
    .form-group {
        margin-bottom: 15px; /* Espacio entre campos del formulario */
    }
    .form-group label {
        display: block; /* Hacer que las etiquetas sean bloques para que estén encima de los campos */
        margin-bottom: 5px; /* Espacio debajo de las etiquetas */
    }
    .form-group input {
        width: 100%; /* Hacer que los campos ocupen todo el ancho del contenedor */
        padding: 8px; /* Espaciado interno de los campos */
        border: 1px solid #ccc; /* Borde de los campos */
        border-radius: 5px; /* Bordes redondeados de los campos */
        box-sizing: border-box; /* Incluir padding y border en el ancho y alto */
    }
    .login-container input[type="submit"] {
        background-color: #4CAF50; /* Fondo del botón */
        color: white; /* Color del texto del botón */
        padding: 10px 20px; /* Espaciado interno del botón */
        border: none; /* Sin borde */
        border-radius: 5px; /* Bordes redondeados del botón */
        cursor: pointer; /* Cambiar el cursor al pasar por el botón */
        width: 100%; /* Hacer que el botón ocupe todo el ancho del contenedor */
        box-sizing: border-box; /* Incluir padding y border en el ancho y alto */
    }
    .login-container input[type="submit"]:hover {
        background-color: #45a049; /* Fondo del botón al pasar el cursor por encima */
    }
    .login-links {
        margin-top: 15px; /* Espacio encima de los enlaces */
        text-align: center; /* Centrar los enlaces */
    }
    .login-links a {
        display: block; /* Hacer que los enlaces sean bloques para que estén uno debajo del otro */
        margin: 5px 0; /* Espacio entre los enlaces */
    }
</style>
</head>
<body class="pagina-login">
    <main>
        <header>
            <h1>Forros de Celulares</h1>
          <h2 class="destacado">Variedad de diseños aquí</h2>
        </header>
        <nav>
       <a href="index.jsp"><img src="images/home.png"> Inicio</a>
        <a href="login.jsp"><img src="images/login.png"> Login</a>
        <a href="consulta.jsp"><img src="images/order.png">Mostrar Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png"> Buscar</a>
        </nav>
        <section>
            <h2>Iniciar sesión</h2>
            <div class="login-container">
                <form action="procesarLogin.jsp" method="post">
                    <div class="form-group">
                        <label for="usuario">Usuario:</label>
                        <input type="text" id="usuario" name="usuario" required>
                    </div>
                    <div class="form-group">
                        <label for="contrasena">Contraseña:</label>
                        <input type="password" id="contrasena" name="contrasena" required>
                    </div>
                    <input type="submit" value="Iniciar sesión">
                </form>
                <div class="login-links">
                    <a href="registro.jsp">¿No tienes una cuenta?</a>
                    <a href="recuperacion.jsp">Modificar contraseña</a>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <ul>
            <li><a href="https://www.instagram.com">Instagram</a>
 			<li><a href="https://twitter.com">X</a>
 			<li><a href="https://www.facebook.com/pedrovinicio.alajo">Facebook</a>
        </ul>
    </footer>
</body>
</html>

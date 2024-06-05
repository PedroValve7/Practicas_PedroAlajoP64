<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>
<body>
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
        <style>
    #cambioClaveForm {
        border: 2px solid #4CAF50; /* Borde colorido */
        padding: 20px; /* Espaciado interno */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra */
        border-radius: 10px; /* Bordes redondeados */
        background-color: #f9f9f9; /* Fondo claro */
        max-width: 400px; /* Ancho máximo */
        margin: 20px auto; /* Centrar el formulario horizontalmente */
        font-family: Arial, sans-serif; /* Fuente */
        text-align: center; /* Centrar el texto */
    }

    .cambio-clave-form label,
    .cambio-clave-form input[type="email"],
    .cambio-clave-form input[type="password"],
    .cambio-clave-form input[type="submit"] {
        display: block;
        margin: 10px auto;
        width: 80%;
    }

    .cambio-clave-form input[type="submit"] {
        margin-top: 20px;
        width: 50%;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>
    <section id="cambioClaveForm">
        <h2>Cambio de contraseña</h2>
        <form action="#" method="post" class="cambio-clave-form">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="currentPassword">Contraseña actual:</label>
            <input type="password" id="currentPassword" name="currentPassword" required><br>

            <label for="newPassword">Nueva contraseña:</label>
            <input type="password" id="newPassword" name="newPassword" required><br>

            <label for="confirmPassword">Confirmar contraseña:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" required><br>

            <input type="submit" value="Cambiar Contraseña">
        </form>
    </section>
    </main>

    <footer>
        <ul>
            <li><a href="https://www.facebook.com/pedrovinicio.alajo"><img src="images/facebook.png"></a>
            <li><a href="https://www.instagram.com"><img src="images/instagram.png"></a>
 			<li><a href="https://twitter.com"><img src="images/gorjeo.png"></a>
        </ul>
    </footer>

</body>
</html>
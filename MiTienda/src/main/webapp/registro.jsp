<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forros de Celulares</title>
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
        <a href="consulta.jsp"><img src="images/order.png"> Ver Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png">Buscar Por Categoria</a>
        <a href="login.jsp"><img src="images/login.png">Login</a>
    </nav>
        
       <style>
    .registro-form-container {
        border: 2px solid #4CAF50; /* Borde colorido */
        padding: 20px; /* Espaciado interno */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra */
        border-radius: 10px; /* Bordes redondeados */
        background-color: #f9f9f9; /* Fondo claro */
        max-width: 600px; /* Ancho máximo */
        margin: 20px auto; /* Centrar el formulario horizontalmente */
        font-family: Arial, sans-serif; /* Fuente */
        text-align: left; /* Alinear a la izquierda el texto de las etiquetas */
    }
    .registro-form-container h2 {
        text-align: center; /* Centrar el título */
    }
    .registro-form-container div {
        margin-bottom: 15px; /* Espacio entre los campos */
    }
    .registro-form-container label {
        display: block; /* Hacer que las etiquetas sean bloques para que estén encima de los campos */
        margin-bottom: 5px; /* Espacio debajo de las etiquetas */
    }
    .registro-form-container input,
    .registro-form-container select,
    .registro-form-container button {
        width: 100%; /* Hacer que los campos ocupen todo el ancho del contenedor */
        padding: 8px; /* Espaciado interno de los campos */
        border: 1px solid #ccc; /* Borde de los campos */
        border-radius: 5px; /* Bordes redondeados de los campos */
        box-sizing: border-box; /* Incluir padding y border en el ancho y alto */
        margin-top: 5px; /* Espacio arriba de los campos */
    }
    .registro-form-container input[type="radio"] {
        width: auto; /* Dejar que los radios tengan su tamaño automático */
        margin-right: 5px; /* Espacio a la derecha de los radios */
    }
    .registro-form-container button {
        width: auto; /* Dejar que los botones tengan su tamaño automático */
        display: inline-block; /* Mostrar los botones en línea */
        margin-right: 10px; /* Espacio a la derecha de los botones */
    }
    .registro-form-container {
        border: 2px solid #4CAF50; /* Borde colorido */
        padding: 20px; /* Espaciado interno */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra */
        border-radius: 10px; /* Bordes redondeados */
        background-color: #f9f9f9; /* Fondo claro */
        max-width: 600px; /* Ancho máximo */
        margin: 20px auto; /* Centrar el formulario horizontalmente */
        font-family: Arial, sans-serif; /* Fuente */
        text-align: center; /* Centrar el texto */
    }
</style>
</head>
<body>
   <div class="registro-form-container">
        <h2>Registro</h2>
        <form action="respuesta.jsp" method="post" class="registro-form registro-form-container">
            <div>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div>
                <label for="cedula">Cédula:</label>
                <input type="text" id="cedula" name="cedula" maxlength="10" required>
            </div>
            <div>
                <label for="estadoCivil">Estado Civil:</label>
                <select id="estadoCivil" name="estadoCivil" required>
                    <option value="">Seleccionar</option>
                    <option value="soltero">Soltero</option>
                    <option value="casado">Casado</option>
                    <option value="divorciado">Divorciado</option>
                    <option value="viudo">Viudo</option>
                </select>
            </div>
            <div>
                <label for="nombre">Usuario:</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div>
                <label>Lugar de Residencia:</label>
                <input type="radio" id="sur" name="lugarResidencia" value="sur">
                <label for="sur">Sur</label>
                <input type="radio" id="norte" name="lugarResidencia" value="norte">
                <label for="norte">Norte</label>
                <input type="radio" id="centro" name="lugarResidencia" value="centro">
                <label for="centro">Centro</label>
            </div>
            <div>
                <label for="foto">Foto:</label>
                <input type="file" id="foto" name="foto" accept="image/jpeg, image/gif, image/bmp" required>
            </div>
            <div>
                <label for="fechaNacimiento">Fecha de Nacimiento:</label>
                <input type="month" id="fechaNacimiento" name="fechaNacimiento" required>
            </div>
            <div>
                <label for="color">Color Favorito:</label>
                <input type="color" id="color" name="color" value="#ff0000" required>
            </div>
            <div>
                <button type="submit">Enviar</button>
                <button type="reset">Resetear</button>
            </div>
        </form>
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
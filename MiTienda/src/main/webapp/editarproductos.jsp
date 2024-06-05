<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forros de Celulares</title>
<style>
    .form-group-container {
        border: 2px solid #4CAF50; /* Borde colorido */
        padding: 20px; /* Espaciado interno */
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Sombra */
        border-radius: 10px; /* Bordes redondeados */
        background-color: #f9f9f9; /* Fondo claro */
        margin-bottom: 15px; /* Espacio entre los recuadros */
        font-family: Arial, sans-serif; /* Fuente */
        text-align: left; /* Alinear a la izquierda el texto de las etiquetas */
    }
    .form-group-container label {
        display: block; /* Hacer que las etiquetas sean bloques para que estén encima de los campos */
        margin-bottom: 5px; /* Espacio debajo de las etiquetas */
    }
    .form-group-container input, 
    .form-group-container select {
        width: 100%; /* Hacer que los campos ocupen todo el ancho del contenedor */
        padding: 8px; /* Espaciado interno de los campos */
        border: 1px solid #ccc; /* Borde de los campos */
        border-radius: 5px; /* Bordes redondeados de los campos */
        box-sizing: border-box; /* Incluir padding y border en el ancho y alto */
    }
</style>
</head>
<body>
    <%
    String codigo = request.getParameter("valor");
    int codigoproducto = Integer.parseInt(codigo);
    %>
    <main>
        <header>
            <h1>Forros de Celulares</h1>
            <h2 class="destacado">Variedad de diseños aquí</h2>
            <h4 id="favorito"></h4>
        </header>
        <nav>
            <a href="menu.jsp"><img src="images/home.png"> Inicio</a>
        </nav>
        <h2 class="destacado">Modificar Productos</h2>
        <section class="centrar">
           <style>
    .form-group-container {
        border: 2px solid #4CAF50; /* Borde colorido */
        padding: 10px; /* Espaciado interno */
        margin-bottom: 10px; /* Espaciado inferior */
        border-radius: 5px; /* Bordes redondeados */
        background-color: #f9f9f9; /* Fondo claro */
    }

    .form-group-container label {
        display: block; /* Mostrar en bloque */
        margin-bottom: 5px; /* Espaciado inferior */
    }

    .form-group-container input[type="text"],
    .form-group-container input[type="number"],
    .form-group-container select {
        width: 100%; /* Ancho completo */
        padding: 5px; /* Espaciado interno */
        margin-top: 5px; /* Espaciado superior */
        margin-bottom: 10px; /* Espaciado inferior */
        box-sizing: border-box; /* Incluir el padding y border en el ancho */
    }

    .form-group-container button {
        padding: 5px 10px; /* Espaciado interno */
        background-color: #4CAF50; /* Color de fondo */
        color: white; /* Color de texto */
        border: none; /* Sin borde */
        border-radius: 5px; /* Bordes redondeados */
        cursor: pointer; /* Cursor tipo mano */
    }

    .form-group-container button[type="reset"] {
        margin-left: 10px; /* Espaciado a la izquierda */
        background-color: #f44336; /* Color de fondo */
    }
</style>
</head>
<body>
    <form action="resultadoeditar.jsp">
        <div class="form-group-container">
            <label for="id_pro">ID</label>
            <input value="<%=codigoproducto%>" type="text" id="id_pro" name="id_pro" readonly>
        </div>
        <div class="form-group-container">
            <label for="categoria">Categoria</label>
            <%
            Categorias categoria = new Categorias();
            out.print(categoria.mostrarCategoria());
            %>
        </div>
        <div class="form-group-container">
            <label for="nombre">Nombre</label>
            <input type="text" id="nombre" name="nombre" required>
        </div>
        <div class="form-group-container">
            <label for="cantidad">Cantidad</label>
            <input type="number" id="cantidad" name="cantidad" required>
        </div>
        <div class="form-group-container">
            <label for="precio">Precio</label>
            <input type="number" id="precio" name="precio" step="0.01" required>
        </div>
        <div class="form-group-container">
            <button type="submit">Enviar</button>
            <button type="reset">Resetear</button>
        </div>
    </form>
        </section>
        <footer>
            <ul>
            <li><a href="https://www.instagram.com">Instagram</a>
 			<li><a href="https://twitter.com">X</a>
 			<li><a href="https://www.facebook.com/pedrovinicio.alajo">Facebook</a>
            </ul>
        </footer>
    </main>
</body>
</html>

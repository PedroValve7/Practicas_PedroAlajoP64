<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session = "true" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<%
    int perfil = 0;
    String usuario = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("usuario") == null || (Integer)sesion.getAttribute("perfil") != 3) {
%>
        <jsp:forward page="login.jsp">
            <jsp:param name="error" value="Debe registrarse en el sistema." />
        </jsp:forward>
<%
    } else {
        usuario = (String) sesion.getAttribute("usuario");
        perfil = (Integer) sesion.getAttribute("perfil");
    }
%>
<html>
<head>
<meta charset="UTF-8">
<title>La fragata perfumería</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css"/>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .main-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 80%;
        max-width: 900px;
        margin-top: 50px; /* Adjust this value to move the title down */
    }
    header h1, header h2 {
        text-align: center;
        margin: 10px 0;
    }
    header h2.destacado {
        border: 2px solid #000;
        padding: 10px;
        border-radius: 5px;
    }
    nav {
        text-align: center;
        margin: 20px 0;
    }
    nav a img {
        vertical-align: middle;
    }
    .container {
        margin-top: 20px;
    }
    .container h2 {
        text-align: center;
        margin-bottom: 20px;
        border: 2px solid #000;
        padding: 10px;
        border-radius: 5px;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
    }
    .form-group input,
    .form-group select {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
    }
    .form-actions {
        display: flex;
        justify-content: space-between;
    }
    .form-actions button {
        padding: 10px 20px;
        border: none;
        background-color: #007bff;
        color: #fff;
        cursor: pointer;
        border-radius: 5px;
    }
    .form-actions button[type="reset"] {
        background-color: #6c757d;
    }
    .form-actions button:hover {
        opacity: 0.9;
    }
    footer {
        text-align: center;
        margin-top: 20px;
    }
    footer ul {
        list-style: none;
        padding: 0;
    }
    footer ul li {
        display: inline;
        margin: 0 10px;
    }
    footer ul li a img {
        width: 24px;
        height: 24px;
    }
</style>
</head>
<body>

<%
    Productos producto = new Productos();
    int id = producto.getNewId() + 1;
%>

<div class="main-container">
    <header>
        <h1>Forros de Celular</h1>
       <h2 class="destacado">Variedad de diseños aquí</h2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
        <a href="menu.jsp"><img src="images/home.png"> Inicio</a>
    </nav>
    <div class="container">
        <h2 class="destacado">Registro de productos</h2>
        <form action="resultadoregistro.jsp">
            <div class="form-group">
                <label for="id_pro">ID</label>
                <input value="<%=id%>" type="text" id="id_pro" name="id_pro" readonly>
            </div>
            <div class="form-group">
                <label for="categoria">Categoria</label>
                <%
                    Categorias categoria = new Categorias();
                    out.print(categoria.mostrarCategoria());
                %>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="cantidad">Cantidad</label>
                <input type="number" id="cantidad" name="cantidad" required>
            </div>
            <div class="form-group">
                <label for="precio">Precio</label>
                <input type="number" id="precio" name="precio" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="imagen">Imagen</label>
                <input type="file" id="imagen" name="imagen" required>
            </div>
            <div class="form-actions">
                <button type="submit">Enviar</button>
                <button type="reset">Resetear</button>
            </div>
        </form>
    </div>
    <footer>
        <ul>
            <li><a href="https://www.instagram.com">Instagram</a>
 			<li><a href="https://twitter.com">X</a>
 			<li><a href="https://www.facebook.com/pedrovinicio.alajo">Facebook</a>
        </ul>
    </footer>
</div>

</body>
</html>

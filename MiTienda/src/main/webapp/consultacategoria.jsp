<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forros de Celular</title>
<link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
	<main>
    <header>
        <h1>Forros de Celular</h1>
        <h2 class="destacado">Variedad de forros aquíh2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
    	<a href="index.jsp"><img src="images/home.png"> Inicio</a>
        <a href="login.jsp"><img src="images/login.png"> Login</a>
        <a href="consulta.jsp"><img src="images/order.png">Mostrar Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png"> Buscar</a>
    </nav>
    <div class="centrar">
    	<%
    	String categoria= request.getParameter("cmbCategoria");
    	int valor = Integer.valueOf(categoria);
		    Productos producto= new Productos();
		    out.print(producto.buscarProductoCategoria(valor));
		  %>
    </div>
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


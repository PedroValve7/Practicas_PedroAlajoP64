<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forros de Celulares</title>
<link href="css/estilo.css" rel="stylesheet"type="text/css"/>
</head>
<body>
	<main>
    <header>
        <h1>Forros de Celulares</h1>
        <h2 class="destacado">Variedad de diseños aquí</h2>
        <h4 id="favorito"></h4>
    </header>
    <nav>
    	<a href="menu.jsp"><img src="images/home.png"> Inicio</a>
    </nav>
   		 <h2>Resultado de la consulta</h2>
   		 <%
			Productos pro = new Productos();
			String id = request.getParameter("id_pro");
			String cat = request.getParameter("cmbCategoria");
			String nombre = request.getParameter("nombre");
			String cantidad = request.getParameter("cantidad");
			String precio = request.getParameter("precio");
			double resultado = Math.round(Double.parseDouble(precio)*100.0)/100.0;
			String directorio = request.getParameter("imagen");
			String res = pro.ingresarProducto(Integer.parseInt(id), Integer.parseInt(cat), nombre, Integer.parseInt(cantidad),resultado, directorio);
			out.print(res);
		%> 	
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

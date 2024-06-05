<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ver productos</title>
<link href="css/estilo.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
    <header>
        <h1>Forros de celular/ Estuches</h1>
       <h2 class="destacado">Variedad de diseños aquí</h2>
    </header>
    <nav>
    	<a href="index.jsp"><img src="images/home.png"> Inicio</a>
        <a href="login.jsp"><img src="images/login.png"> Login</a>
        <a href="consulta.jsp"><img src="images/order.png">Mostrar Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png"> Buscar</a>
    </nav>

    <section id="productos">
        
       	  <div class="centrar">
					<div class="down">
						<h2>Todos los productos disponibles</h2>
        				<%
							Productos pro = new Productos();
							String tabla = pro.verProductos();
							out.print(tabla);
						%>
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
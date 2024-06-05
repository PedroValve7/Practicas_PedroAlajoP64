<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>Categoria</title>
	
	<link href="css/estilo.css" rel="stylesheet" type="text/css">
	<script>
		function mostrarResultados() {
    		var hombre = document.getElementById("hombre");
   			var mujer = document.getElementById("mujer");
    		var resultadosHombre = document.getElementById("resultadosHombre");
    		var resultadosMujer = document.getElementById("resultadosMujer");

    		if (hombre.checked) {
        		resultadosHombre.style.display = "block";
        		resultadosMujer.style.display = "none";
   	 		} else if (mujer.checked) {
        		resultadosHombre.style.display = "none";
        		resultadosMujer.style.display = "block";
    		}
		}
	</script>
</head>
<body>
	<main>
		<header>
    		<h1>Buscar por Categorías</h1>
   			<h2 class="destacado">Variedad de diseños aquí</h2>
		</header>
		<nav>
		<a href="index.jsp"><img src="images/home.png"> Inicio</a>
        <a href="login.jsp"><img src="images/login.png"> Login</a>
        <a href="consulta.jsp"><img src="images/order.png">Mostrar Productos</a>
        <a href="categoria.jsp"><img src="images/lupa.png"> Buscar</a>
    </nav>

		<section>
			<h2>Que categoría buscas?</h2>
			<form action="consultacategoria.jsp">
				<%
				Categorias categoria= new Categorias();
				out.print(categoria.mostrarCategoria());
				%>
			<input type= "submit">
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
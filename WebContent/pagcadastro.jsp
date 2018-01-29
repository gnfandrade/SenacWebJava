<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Cidades</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
	<h1>Nossas Cidades</h1>
</header>
<main>
<form action="cadastro.jsp" method="post">
	<label>
		Nome da Cidade:
	</label>
	<input type="text" name="txtNome">
	<label>
		Estado:
	</label>
	<input type="text" name="txtEstado">
	<label>
	Numero de Habitantes:
	</label>
	<input type="number" min"1" max="500000" step="1" name="txtHabitantes">
	
	<input type="submit" value="Enviar">
	
</form>
</main>
</body>
</html>
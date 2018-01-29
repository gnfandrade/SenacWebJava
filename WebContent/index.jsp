<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.primeiro.dao.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Página Inicial</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css" >
</head>
<body>

<header>
	<h1>Nossas Cidades</h1>
</header>

<main>
<a href="pagcadastro.jsp">
	<img src="imagens/add.png"> clique aqui para cadastrar uma cidade.
</a>
<table>
<tr>
	<th>Nome da Cidade</th>
	<th>Estado</th>
	<th>Número de Habitantes</th>
	<th>Atualizar</th>
	<th>Apagar</th>
</tr>

	<% 
	
	DAOCidade cidade = new DAOCidade();
	ResultSet rs = cidade.listar();
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>"+rs.getString(2)+"</td>");
		out.println("<td>"+rs.getString(3)+"</td>");
		out.println("<td>"+rs.getString(4)+"</td>");
		out.println("<td><a  href=atualizar.jsp?cod="+rs.getInt(1)+"><img src=imagens/att.png></a></td>");
		out.println("<td><a  href=apagar.jsp?cod="+rs.getInt(1)+"><img src=imagens/del.png></a></td>");
		out.println("</tr>");
	}
	%>

</table>
</main>

<footer>

</footer>

</body>
</html>
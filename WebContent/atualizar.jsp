<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.primeiro.modelo.*" %>
<%@ page import="com.primeiro.dao.*" %>

    
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Atualizar Cidade</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>

<%

// Capturando ID que se obtém pela barra de endereço.
String id = request.getParameter("cod");

ResultSet rs = new DAOCidade().listar(Integer.parseInt(id));
if(rs.next()){
	

%>

<header>

	<h1>Atualizar Cidade: <%out.print(rs.getString(2)); %></h1>

</header>

<main>

	<form action="efetuaratualizacao.jsp" method="post">
		<label>
			<input type="text" disabled="disabled" value=<% out.print(id); %>>
			<input type="hidden" name="txtId" value=<% out.print(id); %>>
		</label>
		<label>Nome da Cidade:</label>
		<input type="text" name="txtNome" value='<%out.print(rs.getString(2)); %>'>
		<label>Estado:</label>
		<input type="text" name="txtEstado" value='<%out.print(rs.getString(3)); %>'>
		<label>Habitantes:</label>
		<input type="number" name="txtHabitantes" min="1" max="600000" value=<% out.print(rs.getString(4)); %>>
		<input type="submit" value="Atualizar">
	</form>
		
</main>

<%
}
%>


</body>
</html>
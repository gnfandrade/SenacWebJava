<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.primeiro.dao.*" %>
<%@ page import="com.primeiro.modelo.*" %>
    
    
<!DOCTYPE html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<meta http-equiv="refresh" content="5;url=index.jsp">

<link href="css/estilos.css" rel="stylesheet" type="text/css">


</head>
<body>
    
	<h2>Dados Atualizados com Sucesso !!!</h2>
	
	<%
	
	
	
	DAOCidade dc = new DAOCidade();
	Cidades cidades = new Cidades();
	cidades.setId(Integer.parseInt(request.getParameter("txtId")));
	cidades.setNome(request.getParameter("txtNome"));
	cidades.setEstado(request.getParameter("txtEstado"));
	cidades.setHabitantes(Integer.parseInt(request.getParameter("txtHabitantes")));
	
	dc.atualizar(cidades);
	
	%>
	

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.primeiro.dao.*" %>    

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Apagar Cidade</title>
<meta http-equiv="refresh" content="5;url=index.jsp">
</head>
<body>
	<h2>Cidade Apagada com Sucesso !!!</h2>
	
	<%
	
	DAOCidade cidade = new DAOCidade();
	
	String id = request.getParameter("cod");
	
	cidade.apagar(Integer.parseInt(id));
	
	
	%>

</body>
</html>
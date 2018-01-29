<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.primeiro.modelo.*" %>
    <%@page import="com.primeiro.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar cidades</title>
<meta http-equiv="refresh" content="5;url=index.jsp">
</head>
<body>

<%


String nome = request.getParameter("txtNome");
String estado = request.getParameter("txtEstado");
String habitantes = request.getParameter("txtHabitantes");

DAOCidade cidade = new DAOCidade();
Cidades cidades = new Cidades();

cidades.setNome(nome);
cidades.setEstado(estado);
cidades.setHabitantes(Integer.parseInt(habitantes));

String rs = cidade.cadastro(cidades);

out.println("<h2>"+rs+"</h2>");

%>

</body>
</html>
package com.primeiro.dao;

import java.sql.*;
import com.primeiro.modelo.*;

public class DAOCidade {
	
	Connection con= null;
	
	PreparedStatement pst = null;
	
	ResultSet rs = null;
	
	public String cadastro(Cidades cidades) {
		
		String msg = "";
		
		try {
			//carregar o drive de comunicação
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			//Etabelecer a conexão com o banco de dados
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco","root","");
			
			//Consulta sql de insert
			String inserir = "insert into tbcidades(nome,estado,habitantes)values(?,?,?)";
			//Estabelecer a relação entre os comandos de sql e o banco de dados
			pst = con.prepareStatement(inserir);
			
			pst.setString(1, cidades.getNome());
			pst.setString(2, cidades.getEstado());
			pst.setInt(3, cidades.getHabitantes());
			
			//executar a consulta e guardar o retorno do banco 
			
			int r = pst.executeUpdate();
			
			if(r>0)
				msg = "Cadastro Realizado Com Sucesso";
			else
				msg = "Não foi possível cadastrar";
		}catch(SQLException ex){
			msg = "Erro ao tentar cadastrar a cidade. "+ex.getMessage();
		}catch(Exception e) {
			msg = "Erro Inesperado. "+e.getMessage();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return msg;
	}
	
	public String atualizar(Cidades cidades) {
		
		String msg = "";
		
		try {
			//carregar o drive de comunicação
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			//Etabelecer a conexão com o banco de dados
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco","root","");
			
			//Consulta sql de insert
			String atualizar = "update tbcidades set nome=?,estado=?,habitantes=? where id=?";
			//Estabelecer a relação entre os comandos de sql e o banco de dados
			pst = con.prepareStatement(atualizar);
			
			pst.setString(1, cidades.getNome());
			pst.setString(2, cidades.getEstado());
			pst.setInt(3, cidades.getHabitantes());
			pst.setInt(4, cidades.getId());
			
			
			//executar a consulta e guardar o retorno do banco 
			
			int r = pst.executeUpdate();
			
			if(r>0)
				msg = "Atualização Realizada Com Sucesso";
			else
				msg = "Não foi possível Atualizar";
		}catch(SQLException ex){
			msg = "Erro ao tentar cadastrar a cidade. "+ex.getMessage();
		}catch(Exception e) {
			msg = "Erro Inesperado. "+e.getMessage();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return msg;
	}

public String apagar(int id) {
		
		String msg = "";
		
		try {
			//carregar o drive de comunicação
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			
			//Etabelecer a conexão com o banco de dados
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco","root","");
			
			//Consulta sql de insert
			String deletar = "delete from tbcidades where id=?";
			//Estabelecer a relação entre os comandos de sql e o banco de dados
			pst = con.prepareStatement(deletar);
			
			pst.setInt(1, id);
			
			//executar a consulta e guardar o retorno do banco 
			
			int r = pst.executeUpdate();
			
			if(r>0)
				msg = "Apagado Com Sucesso";
			else
				msg = "Não foi possível cadastrar";
		}catch(SQLException ex){
			msg = "erro ao tentar cadastrar a cidade. "+ex.getMessage();
		}catch(Exception e) {
			msg = "Erro Inesperado. "+e.getMessage();
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return msg;
	}

public ResultSet listar() {
	
	try {
		//carregar o drive de comunicação
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		
		//Etabelecer a conexão com o banco de dados
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco","root","");
		
		//Consulta sql de insert
		String consulta = "select * from tbcidades";
		
		//Estabelecer a relação entre os comandos de sql e o banco de dados
		pst = con.prepareStatement(consulta);
		
		//executar a consulta e guardar o retorno do banco 
		
		 rs = pst.executeQuery();
		
	}catch(SQLException ex){
		ex.printStackTrace();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return rs;
}

public ResultSet listar(int id) {
	
	try {
		//carregar o drive de comunicação
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		
		//Etabelecer a conexão com o banco de dados
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/banco","root","");
		
		//Consulta sql de insert
		String consulta = "select * from tbcidades where id=?";
		
		//Estabelecer a relação entre os comandos de sql e o banco de dados
		pst = con.prepareStatement(consulta);
		
		pst.setInt(1, id);
		
		//executar a consulta e guardar o retorno do banco 
		
		 rs = pst.executeQuery();
		
	}catch(SQLException ex){
		ex.printStackTrace();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return rs;
}


	
}

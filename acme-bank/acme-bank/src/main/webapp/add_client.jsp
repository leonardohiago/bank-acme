<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tela Principal</title>
</head>
<body>
	<div align="center">
		<h1>Tela Principal</h1>
		<h2>Cadastro de Usuário</h2>
		<br/>
		<form action="clientServlet" method="POST">
			<label for="name">Name</label>
			<input id="name" name="name" type="text" placeholder="Digite seu nome" maxlength="70" title="Insira aqui o seu nome." required>
			<br/>
			<br/>
			<label for="email">E-mail</label>
			<input id="email" name="email" type="email" placeholder="Digite seu email" title="Insira aqui o seu endereço de email." required>
			<br/>
			<br/>
			<label for="phone">Phone</label>
			<input id="phone" name="phone" type="text" placeholder="Digite seu telefone" pattern="^\d{2}\d{5}\d{4}$" maxlength="11" title="Insira aqui o número de seu telefone." required>
			<br/>
			<br/>
			<input type="submit" value="Salvar" id="btn-Login">
		</form>
		<br/>
		<br/>
		
		<form action="listaServlet" method="GET">
		<h2>Lista de Usuários</h2>
		<button>Listar</button>
		</form>
		
		<br/>
		<br/>
		
		<h2>Deletar Usuário</h2>
			
		<form action="removalServlet" method="POST">

		<input id="id" name="id" type="text" placeholder="Número de Identificação" pattern="\d{2}$" maxlength="2" title="Insira aqui o ID" required>
		<br/>
		<br/>
		<input type="submit" value="Deletar" id="btn-Delete">
		</form>
				
	</div>
</body>
</html>
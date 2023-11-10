<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title> Minha Loja - Logon de usuário</title>
	
<meta name="viewport" content="width=device-width, initial-scale=1">
	
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	
<style>

.navbar{
	margin-bottom: 0;
}
	
	
</style>
	
	
</head>

<body>
	
<?php
	
		
	session_start();

   //Arrumar essa parte

    // se a sessão estiver vazia (ou status for 0), redirecionar para o index
    if(empty($_SESSION['Status']) || $_SESSION['Status'] != 1){
       header("Location:index.php");
    }
	
	include 'conexao.php';	
	include 'nav.php';
	include 'cabecalho.html';
	
	?>
	
	<div class="container-fluid">
	
		<div class="row">
		
			<div class="col-sm-4 col-sm-offset-4 text-center">
				
				<h2>Área Administrativa</h2>
				
				<br>
				<a href="formProduto.php">			
				<button type="submit" class="btn btn-block btn-lg btn-primary">
					
					Incluir Produto
					
				</button>
					
				</a>
				<br>
				
				<button type="submit" class="btn btn-block btn-lg btn-warning">
					
					Alterar / Excluir Produto
					
				</button>
				<br>
				
				<button type="submit" class="btn btn-block btn-lg btn-success">
					
					Vendas
					
				</button>
				
				<br>
				
				<button type="submit" class="btn btn-block btn-lg btn-danger">
					
					Sair da àrea administrativa
					
				</button>
				
				
				
				
			</div>
		</div>
	</div>
	<br><br>
	<?php include 'rodape.html' ?>
	
	
	
	
</body>
</html>
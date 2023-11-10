<!doctype html>

<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Minha Loja</title>
	
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
	
	include 'conexao.php';	
	include 'nav.php';
	include 'cabecalho.html';

    if(!empty($_GET['cd'])){  // se não estiver vazia a variavel cd, se estiver irá para i index

    $cd_Moletom = $_GET['cd'];
    $consulta = $cn->query("select * from vw_MoletomOFC10 where Codigo_Moletom= '$cd_Moletom'");

    $exibe=$consulta->fetch(PDO::FETCH_ASSOC);

    }else {
        header("location:index.php");
    }

	?>

<div class="container-fluid">
	
	<div class="row">
		
		 <div class="col-sm-4 col-sm-offset-1">
			 
         <h1 style="font-size: 40px;">Detalhes do Produto</h1>

			 <br><br>

             <img src="img/<?php echo $exibe['Imagem']; ?>"  class="img-responsive" style="width:100%;">
		       
        
		       
		
				
			
		</div>
		
	
 		 <div class="col-sm-7"><h1><b><?php echo $exibe['Nome'];?></b></h1>
		<br>

		<p  style="font-size:25px;"><b>Cor: </b><?php echo $exibe['Cor'];?></p>

			<br>
		<p style="font-size: 25px;"><b>Tamanho: </b><?php echo $exibe['Tamannho'];?> </p>
			<br>	

		<p style="font-size: 25px;"><b>Preço: </b><?php echo number_format($exibe['Valor'],2,',','.');?></p>
			 
        <br><br><br><br>
			 
		<button class="btn btn-lg btn-success">Comprar</button>
				
				
        <br><br>
		</div>		
	

</div>
	<br><br>
	<?php
	
	include 'rodape.html';
	
	?>
	
</body>
</html>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
 
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!--Identificador de caractere-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  <!--area branca da tela (tela em si)--> 

    <!--CSS-->
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="estilo.css">


<!-- Estilo CSS interno para definir o fundo como branco -->
<style type="text/css">
        body {
            background-color: white;
        }
</style>

    <!--Tirando o espaço entra o MENU e a Jumbotrom-->
    <style type="text/css">
        .navbar {margin-bottom:0;}
    </style>

    <title> LojaVirtual</title>
    
</head>
<body>
 
<!--Chamando o CABEÇALHO, como INCLUD-->
<!-- copiando/chamando o MENU, assim não é necessário repetir o menu em cada página,basta somente chamar pelo includ-->
<?php include 'nav.php';
include 'cabecalho.html';
include 'conexao.php';
//variavel consulta vai receber variavel cn (connection) recebendo o resultado de uma query 
$consulta=$cn->query("SELECT*FROM vw_MoletomLanc1 where Lm_Lancamentos='S'");
?>





<div class="container-fluid">
    <div class="row">
        <?php
        while ($exibe = $consulta->fetch(PDO::FETCH_ASSOC)) {
        ?>
        <div class="col-sm-3">
            <div class="item-container">


                <img src="img/<?php echo $exibe['Imagem']; ?>" class="item-image">
                <div><h3><b><?php echo mb_strimwidth($exibe['Nome'], 0, 20, '...'); ?></b></h3></div>
                <div><h4>R$<?php echo number_format($exibe['Valor'], 2, ',', '.'); ?></h4></div>


                <div class="text-center">
                <a href="Detalhes.php?cd=<?php echo $exibe['Codigo_Moletom'];?>">
            <button class="btn btn-lg btn-block btn-default">
                <span class="glyphicon glyphicon-info-sign" style="color:blue">&nbsp Detalhes &nbsp  </span>
        </button> 
        </a>
        </div>

     <div class="text-center" style="margin-top:5px; margin-button:5px;">
        <?php if ($exibe['Qtd_estoque'] > 0) {  ?>

            <button class="btn btn-lg btn-block btn-danger">
                <span class="glyphicon glyphicon-usd">  &nbsp  Comprar   &nbsp&nbsp  </span>
        </button> 

        <?php } else {?>
            <button class="btn btn-lg btn-block btn-danger" disabled>
                <span class="glyphicon glyphicon-remove-circle"> &nbsp Indisponível &nbsp&nbsp  </span>
        </button> 

        <?php } ?>
        </div>
            
            
            </div>


        </div>
        <?php } ?>
    </div>
</div>


 <style type="text/css">
        .item-image{
            height:300px;
            width:250px;
        }
         .col-sm-3 {
    flex: 0 0 25%;
        
        }
    </style>



    </div> <!-- Fechamento class row -->
</div>  <!-- Fechamento do container fluid -->


<br><br>

<!--Chamando o rodape-->
<?php 
include 'rodape.html';
?>

</body>
</html>
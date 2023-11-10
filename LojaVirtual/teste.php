<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Mostrar produtos  </title>
</head>
<body>


<?php

    include 'conexao.php';
    //variavel consulta vai receber variavel cn (connection) recebendo o resultado de uma query 
     $consulta=$cn->query('SELECT*FROM vw_Moletom;');

      //variavel $exibe receberá o resultado da consulta em forma de uma tabela virtual


      // criando um looping para carregar todos os registros 
     WHILE($exibe=$consulta->fetch(PDO::FETCH_ASSOC)) {


        ECHO $exibe['Nome'].'<br>';
        ECHO $exibe['Valor'].'<br>';
        ECHO $exibe['Imagem'].'<br>';

        echo '<hr>';
     }


    






    ?>  
</body>
</html>
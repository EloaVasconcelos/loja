<?php

include 'conexao.php';	

$nome = $_POST['txtnome'];

$email = $_POST['txtemail'];
$senha = $_POST['txtsenha'];
$end = $_POST['txtendereco'];
$cidade = $_POST['txtcidade'];
$cep = $_POST['txtcep'];


/*
Tesrando 
echo $nome . '<br>';
echo $email .'<br>';
echo $senha .'<br>';
echo $end .'<br>';
echo  $cidade .'<br>';
echo $cep . '<br>';
*/

$consulta =$cn->query("select Ds_Email from tbUsuario where Ds_Email ='$email'" );
$exibe=$consulta -> fetch(PDO::FETCH_ASSOC);

if($consulta->rowCount()==1){
   header('location:erro1.php');
}
    else {
        $incluir =$cn->query("
            insert into tbUsuario(
            NomeUsu,
            Ds_Email,
            Ds_Senha,
            Ds_Status,
            Endereco,
            Ds_Cidade,
            NumCep)

            values('$nome', '$email', '$senha','0', '$end', '$cidade', '$cep')");

            header('location:ok.php');
     }



?>
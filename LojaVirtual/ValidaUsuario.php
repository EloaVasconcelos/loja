<?php 

include 'conexao.php';



session_start(); //iniciando uma sessão
$Vemail = $_POST ['txtemail'];
$Vsenha = $_POST ['txtsenha'];
  
$consulta = $cn->query("select Codigo_Usuario,NomeUsu,Ds_Email,Ds_Senha, Ds_Status from tbUsuario where Ds_Email = '$Vemail' and Ds_Senha ='$Vsenha'"); 

if ($consulta->rowCount ()==1){ // Verifica se o úsuário existe 

$exibeUsuario=$consulta->fetch(PDO::FETCH_ASSOC);

if($exibeUsuario['Ds_Status'] == 0){
$_SESSION['ID'] = $exibeUsuario['Codigo_Usuario'];
$_SESSION['Ds_Status'] = 0;
header('location:index.php');  // redirecionando para outras pag

}

else {
        $_SESSION['ID'] = $exibeUsuario['Codigo_Usuario'];
        $_SESSION['Status'] = 1;
        header('location:index.php');  // redirecionando para outras pag

}
}



else {
    header('location:erro.php');
}
?>
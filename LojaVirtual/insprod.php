<?php

include 'conexao.php';  // include com arquivo de conexao

//variáveis que vão receber os dados do formulário que esta na pagina formProduto
$Id_categoria = $_POST['sltcat'];  // recebendo o valor do campo select, valor numérico
$Nome = $_POST['txtMoletom'];
$Cod_tamanho= $_POST['sltTamanho']; // recebendo o valor do campo select, valor numérico
$Cor = $_POST['txtCor'];
$Valor= $_POST['txtpreco'];
$Genero = $_POST['txtGenero']; //Colocar genero
$Lm_lancamentos = $_POST['sltlanc'];

$remover1='.';  // criando variável e atribuindo o valor de ponto para ela
$Valor = str_replace($remover1, '', $Valor); // removendo ponto de casa decimal,substituindo por vazio
$remover2=','; // criando variável e atribuindo o valor de virgula para ela
$Valor = str_replace($remover2, '.', $Valor); // removendo virgula de casa decimal,substituindo por ponto

$recebe_foto1 = $_FILES['txtfoto1'];

$destino = "img/";  // informando para qual diretorio será enviado a imagem


//gerando nome aleatorio para imagem
// preg_match vai pegar imagens nas extensões jpg|jpeg|png|gif
// do nome que esta na variavel $recebe_foto1 do parametro name e a $extensão vai receber o formato
preg_match("/\.(jpg|jpeg|png|gif){1}$/i",$recebe_foto1['name'],$extencao1);

// a função md5 vai gerar um valor randomico  com base no horario "time"
// incrementar o ponto e a extensão
// função md5 é criado para gerar criptografia
$img_nome1 = md5(uniqid(time())).".".$extencao1[1];


try {  // try para tentar inserir



	$inserir=$cn->query("INSERT INTO tbMoletons(IdCategoria, Cod_tamanho , Nome , Cor, Valor, Lm_lancamentos, Genero, Imagem) VALUES ('$Id_categoria', '$Cod_tamanho', '$Nome', '$Cor', '$Valor',  '$Lm_lancamentos', '$Genero', '$img_nome1')");

    
	/*
	move_uploaded_file($recebe_foto1['Imagem'], $destino.$img_nome1);             
    $resizeObj = new resize($destino.$img_nome1);
    $resizeObj -> resizeImage(564, 816, 'crop');
    $resizeObj -> saveImage($destino.$img_nome1, 100);
	
    header('Location:index.php');
	*/

}catch(PDOException $e) {  // se houver algum erro explodir na tela a mensagem de erro
	
	
	echo $e->getMessage();
	
}

?>
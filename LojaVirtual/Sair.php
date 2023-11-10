<?php 
session_start();

// destruindo a sessão
session_destroy();


// redirecionando para uma nova pag 
header('Location:index.php');


?>
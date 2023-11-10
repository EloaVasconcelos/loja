<?php

$servidor="Localhost";
$usuario="root";
$senha= "VMeloa44@bd.2023";
$banco= "dbLojaMoletons";


$cn = new PDO("mysql:host=$servidor;dbname=$banco", $usuario, $senha);


?> 
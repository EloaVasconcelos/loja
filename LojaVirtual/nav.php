   <!--Na tag abaixo podemos mudar a cor da nav (pesquisar os tipos e colocar entre as aspas)-->
   <nav class="navbar navbar-inverse">

<!--Criar margem dentro de um container-->
    <div class="container-fluid">
        
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">

        <!--Botão sanfona-->
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

        <!--Link alterar o Brand-->
        <a class="navbar-brand" href="#">Loja-Moletons</a> <img src="img/ML.png" alt="sem imagem" height="43px" width="45px"/>
      </div>


      <!--Mudando o MENU -->
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <!--Mudando o Nome e a Cor e o nome do que aparece no menu-->
          <li class=""><a href="index.php"> HOME <span class="sr-only">(current)</span></a></li>
          <li><a href="Lanc.php">Lançamentos</a></li>


          <!--"MENU EM LISTA"-->
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Categorias <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="Cat.php?Cat=Animes"> Animes</a></li>
              <li><a href="Cat.php?Cat=Infantil"> Infantil </a></li>
             

              <!--LINHA QUE DIVIDE (Separador)-->
              <li role="separator" class="divider"></li>
              <li><a href="Cat.php?Cat=Friends">Friends</a></li>
              <li><a href="Cat.php?Cat=Minimalistas">Minimalistas</a></li>
            </ul>
          </li>
        </ul>

        <!--Formulario-->
        <form class="navbar-form navbar-left" role="search"  name = "frmpesquisa" method="get" action="busca.php">
          <div class="form-group">

            <!--Caixa de texto-->
            <!--Mudando o nome que aparece no caixa de texto depois do "placeholder"-->
            <input type="text" class="form-control" placeholder="Pesquisar" name="txtPesquisar">
          </div>
          
          <!--MUDANDO O NOME QUE APARECE NO BOTÃO-->
          <button type="submit" class="btn btn-default">Verificar</button>
        </form>

        <!--Joga o texto pro lado direito-->
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Contato</a></li>

          <!----verificando usuario--> <!-- se estiver vazio a sessão id mostrar meu login --> 
          <?php  if (empty($_SESSION['ID'])) {   ?>
          <!--Tipo de botão e o nome do lado-->
         <li><a href="FormLogin.php"><span class="glyphicon glyphicon-log-in"> LOGON </a></li>
         <?php } else { //Senão estiver vazio a sessão id verifica...

          if ($_SESSION['Status'] == 0){ // se a sessão status veler 0 mostrar usuario 
          $consulta_usuario=$cn->query("select NomeUsu from tbUsuario where Codigo_Usuario ='$_SESSION[ID]'");
          $exibe_usuario = $consulta_usuario->fetch(PDO::FETCH_ASSOC);

          ?>
           <li><a href="#"><span class="glyphicon glyphicon-user"> <?php echo $exibe_usuario ['NomeUsu'];?> </a></li>
           
         <li><a href="Sair.php"><span class="glyphicon glyphicon-log-out"> Sair </a></li>
         
         
         <?php } else {   ?>

          <li><a href="adm.php"> <button class="bnt bnt-sm btn-danger"> Administrador</button></a></li>
         <li><a href="Sair.php"><span class="glyphicon glyphicon-log-out"> Sair </a></li>
         <?php } }  ?>
      
        </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
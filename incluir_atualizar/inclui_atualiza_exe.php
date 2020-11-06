<?php
/*
ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);
*/

include("../conexao.php");
extract($_POST); // Extrai os dados do form

//ajusta dados:
$nome = strtoupper($nome);
$cpf = str_replace("'", "", $cpf);
$cpf = str_replace("&", "", $cpf);
$cpf = str_replace('"', "", $cpf);
$cpf = str_replace('.', "", $cpf);
$cpf = str_replace('-', "", $cpf);
$cpf = str_replace('/', "", $cpf);
$cpf = rtrim($cpf);
$cpf = ltrim($cpf);
//echo "cpf ou cnpj: ".$cpf;die;


     $nome_unidade = "select nome_unidade from `tb_cod_unidade` where codigo_unidade = $unidade;";
     $query_nome_unidade = mysqli_query($link, $nome_unidade) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($query_nome_unidade)){
        $nome_unidade = $row["nome_unidade"];
     }
     

   // VALIDA
   $existe = 0;
   if ($cpf != "" || $nome != "" || $user_valida1 != "" || $user_valida2 != "" || $user_valida3 != ""){

     $pega_dados = "select cpf from tb_login where cpf = $cpf;";
     $query_pegadados = mysqli_query($link, $pega_dados) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($query_pegadados)){
        $valorCPF = $row["cpf"];
        if ($valorCPF != ""){
           $existe = 1;
        }
     }


     if ($existe == 1){ // se existe ATUALIZA

        $update_inserido = "UPDATE tb_login SET nome = '$nome',valida1='$user_valida1',valida2='$user_valida2',
                            valida3='$user_valida3',unidade='$unidade' WHERE cpf = $cpf;";
        $up_inserido = mysqli_query($link, $update_inserido,$link) or die(mysqli_error($link));
        

        $mensagem = "
        <strong>ELEITOR ATUALIZADO.<br />
        O eleitor j&aacute; estava no banco de dados e agora seus dados foram atualizados.</strong><br />
        CPF: $cpf<br />
        Eleitor: $nome<br />
        VALIDA 1: $user_valida1<br />
        VALIDA 2: $user_valida2<br />
        VALIDA 3: $user_valida3<br />
        UNIDADE: $nome_unidade<br />
        <br>
        <div><a href='index.php' ><img src=\"../images/bt_finaliza-inclui-atualiza.jpg\" border='0'></a></div>";

     }else{ // se n�o existe INCLUI

        $executa_insere = mysqli_query($link, "insert into tb_login values(id,'$nome','$cpf','$user_valida1','$user_valida2','$user_valida3','$unidade','1')")
                          or die(mysqli_error($link));

        $mensagem = "
        <strong>ELEITOR ADICIONADO<br />
        O eleitor n&atilde;o estava no banco de dados, mas agora foi adicionado.</strong><br />
        CPF: $cpf<br />
        Eleitor: $nome<br />
        VALIDA 1: $user_valida1<br />
        VALIDA 2: $user_valida2<br />
        VALIDA 3: $user_valida3<br />
        UNIDADE: $nome_unidade<br />
        <br>
        <div><a href='index.php' ><img src=\"../images/bt_finaliza-inclui-atualiza.jpg\" border='0'></a></div>";

     }
}else{
        $mensagem = "
        <strong>HOUVE UM ERRO</strong><br />
        <em >Algum dado n�o foi informado. Tente novamente</em><br /><br />
        <div><a href='index.php' ><img src=\"../images/bt_finaliza-inclui-atualiza.jpg\" border='0'></a></div>";
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Vota&ccedil;&atilde;o do Sicoob</title>

<link href="../css/templatemo_style.css" type="text/css" rel="stylesheet" />

<link rel="stylesheet" href="../css/slimbox2.css" type="text/css" media="screen" />
<script src="../scripts/validar.js" type="text/javascript"></script>
<script src="../scripts/mascaraHellas.js" type="text/javascript"></script>
<style type="text/css">
h1 {
	color: #333;
}
h2 {
	color: #333;
}
h3 {
	color: #900;
}
h4 {
	color: #333;
}
h5 {
	color: #333;
}
h6 {
	color: #333;
}
</style>
</head>
<body>
<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><a href="../index.html">Sistema de Vota&ccedil;&atilde;o do Sicoob<br />
    	</a>    </div>
	</div>
</div>
<div id="templatemo_main_wrapper">
	<div id="templatemo_main">
            <div id="home" class="section">
                    <div align="center">
                      <br />
                      <table width="400" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="100%" border="0">
                            <tr>
                              <td align="left"><h3><strong>Inclus&atilde;o/atualiza&ccedil;&atilde;o de eleitor:</strong></h3></td>
                            </tr>
                            <tr>
                              <td align="left"><hr /></td>
                            </tr>
                            <tr>
                              <td align="left">&nbsp;</td>
                            </tr>
                            <tr>
                              <td><div align="left"><?php echo $mensagem; ?></div></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td><hr /></td>
                            </tr>
                          </table></td>
                        </tr>
                      </table>
                      <br />
                    </div>
            </div>
  </div>
</div>

<div id="templatemo_footer_wrapper">
<div id="templatemo_footer">
    	<p>Copyright Sicoob Planalto Central.</p>
</div>
</div>

</body>
</html>

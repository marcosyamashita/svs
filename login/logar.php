<?php
include("../conexao.php");


$cpf = $_POST['cpf'];

$cpf = str_replace("'", "", $cpf); // tira elemento: '
$cpf = str_replace("&", "", $cpf); // tira elemento: &
$cpf = str_replace('"', "", $cpf); // tira elemento: "
$cpf = str_replace('.', "", $cpf); // tira elemento: "
$cpf = str_replace('-', "", $cpf); // tira elemento: "
$cpf = str_replace('/', "", $cpf); // tira elemento: "
$cpf = rtrim($cpf); // remove espa�os � direita
$cpf = ltrim($cpf); // remove espa�os � esquerd
//echo "CPF: ".$cpf;die;


#Verifica se o acesso atual ja votou
$valorAtivo = 1;
$verifica_javotou = "SELECT ativo FROM tb_login WHERE cpf = '$cpf';";
$query_verifica_javotou = mysqli_query($link, $verifica_javotou) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_verifica_javotou)){
   $valorAtivo = $row["ativo"];
}//echo $valorAtivo;die;
if ($valorAtivo == 0){
   header ("Location: ../error-javotou.html");
   die;
}

#Verifica se existe usuario no bd
$sql_logar = "SELECT * FROM tb_login WHERE cpf = '$cpf' and ativo = 1;";
$exe_logar = mysqli_query($link, $sql_logar) or die (mysqli_error($link));
$num_logar = mysqli_num_rows($exe_logar); // conta o num de linhas
//echo $num_logar;die;
//verifica se houve retorno de linhas
if ($num_logar == 0){
   header ("Location: ../error.html");
}
else{
//Cria a sess�o,verifica permiss�es e loga!
session_start();

$sql_dados_acesso = "SELECT nome,cpf,valida1,valida2,valida3,unidade FROM tb_login WHERE cpf = '$cpf' and ativo = 1;";
$query_dados_acesso = mysqli_query($link, $sql_dados_acesso) or die(mysqli_error($link));
   while($row = mysqli_fetch_array($query_dados_acesso)){
      $nome_usuario = $row["nome"];
      $cpf_usuario = $row["cpf"];
      $valida1 = $row["valida1"];
      $valida2 = $row["valida2"];
      $valida3 = $row["valida3"];
      $unidade_usuario = $row["unidade"];
   }
   
$select_cod_unidade_user = "SELECT nome_unidade FROM tb_cod_unidade WHERE codigo_unidade = '$unidade_usuario' and ativo = 1;";
$query_cod_unidade_user = mysqli_query($link, $select_cod_unidade_user) or die(mysqli_error($link));
   while($row = mysqli_fetch_array($query_cod_unidade_user)){
      $nomedaunidade = $row["nome_unidade"];
   }

   $_SESSION['nome']= $nome_usuario;
   $_SESSION['cpf'] = $cpf_usuario;
   $_SESSION['valida1'] = $valida1;
   $_SESSION['valida2'] = $valida2;
   $_SESSION['valida3'] = $valida3;
   $_SESSION['unidade'] = $unidade_usuario;
   $_SESSION['nome_unidade'] = $nomedaunidade;

   header ("Location: redireciona.php");
}

?>

<?php
extract($_POST); // Extrai os dados do form
include("../conexao.php");
require("function_geraSenha.php");

$resultado_processamento = "";


// verificar o tipo desejado
if($tipo == "ativos"){
   // Executar o update na base de dados pelo tipo desejado gerando senha alfanumerica

  $cont = "select COUNT(*) from tb_login;";
  $querycount = mysqli_query($link, $cont) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($querycount)){
        $total_mails_tb_login = $row["COUNT(*)"]; // final do bd
     } //echo $total_mails_tb_login;die;

if($total_mails_tb_login != '0'){

for($x=1 ; $x<=$total_mails_tb_login ; $x++){
/*
* @param integer $tamanho Tamanho da senha a ser gerada
* @param boolean $maiusculas Se ter� letras mai�sculas
* @param boolean $numeros Se ter� n�meros
* @param boolean $simbolos Se ter� s�mbolos
*/
$user_ativo = "select ativo from tb_login where id = $x;";
$query_user_ativo = mysqli_query($link, $user_ativo) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_user_ativo)){
   $user_ativo = $row["ativo"];
}

if($user_ativo == "1"){
// Gera uma senha com 6 carecteres: letras (min e mai), n�meros
$senha = "";
$senha = geraSenha(6);//Exemplo: gfUgF3e5m7
$senha_mail = $senha;
//echo 'Senha para envio do email: '.$senha_mail.'<br />';
echo $senha."<br>";

if ($senha != ""){
   $senha_banco = $senha;
   $pass_code = md5($senha_banco);
   //echo "Resultado-md5: " . $pass_code.'<br />'; //Exemplo: 54cf74d1acdb4037ab956c269b63c8ac
   $update = "UPDATE tb_login SET passw = '$pass_code' WHERE id = $x;";
   $result=mysqli_query($link, $update,$link);
   @$resultado_processamento .= $x." |<font color = white><strong> SENHA GERADA</strong></font>";
}
}else{
   @$resultado_processamento .= $x." |<font color = white><strong> SENHA NAO GERADA</strong></font>";
}

// Envio da senha para o email:
//******************************************************************************************************************************************
$dados_mail = "";
$pega_dados = "select nome,email,cpf,dt_nasc,unidade from tb_login where id = $x and ativo='1';";
$query_pega_dados = mysqli_query($link, $pega_dados) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_pega_dados)){
   $dados_nome = $row["nome"];
   $dados_mail = $row["email"];
   $dados_cpf = $row["cpf"];
   $dados_nasc = $row["dt_nasc"];
   $dados_unidade = $row["unidade"];
}
$nome_unidade = "select nome_unidade from tb_cod_unidade where codigo_unidade = '$dados_unidade' and ativo='1';";
$query_nome_unidade = mysqli_query($link, $nome_unidade) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_nome_unidade)){
   $nome_unidade = $row["nome_unidade"];
}
//echo $dados_mail.'<br>';
if(@$dados_mail == ''){
   @$resultado_processamento .= ' | CLIENTE ID: '.$x.' | <font color = RED><strong>ERRO: VOTO REALIZADO - ATIVO=0</strong></font><br /><hr />';
   $to = '';
   }else{
      if(filter_var($dados_mail, FILTER_VALIDATE_EMAIL)){ // verifica se email correto:
      
         $quebra_linha = "\n";
         $emailsender = "agenciavirtual@sicoobcrediembrapa.com.br";
         $nomeremetente = "SVS";
         $emaildestinatario = "$dados_mail";

         $assunto = "Sistema de Vota��o do Sicoob";
         
         require("body_mail.php");
         $mensagemHTML = $conteudo_arquivo; // msg corpo email

         $headers = "MIME-Version: 1.1".$quebra_linha;
         $headers .= "Content-Type: text/html; charset=utf-8".$quebra_linha;
         $headers .= "From: ".$emailsender.$quebra_linha;
         $headers .= "Return-Path: ".$emailsender.$quebra_linha;
         $headers .= "Reply-To: ".$emailsender.$quebra_linha;

         //@$envio = mail ($emaildestinatario, $assunto, $mensagemHTML, $headers, "-r".$emailsender);

         if($envio == 1){
            $msg_retorno = 'EMAIL ENVIADO COM SUCESSO';
         }else{
            $msg_retorno = 'ERRO NA FUNCAO MAIL'; // erro na fun��o mail
         }

         // Resultados Positivos:
         @$resultado_processamento .= ' | '.$dados_mail;
         @$resultado_processamento .= '<font color = BLUE> | '.$msg_retorno.'</font>';
         @$resultado_processamento .= "<br />";

    }else{ // se email foi identificado como incorreto:
         // Resultados Negativos - Tipo #02:
         @$resultado_processamento .= ' | '.$dados_mail.' | <font color = RED><strong>ERRO: EMAIL CADASTRADO INCORRETAMENTE </strong></font><br />';
    }

}//fecha else
}//fecha loop for
}// fecha if
}// FECHA O TIPO DA EXECU��O.

//##########################################################################################################################################

if($tipo == "especifico"){
// pegar variavel, separar emails,realizar loop para cada email:
//echo $mails_envio_especif;die;

$sep = explode(';',$mails_envio_especif);
//echo $sep[2];die;
$qtd_mails_envio = sizeof($sep);
//echo $qtd_mails_envio;die;

$v = 1;
for ($a=0 ; $a<$qtd_mails_envio ; $a++){

$dados_mail = "";

$mail_atual = $sep[$a];
//echo $mail_atual.'<br>';
$mail_atual = rtrim($mail_atual);
$mail_atual = ltrim($mail_atual);
//echo '|'.$mail_atual.'|<br>';die;

if($mail_atual != ""){
/*
* @param integer $tamanho Tamanho da senha a ser gerada
* @param boolean $maiusculas Se ter� letras mai�sculas
* @param boolean $numeros Se ter� n�meros
* @param boolean $simbolos Se ter� s�mbolos
*/
$user_ativo = "select ativo from tb_login where email = '$mail_atual';";
$query_user_ativo = mysqli_query($link, $user_ativo) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_user_ativo)){
   $user_ativo = $row["ativo"];
}//echo $user_ativo;die;

if($user_ativo == "1"){
// Gera uma senha com 6 carecteres: letras (min e mai), n�meros
$senha = "";
$senha = geraSenha(6);//Exemplo: gfUgF3e5m7
$senha_mail = $senha;
//echo 'Senha para envio do email: '.$senha_mail.'<br />';die;

if ($senha != ""){
   $senha_banco = $senha;
   $pass_code = md5($senha_banco);
   //echo "Resultado-md5: " . $pass_code.'<br />'; die; //Exemplo: 54cf74d1acdb4037ab956c269b63c8ac
   $update = "UPDATE tb_login SET passw = '$pass_code' WHERE email = '$mail_atual';";
   $result=mysqli_query($link, $update,$link);
   @$resultado_processamento .= $v." |<font color = white><strong> SENHA GERADA</strong></font>";
}
}else{
   @$resultado_processamento .= $v." |<font color = white><strong> SENHA NAO GERADA</strong></font>";
}

// Envio da senha para o email:
//******************************************************************************************************************************************

$pega_dados = "select nome,email,cpf,dt_nasc,unidade from tb_login where email = '$mail_atual' and ativo='1';";
$query_pega_dados = mysqli_query($link, $pega_dados) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_pega_dados)){
   $dados_nome = "";
   $dados_nome = $row["nome"];

   $dados_mail = "";
   $dados_mail = $row["email"];

   $dados_cpf = "";
   $dados_cpf = $row["cpf"];
   
   $dados_nasc = "";
   $dados_nasc = $row["dt_nasc"];
   
   $dados_unidade = "";
   $dados_unidade = $row["unidade"];
}//echo $dados_mail.'<br>';
$nome_unidade = "select nome_unidade from tb_cod_unidade where codigo_unidade = '$dados_unidade' and ativo='1';";
$query_nome_unidade = mysqli_query($link, $nome_unidade) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_nome_unidade)){
   $nome_unidade = $row["nome_unidade"];
}


if(@$dados_mail == ''){
   //echo "aqui".$v."<br>";
$existe = "select cpf from tb_login where email = '$mail_atual';";
$query_existe = mysqli_query($link, $existe) or die(mysqli_error($link));
while($row = mysqli_fetch_array($query_existe)){
   $existe_cpf = $row["cpf"];
   if ($existe_cpf == ""){
      $existe = 0;
   }else{
      $existe = 1;
   }
}
if ($existe == 0){
   $msg = "CLIENTE INEXISTENTE NA BASE DE DADOS";
}else{
   $msg = "CLIENTE DESATIVADO (ATIVO=0)";
}
   
   @$resultado_processamento .= ' | '.$mail_atual.' | <font color = RED><strong>'.$msg.'</strong></font><br />';
   $to = '';
   }else{
      if(filter_var($mail_atual, FILTER_VALIDATE_EMAIL)){ // verifica se email correto:

         $quebra_linha = "\n";
         $emailsender = "agenciavirtual@sicoobcrediembrapa.com.br";
         $nomeremetente = "SVS";
         $emaildestinatario = "$mail_atual";

         $assunto = "Sistema de Vota��o do Sicoob";

         require("body_mail.php");
         $mensagemHTML = $conteudo_arquivo; // msg corpo email

         $headers = "MIME-Version: 1.1".$quebra_linha;
         $headers .= "Content-Type: text/html; charset=utf-8".$quebra_linha;
         $headers .= "From: ".$emailsender.$quebra_linha;
         $headers .= "Return-Path: ".$emailsender.$quebra_linha;
         $headers .= "Reply-To: ".$emailsender.$quebra_linha;

         @$envio = mail ($emaildestinatario, $assunto, $mensagemHTML, $headers, "-r".$emailsender);

         if($envio == 1){
            $msg_retorno = 'EMAIL ENVIADO COM SUCESSO';
         }else{
            $msg_retorno = 'ERRO NA FUNCAO MAIL'; // erro na fun��o mail
         }

         // Resultados Positivos:
         @$resultado_processamento .= ' | '.$mail_atual;
         @$resultado_processamento .= '<font color = BLUE> | '.$msg_retorno.'</font>';
         @$resultado_processamento .= "<br />";

    }else{ // se email foi identificado como incorreto:
         // Resultados Negativos - Tipo #02:
         @$resultado_processamento .= ' | '.$mail_atual.' | <font color = RED><strong>ERRO: EMAIL CADASTRADO INCORRETAMENTE </strong></font><br />';
    }
}//fecha else


}else{
echo "aqui";
}
$v++;
}//fecha for - loop de quantidade de emails
}//fecha if do tipo

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<title>Sistema de Vota&ccedil;&atilde;o do Sicoob</title>

<link href="../css/templatemo_style.css" type="text/css" rel="stylesheet" />

<link rel="stylesheet" href="../css/slimbox2.css" type="text/css" media="screen" />

<script src="../scripts/validar.js" type="text/javascript"></script>
<script src="../scripts/mascaraHellas.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
function checkJS(){
    document.getElementById("jsEnabled").style.visibility = "visible";
    document.getElementById("jsDisabled").style.visibility = "hidden";
}
</script>
<style type="text/css">
h1 {
	color: #333;
}
h2 {
	color: #333;
}
h3 {
	color: #333;
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
<body onload="checkJS()">
<div id="jsDisabled">
<font color="#FF0000"><strong> </strong></font>
<table width="100%" border="0">
  <tr>
    <td width="99%"><font color="#FF0000" size="2"><strong>ERRO DE NAVEGA&Ccedil;&Atilde;O:</strong> Seu navegador n&atilde;o suporta JavaScript ou ele n&atilde;o est&aacute; ativado e este recurso &eacute; indispens&aacute;vel para este site.      Para habilitar este recurso no seu navegador &eacute; simples, segue uma p&aacute;gina de ajuda: <a href="http://www.enable-javascript.com/pt/" target="_blank">Clique aqui</a>.    </font></td>
  </tr>
  <tr>
    <td><hr /></td>
  </tr>
</table>
<font color="#FF0000"><strong><br />
</strong></font></div>


<div align="center" id="jsEnabled" style="visibility:hidden">



<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><a href="#">Sistema de Vota&ccedil;&atilde;o do Sicoob<br />
    	</a></div>
	</div>
</div>
<div align="center">
  <div align="center"><font color="#666666" size="2"><em>::Ambiente Administrativo::</em></font></div>
</div>
<div id="templatemo_main_wrapper">
	<div id="templatemo_main">
            <div id="home" class="section">
                    <div align="center">
                      <br />
                      <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="95%" border="0" align="center">
                            <tr>
                              <td align="left"><h3>Gerador de senha para votação - SVS:</h3></td>
                            </tr>
                            <tr>
                              <td align="left"><hr /></td>
                            </tr>
                            <tr>
                              <td align="left"></td>
                            </tr>
                            <tr>
                              <td align="left"><p><strong>Retorno do sistema: </strong></p>
                              <p><?php echo @$resultado_processamento; ?></p></td>
                            </tr>
                            <tr>
                              <td width="38%">&nbsp;</td>
                            </tr>
                            <tr>
                              <td><hr></td>
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
    	<p>:: Versão 1.4 ::<br />Sistema de Votação do Sicoob<br />

</p>
    </div>
</div>
</div>
</body>
</html>

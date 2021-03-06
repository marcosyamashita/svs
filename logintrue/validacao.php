<?php
include("../conexao.php");
include("../login/restrito.php");
$nome_associado = $_SESSION['nome'];
$cpf_associado = $_SESSION['cpf'];
$valida1 = $_SESSION['valida1'];
$valida2 = $_SESSION['valida2'];
$valida3 = $_SESSION['valida3'];
$unidade_associado = $_SESSION['unidade'];
$nome_unidade_associado = $_SESSION['nome_unidade'];

$cpf_or_cnpj = strlen($cpf_associado);

if($cpf_or_cnpj > 11){
   // é cnpj
   $TXT_tipo = "CNPJ";

   $txt_valida1 = "DATA DE NASCIMENTO DO REPRESENTANTE:<br><em>Formato necess&aacute;rio: dd/mm/aaaa</em>";
   $txt_valida2 = "CPF DO REPRESENTANTE:<br><em>(Informe somente n&uacute;meros)</em>";
   $txt_valida3 = "CONTA CORRENTE DA PJ:<br><em>(Informe somente n&uacute;meros)</em>";

}else{
   // é cpf
   $TXT_tipo = "CPF";

   $txt_valida1 = "DATA DE NASCIMENTO DO COOPERADO:<br><em>Formato necess&aacute;rio: dd/mm/aaaa</em>";
   $txt_valida2 = "DOCUMENTO DE IDENTIFICA&Ccedil;&Atilde;O:<br><em>(Informe somente n&uacute;meros)</em>";
   $txt_valida3 = "CONTA CORRENTE DO COOPERADO:<br><em>(Informe somente n&uacute;meros)</em>";

}//echo $tipo_pagina;die;

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
<script src="../scripts/valida-cpf-cnpj.js" type="text/javascript"></script>

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
.squaredTwo {
  width: 20px;
  height: 20px;
  position: relative;
  margin: 10px auto;
  background: #fcfff4;
  background: linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
  label {
    width: 20px;
    height: 20px;
    cursor: pointer;
    position: absolute;
    left: 4px;
    top: 4px;
    background: linear-gradient(top, #222 0%, #45484d 100%);
    box-shadow: inset 0px 1px 1px rgba(0,0,0,0.5), 0px 1px 0px rgba(255,255,255,1);
    &:after {
      content: '';
      width: 9px;
      height: 5px;
      position: absolute;
      top: 4px;
      left: 4px;
      border: 3px solid #fcfff4;
      border-top: none;
      border-right: none;
      background: transparent;
      opacity: 0;
      transform: rotate(-45deg);
    }
    &:hover::after {
      opacity: 0.3;
    }
  }
  input[type=checkbox] {
    visibility: hidden;
    &:checked + label:after {
      opacity: 1;
    }
  }
}
/* end .squaredTwo */
</style>
</head>
<body onload="checkJS()">


<div id="jsDisabled">
<font color="#FF0000"><strong> </strong></font>
<table width="100%" border="0">
  <tr>
    <td width="99%"><font color="#FF0000" size="2"><strong>VERIFICA&Ccedil;&Atilde;O:</strong> Seu navegador n&atilde;o suporta JavaScript ou ele n&atilde;o est&aacute; ativado e este recurso &eacute; indispens&aacute;vel para este site.      Para habilitar este recurso no seu navegador &eacute; simples, segue uma p&aacute;gina de ajuda: <a href="http://www.enable-javascript.com/pt/" target="_blank">Clique aqui</a>.    </font></td>
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
  <div align="center"><font color="#0000FF" size="2"><strong>Bem vindo sr(a) <?php echo $nome_associado.' | '.$cpf_associado.' | '.$nome_unidade_associado.' | <a href="../login/deslogar.php">Sair</a>'; ?></strong></font></div>
</div>
<div id="templatemo_main_wrapper">
	<div id="templatemo_main">
            <div id="home" class="section">
                    <div align="center">
					<form action="escolha_votacao.php" method="post" name="form1" id="form1" onsubmit="return checkVadidacoes()" >
                      <br />
                      <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="95%" border="0" align="center">
                            <tr>
                              <td align="center"><h3>Sistema de Vota&ccedil;&atilde;o - Confirma&ccedil;&atilde;o de dados (<?php echo $TXT_tipo; ?>):</h3></td>
                            </tr>
                            <tr>
                              <td align="left"><hr /></td>
                            </tr>
                            <tr>
                              <td align="center"><p>Para acessar o Sistema de Vota&ccedil;&atilde;o &eacute; necess&aacute;rio validar alguns dados cadastrais.<br />
                          <strong>Preencha corretamente os seguintes campos: </strong><br>

                          <strong style="text-transform: uppercase; color: red;"> ATENÇÃO: informe apenas os números, sem pontos, barras, espaço, hifens.</strong>

                           </p>
                                <table width="75%" border="0" cellpadding="2" cellspacing="2" align="center">
                                  <tr>
                                    <td><strong><?php echo $txt_valida1; ?></strong></td>
                                    <td align="right"><input autofocus="autofocus" name="user_valida1" type="text" class="svs_jtext" id="user_valida1" size="20" maxlength="10" onkeyup='mascaraHellas(this.value, this.id, &quot;##/##/####&quot;, event)' onkeypress="return (apenasNumeros(event))"/></td>
                                  </tr>
                                  <tr>
                                    <td><strong><?php echo $txt_valida2; ?></strong></td>
                                    <td align="right"><input name="user_valida2" type="text" class="svs_jtext" id="user_valida2" size="20" maxlength="11" onkeypress="return (apenasNumeros(event))"/></td>
                                  </tr>
                                  <tr>
                                    <td><strong><?php echo $txt_valida3; ?></strong></td>
                                    <td align="right"><input name="user_valida3" type="text" class="svs_jtext" id="user_valida3" size="20" maxlength="11" onkeypress="return (apenasNumeros(event))"/></td>

                                  </tr>
                                  <td><strong>ATENÇÃO: caso possua mais de uma conta-corrente:<br>
- informe apenas uma das contas no campo<br>
- verifique se houve o aceite da validação.<br>
Em caso negativo, informe a outra conta</strong></td>
                                  <tr>
                                    <td width="70%">&nbsp;</td>
                                    <td width="30%" align="right"><input name="Concordar e Avan&Atilde;&sect;ar" type="submit" class="img_border" id="Validar_Dados" value="Validar Dados" /></td>
                                  </tr>
                                    
                                  </tr>
                                </table></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td><hr></td>
                            </tr>
                                  <tr>
                            <tr>
                              <td align="center"><strong><br /></strong><strong>Canais de atendimento:<br />
                              </strong>Whatsapp: <a href="//api.whatsapp.com/send?phone=5561999842551\" target="_blank">(61) 99984-2551</a><br />
Telefone 1: <a href="\&quot;tel:+5508007244000?\&quot;">0800 724 4000</a><br />
Telefone 2: <a href="\&quot;tel:+556121074000?\&quot;">(61) 2107-4000</a><br />
E-mail: <a href="\&quot;mailto:eleicoes@crediembrapa.com.br\&quot;">eleicoes@crediembrapa.com.br</a></td>
                            </tr>
                          </table></td>
                        </tr>
                      </table>
                      <br />
                    </form>
                    </div>
            </div>
  </div>
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	<p>:: Vers&atilde;o 1.7 ::<br />
    	Sistema de Vota&ccedil;&atilde;o do Sicoob<br />

</p>
    </div>
</div>
</div>
</body>
</html>

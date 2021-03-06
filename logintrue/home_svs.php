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

//echo "Acesso logado aprovado!";
//echo '<br> Nome: '.$nome_associado.' | Email: '.$email_associado.' | CPF: '.$cpf_associado;

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
<script language="javascript" type="text/javascript">
 function checkCheckBox(f){
 if (f.agree.checked == false )
 {
 alert('Os termos são obrigatórios.\nPara avançar verifique os termos.');
 return false;
 }else
 return true;
 }
 //  End -->
 </script>

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
  <div align="center"><font color="#0000FF" size="2"><strong>Bem vindo sr(a) <?php echo $nome_associado.' | '.$email_associado.' | '.$cpf_associado.' | '.$nome_unidade_associado.' | <a href="../login/deslogar.php">Sair</a>'; ?></strong></font></div>
</div>
<div id="templatemo_main_wrapper">
	<div id="templatemo_main">
            <div id="home" class="section">
                    <div align="center">
					<form action="escolha_votacao.php" method="post" name="form1" id="form1" onsubmit="return checkCheckBox(this)" >
                      <br />
                      <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="95%" border="0" align="center">
                            <tr>
                              <td align="left"><h3>Sistema de Vota&ccedil;&atilde;o do Sicoob - Instru&ccedil;&otilde;es Gerais:</h3></td>
                            </tr>
                            <tr>
                              <td align="left"><hr /></td>
                            </tr>
                            <tr>
                              <td align="justify"><p><strong> Seja bem vindo ao ambiente de vota&ccedil;&atilde;o do Sicoob CrediEmbrapa!</strong></p>
                                <p>A  elei&ccedil;&atilde;o se realizar&aacute; por meio eletr&ocirc;nico no per&iacute;odo compreendido entre a <strong>zero hora do dia 21/11/2016 e encerra-se &agrave;s 23:59:59  do dia 25/11/2016, hora de Bras&iacute;lia</strong>  (<a href="../edital2016.pdf" target="_blank">veja o edital</a>). Cada eleitor ap&oacute;s a confirma&ccedil;&atilde;o das informa&ccedil;&otilde;es contidas nesta tela visualizar&aacute; o(s) candidato(s) dispon&iacute;vel(is) em rela&ccedil;&atilde;o com a sua unidade para realizar o seu voto.</p>
                                <p>A rela&ccedil;&atilde;o dos candidatos eleitos ficar&aacute; dispon&iacute;vel no site: <a href="http://www.sicoobcrediembrapa.com.br" target="_blank">www.sicoobcrediembrapa.com.br</a>.</p>
                                <p><strong>                                  Verifique abaixo o seu nome, email,  CPF, data de nascimento e o seu n&uacute;cleo correspondente:</strong></p>
                                <table width="100%" border="1" cellpadding="2" cellspacing="2">
                                  <tr>
                                    <td width="20%"><strong>Nome:</strong></td>
                                    <td width="80%"><?php echo $nome_associado; ?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>E-mail:</strong></td>
                                    <td><?php echo $email_associado; ?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>CPF:</strong></td>
                                    <td><?php echo $cpf_associado; ?></td>
                                  </tr>
                                  <tr>
                                    <td><strong>Grupo Seccional:</strong></td>
                                    <td><?php echo $nome_unidade_associado; ?></td>
                                  </tr>
                                </table>
                                <hr /></p>
                              </td>
                            </tr>
                            <tr>
                              <td align="right"><table width="100%" border="0" cellpadding="2" cellspacing="2">
                                <tr>
                                  <td width="3%"><input type='checkbox' name='agree' class='squaredTwo' id='radio$r' value='aceitou' />
                                  <label for="checkbox"></label></td>
                                  <td width="77%"><strong><em>Concordo com os termos e afirmo que meus dados est&atilde;o corretos.</em></strong></td>
                                  <td width="20%"><input name="Concordar e Avançar" type="submit" class="img_border" id="Concordar e Avançar" value="Concordar e Avan&ccedil;ar" /></td>
                                </tr>
                              </table></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                            </tr>
                            <tr>
                              <td><hr></td>
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
    	<p>:: Vers&atilde;o 1.4 ::<br />
    	Sistema de Vota&ccedil;&atilde;o do Sicoob<br />

</p>
    </div>
</div>
</div>
</body>
</html>

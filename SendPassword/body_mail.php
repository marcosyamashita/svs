<?php
$conteudo_arquivo = '
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Vota&ccedil;&atilde;o do Sicoob</title>
<style type="text/css">
body,td,th {
	font-family: Verdana, Geneva, sans-serif;
	font-size: 10px;
	color: #333333;
}
body {
	background-color: #E4E4E4;
}
h1,h2,h3,h4,h5,h6 {
	font-family: Verdana, Geneva, sans-serif;
}
h1 {
	font-size: 24px;
	color: #033333;
}
h2 {
	font-size: 18px;
	color: #033333;
}
h3 {
	font-size: 16px;
	color: #033333;
}
h4 {
	font-size: 14px;
	color: #066;
}
h5 {
	font-size: 12px;
	color: #066;
}
h6 {
	font-size: 10px;
	color: #066;
}
a {
	color: #066;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #066;
}
a:hover {
	text-decoration: underline;
	color: #066;
}
a:active {
	text-decoration: none;
	color: #066;
}
</style>
</head>

<body>
<div align="left">
  <table width="800" border="0">
    <tr>
      <td align="left">&nbsp;</td>
    </tr>
    <tr>
      <td align="left"><img src="http://www.sicoobplanaltocentral.coop.br/Boletim-Informativo/SVS/imgs/templatemo_logo.png" width="184" height="43" /></td>
    </tr>
    <tr>
      <td align="left">&nbsp;</td>
    </tr>
    <tr>
      <td align="left"><h2>Sistema de Vota&ccedil;&atilde;o do Sicoob - Instru&ccedil;&otilde;es Gerais:</h2></td>
    </tr>
    <tr>
      <td align="left"><hr /></td>
    </tr>
    <tr>
      <td align="justify"><p><strong>Prezado(a) '.$dados_nome.'<br />
        Seja bem vindo ao ambiente de vota&ccedil;&atilde;o do Sicoob CrediEmbrapa.</strong></p>
        <p>A elei&ccedil;&atilde;o se realizar&aacute; por meio eletr&ocirc;nico no per&iacute;odo compreendido entre a <strong>zero hora do dia 21/11/2016 e encerra-se &agrave;s 23:59:59 do dia 25/11/2016, hora de Bras&iacute;lia</strong> (<a href="http://187.32.157.11/SVS/4198/2016/edital2016.pdf" target="_blank">veja o edital</a>). Cada eleitor ap&oacute;s a confirma&ccedil;&atilde;o das informa&ccedil;&otilde;es contidas nesta tela visualizar&aacute; o(s) candidato(s) dispon&iacute;vel(is) em rela&ccedil;&atilde;o com a sua unidade para realizar o seu voto.</p>
        <p>A rela&ccedil;&atilde;o dos candidatos eleitos ficar&aacute; dispon&iacute;vel no site:&nbsp;<a href="http://www.sicoobcrediembrapa.com.br/" target="_blank">www.sicoobcrediembrapa.com.br</a>.        </p>
        <p>Cada eleitor poder&aacute; realizar o seu voto apenas 1(uma) vez, sem qualquer tipo altera&ccedil;&atilde;o posterior. Ap&oacute;s a confirma&ccedil;&atilde;o do voto o sistema&nbsp;<strong>desabilitar&aacute;</strong>&nbsp;o acesso do eleitor tornando imposs&iacute;vel a realiza&ccedil;&atilde;o do login.        </p>
        <p><strong> Verifique abaixo o seu nome, email,  CPF, data de nascimento e o seu n&uacute;cleo correspondente:</strong></p>
        <table width="100%" border="1" cellpadding="2" cellspacing="2">
          <tr>
            <td width="20%"><strong>Nome:</strong></td>
            <td width="80%">'.$dados_nome.'</td>
          </tr>
          <tr>
            <td><strong>E-mail:</strong></td>
            <td>'.$dados_mail.'</td>
          </tr>
          <tr>
            <td><strong>CPF:</strong></td>
            <td>'.$dados_cpf.'</td>
          </tr>
          <tr>
            <td><strong>Grupo Seccional:</strong></td>
            <td>'.$nome_unidade.'</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td align="left"><hr /></td>
    </tr>
    <tr>
      <td align="left"><h3>Anote seus dados para acesso ao sistema de vota&ccedil;&atilde;o:</h3></td>
    </tr>
    <tr>
      <td width="38%" bgcolor="#006666" align="center"><table width="100%" border="0" cellpadding="5" cellspacing="5">
        <tr>
          <td width="10%"><font color="white" size="+2">LOGIN:</font></td>
          <td width="90%"><font color="white" size="+2">'.$dados_cpf.'</font></td>
        </tr>
        <tr>
          <td><font color="white" size="+2">SENHA:</font></td>
          <td><font color="white" size="+2">'.$senha_mail.'</font></td>
        </tr>
        <tr>
          <td><font color="white" size="+2">ACESSO:</font></td>
          <td><a href="http://187.32.157.11/SVS/4198/2016/index.php"><img src="http://www.sicoobplanaltocentral.coop.br/Boletim-Informativo/SVS/imgs/button.png" width="323" height="38" border="0"></a></td>
        </tr>
      </table></td>
    </tr>
    <tr>
      <td align="justify">&nbsp;</td>
    </tr>
    <tr>
      <td align="justify"><p>Caso haja alguma incompatibilidade de dados,&nbsp;<strong>n&atilde;o realize seu voto&nbsp;</strong>e procure um canal de atendimento descrito logo abaixo.<br />
        Havendo a necessidade de algum tipo de altera&ccedil;&atilde;o e/ou maiores informa&ccedil;&otilde;es procure um dos nossos canais de atendimento abaixo:<br />
        - Telefone: (61) 2107-4000 ou 0800 724 4000<br />
        - Fax: (61) 2107-4047<br />
        - Email:&nbsp;<span id="cloak31731"><a href="mailto:relac@crediembrapa.com.br">relac@crediembrapa.com.br</a></span><br />
        - Chat online:&nbsp;<a href="http://www.chatcomercial.com.br/livehelp/www/visitor/?userId=&COMPANY_ID=3647&SITE_ID=4045&info[appName]=Google Chrome&info[appVersion]=5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36&info[platform]=Win32">clique aqui</a>.</p></td>
    </tr>
    <tr>
      <td align="justify"><hr /></td>
    </tr>
  </table>
</div>
</body>
</html>
';
?>

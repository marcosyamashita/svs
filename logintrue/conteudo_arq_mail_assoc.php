<?php
$nome_candidato_votado_page = $nome_candidato_votado;
$descricao_candidato_votado_page = $descricao_candidato_votado;

$nome_candidato_votado = utf8_decode($nome_candidato_votado);
$descricao_candidato_votado = utf8_decode($descricao_candidato_votado);

$data_hora_mail = date('d/m/Y G:i:s');
$conteudo_email = "
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>
<head>
<meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\" />
<title>Recibo de voto</title>
<style type='text/css'>
body,td,th {
	font-family: 'Lucida Sans Unicode', 'Lucida Grande', sans-serif;
	font-size: 11px;
	color: #333;
}
body {
	background-color: #D6D6D6;
	background-image: url(http://www.sicoobdf.coop.br/svs/images/templatemo_background.png);
}
</style>
</head>

<body>
<div align='left'>
  <table width='100%' border='0'>
    <tr>
      <td align='left'><img src='http://200.252.40.33/svs/images/templatemo_logo.png' width='184' height='43' /></td>
    </tr>
    <tr>
      <td align='center'><hr /></td>
    </tr>
    <tr>
      <td align='center'>&nbsp;</td>
    </tr>
    <tr>
      <td><h1><strong>Confirma&ccedil;&atilde;o de vota&ccedil;&atilde;o:</strong></h1></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><h3>Recebemos o seu voto com sucesso:<br />
        Seu voto foi registrado em $datahora.<br />
<br />
          Agradecemos a sua participa&ccedil;&atilde;o!
          <br />
          <br />
      </h3>
        <h3><hr />
          <img src='http://200.252.40.33/svs/images/img-aspas.png' width='32' height='29' />Democracia &eacute; oportunizar a todos o mesmo ponto de partida. Quanto ao ponto de chegada, depende de cada um. (<em>Fernando Sabino</em>)<br />
      </h3></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><hr /></td>
    </tr>
    <tr>
      <td><div id='templatemo_footer'><em>:: Vers??o 1.4 ::<br />Sistema de Vota????o do Sicoob<br />
          
          
      </div></td>
    </tr>
  </table>
</div>
</body>
</html>
";

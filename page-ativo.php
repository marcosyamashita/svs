<?php

$pagina_ativa = "
<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">
<html xmlns=\"http://www.w3.org/1999/xhtml\">
<head>
<meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\" />
<title>Sistema de Vota&ccedil;&atilde;o do Sicoob</title>

<link href=\"css/templatemo_style.css\" type=\"text/css\" rel=\"stylesheet\" />

<link rel=\"stylesheet\" href=\"css/slimbox2.css\" type=\"text/css\" media=\"screen\" />
<script src=\"scripts/validar.js\" type=\"text/javascript\"></script>
<script src=\"scripts/valida-cpf-cnpj.js\" type=\"text/javascript\"></script>
<script src=\"scripts/mascaraHellas.js\" type=\"text/javascript\"></script>
<style type=\"text/css\">
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
#divResultado{
font-size: 10px;
color: #033333;
margin-top: 5px;
}
</style>
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
<meta http-equiv='Content-Type' content='text/html; charset=utf-8' />
</head>
<body>
<div id=\"templatemo_header_wrapper\">
<div id=\"templatemo_header\">
<div id=\"site_title\"><a href=\"index.php\">Sistema de Vota&ccedil;&atilde;o do Sicoob<br />
</a>    </div>
</div>
</div>
<div id=\"templatemo_main_wrapper\">
<div id=\"templatemo_main\">
<div id=\"home\" class=\"section\">
<div align=\"center\">
<form action=\"login/logar.php\" method=\"post\" name=\"form1\" id=\"form1\" OnSubmit=\"JavaScript:return checkdata()\" >
<br />
<table width=\"400\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">
<tr>
<td><table width=\"100%\" border=\"0\">
<tr>
<td colspan=\"2\" align=\"left\"><p>Seja bem-vindo ao Sistema de Votação do Sicoob!
Informe abaixo o seu CPF, para identificarmos a sua seccional e os candidatos disponíveis nas Eleições de Delegados do Sicoob 2020-2023.
</p></td>
</tr>
<tr>
<td colspan=\"2\" align=\"left\"><hr /></td>
</tr>
<tr>
<td colspan=\"2\" align=\"left\">&nbsp;</td>
</tr>

<tr>
<td align=\"left\">CPF:</td>
<td align=\"right\">
<input autofocus name=\"cpf\" id=\"cpf\" type=\"text\" size=\"20\" maxlength=\"18\" class=\"svs_jtext\" onBlur=\"validaFormato(this);\" onkeypress=\"return (apenasNumeros(event))\"><br/>
</td>
</tr>
<tr>
<td><div id=\"divResultado\"></div></td>
<td align=\"right\"><input name=\"Acessar\" type=\"submit\" class=\"svs_button\" id=\"Avancar\" value=\"Avan&ccedil;ar\" /></td>
</tr>
<tr>
<td colspan=\"2\"><hr></td>
</tr>
<tr>
<td colspan=\"2\" align=center>STATUS DO SISTEMA: <font color=\"#0000CC\"><strong>ATIVO</strong></font></td>
</tr>
<tr>
<td colspan=\"2\"><hr></td>
</tr>
<tr>
<td colspan=\"2\" align=center><p><br />
<p>Este sistema eletrônico estará disponível para a votação no período compreendido 
entre às 18h do dia 09/12/2019 às 23h59 do dia 13/12/2019, no horário de Brasília.<br/></p>
<p><strong>Canais de atendimento:<br />
</strong>Whatsapp: <a href=\"//api.whatsapp.com/send?phone=5561999842551\" target=\"_blank\">(61) 99984-2551</a><br />



Telefones: <a href=\"#\">0800 724 4000 ou (61) 2107-4000</a><br />

E-mail:
<a href=\"mailto:eleicoes@crediembrapa.com.br\">eleicoes@crediembrapa.com.br</a><br />
</p></td>
</tr>

         


</table></td>
</tr>
</table>
</form>
</div>
</div>
</div>
</div>

<div id=\"templatemo_footer_wrapper\">
<div id=\"templatemo_footer\">
<p>:: Vers&atilde;o 1.7 ::<br />Copyright Sicoob Planalto Central &copy;<br />Central das Cooperativas de Economia e Cr&eacute;dito do Planalto Central Ltda.<br />

</p>
</div>
</div>

</body>
</html>
";

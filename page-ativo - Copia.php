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
                              <td colspan=\"2\" align=\"left\"><h3>Acessar o Sistema:</h3></td>
                            </tr>
                            <tr>
                              <td colspan=\"2\" align=\"left\"><hr /></td>
                            </tr>
                            <tr>
                              <td colspan=\"2\" align=\"left\">&nbsp;</td>
                            </tr>

                            <tr>
                              <td align=\"left\">CPF/CNPJ:</td>
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
                              <td colspan=\"2\" align=center><p><strong>Elei&ccedil;&atilde;o para delegados do Sicoob CrediEmbrapa 2018.</strong><br />
                              Elei&ccedil;&atilde;o por meio eletr&ocirc;nico no per&iacute;odo compreendido entre a zero hora do dia 19 de novembro e encerra-se &agrave;s 24 horas do dia 27 de novembro de 2018 (<font color='#D91013'><strong>prorrogado</strong></font>), hora de Bras&iacute;lia.</p>
                                <p><strong>Canais de atendimento:<br />
                                </strong>Whatsapp: <a href=\"Arquivos/vcard_sicoob_crediembrapa.vcf\" target=\"_blank\">(61) 99984-2551</a><br />
                                Telefone 1:
                                <a href=\"tel:+5508007244000?\">0800 724 4000</a><br />
                                Telefone 2: <a href=\"tel:+556121074000?\">(61) 2107-4000</a><br />
                                Chat Online no site: <a href=\"http://www.sicoobcrediembrapa.com.br\" target=\"_blank\">acesse aqui</a>. <br />
                                E-mail:
                                <a href=\"mailto:agenciavirtual@sicoobcrediembrapa.com.br\">agenciavirtual@sicoobcrediembrapa.com.br</a><br />
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
    	<p>:: Vers&atilde;o 1.6 ::<br />Copyright Sicoob Planalto Central &copy;<br />Central das Cooperativas de Economia e Cr&eacute;dito do Planalto Central Ltda.<br />

</p>
    </div>
</div>

</body>
</html>
";

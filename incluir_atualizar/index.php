<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Vota&ccedil;&atilde;o do Sicoob</title>

<link href="../css/templatemo_style.css" type="text/css" rel="stylesheet" />

<link rel="stylesheet" href="../css/slimbox2.css" type="text/css" media="screen" />
<script src="../scripts/validar.js" type="text/javascript"></script>
<script src="../scripts/valida-cpf-cnpj.js" type="text/javascript"></script>
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
					<form action="inclui_atualiza_exe.php" method="post" name="form1" id="form1" OnSubmit="JavaScript:return checkdatainclusao()" >
                      <br />
                      <table width="500" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="100%" border="0">
                            <tr>
                              <td colspan="2" align="left"><h3><strong>Inclus&atilde;o ou atualiza&ccedil;&atilde;o de eleitor:</strong></h3></td>
                            </tr>
                            <tr>
                              <td colspan="2" align="left"><hr /></td>
                            </tr>
                            <tr>
                              <td colspan="2" align="justify"><strong>Aten&ccedil;&atilde;o:</strong> Antes de incluir ou atualizar um eleitor verifique se o mesmo pertence a sua cooperativa e se ele pode participar da elei&ccedil;&atilde;o coforme o edital que delimita as regras para este processo eleitoral.</td>
                            </tr>
                            <tr>
                              <td colspan="2" align="left"><hr></td>
                            </tr>
                            <tr>
                              <td colspan="2" align="left"><div align="right" id="divResultado"></div></td>
                            </tr>
                            <tr>
                              <td width="61%" align="left">CPF:</td>
                              <td width="39%" align="right"><input autofocus name="cpf" id="cpf" type="text" size="20" maxlength="18" class="svs_jtext" onBlur="validaFormato(this);" onkeypress="return (apenasNumeros(event))"></td>
                            </tr>
                            <tr>
                              <td align="left">Nome Completo<br />
                              (PF ou PJ):</td>
                              <td align="right"><input name="nome" type="text" class="svs_jtext" id="nome" size="20" maxlength="100" /></td>
                            </tr>
                            <tr>
                              <td align="left">Valida 1<br />
                              (data de nascimento)</td>
                              <td align="right"><input name="user_valida1" type="text" class="svs_jtext" id="user_valida1" size="20" maxlength="60" onkeyup="mascaraHellas(this.value, this.id, '##/##/####', event)" onkeypress="return (apenasNumeros(event))"  /></td>
                            </tr>
                            <tr>
                              <td align="left">Valida 2<br />
                              (RG-PF)</td>
                              <td align="right"><label for="cpf">
                                <input name="user_valida2" type="text" class="svs_jtext" id="user_valida2" size="20" maxlength="20" onkeypress="return (apenasNumeros(event))" />
                              </label></td>
                            </tr>
                            <tr>
                              <td>Valida 3<br />
                              (conta corrente PF ou PJ)</td>
                              <td align="right"><input name="user_valida3" type="text" class="svs_jtext" id="user_valida3" size="20" maxlength="20" onkeypress="return (apenasNumeros(event))" /></td>
                            </tr>
                            <tr>
                              <td>Unidade:</td>
                              <td align="right"><select name="unidade" class="svs_jtext" id="unidade" style="width: 241px">
                                <option value="0">Selecione a Unidade</option>

                         <?php
                            ini_set('display_errors',1);
                            ini_set('display_startup_erros',1);
                            error_reporting(E_ALL);

                            include("../conexao.php");

                              $cont_tb_cod_unidade = "select COUNT(*) from tb_cod_unidade";
                              $querycount_tb_cod_unidade = mysqli_query($link, $cont_tb_cod_unidade) or die(mysqli_error($link));
                                 while($row = mysqli_fetch_array($querycount_tb_cod_unidade)){
                                 $val_count_unid = $row["COUNT(*)"];
                              }

                            for ($x=1; $x <= $val_count_unid; $x++){
                               $select_Unids = "select nome_unidade,codigo_unidade from tb_cod_unidade where id = $x and ativo = '1';";
                               $query_select_Unids = mysqli_query($link, $select_Unids) or die(mysqli_error($link));
                               while($row = mysqli_fetch_array($query_select_Unids)){
                                  $nomeUnid = $row["nome_unidade"];
                                  $valor_codUnid = $row["codigo_unidade"];
                                  $existe = 1; // esta variavel controla a exibi??????o de permiss???es.
                               }
                               if ($existe == 1){ // se for habilitado vai exibir o nome da coop
                                  echo "<option value='$valor_codUnid'>$nomeUnid</option>";
                               }
                            $existe = 0; // reinicia para o proximo loop
                            }

                         ?>

                              </select></td>
                            </tr>
                            <tr>
                              <td>&nbsp;</td>
                              <td align="right">&nbsp;</td>
                            </tr>
                            <tr>
                              <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                              <td colspan="2" align="center"><input name="Incluir/Atualizar eleitorCadastrar" type="submit" class="svs_button" id="Incluir/Atualizar" value="Incluir/Atualizar" /></td>
                            </tr>
                            <tr>
                              <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                              <td colspan="2"><hr /></td>
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
    	<p>Copyright Sicoob Planalto Central.</p>
</div>
</div>

</body>
</html>

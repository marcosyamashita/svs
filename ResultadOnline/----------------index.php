<?php
ini_set('display_errors',1);
ini_set('display_startup_erros',1);
error_reporting(E_ALL);

include("../conexao.php");

  $cont = "select COUNT(*) from tb_candidatos where ativo != 0";
  $querycount = mysqli_query($link, $cont) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($querycount)){
        $total_candidatos = $row["COUNT(*)"]; // final do bd
     }

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="refresh" content="20;URL=index.php">
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
                      <table width="98%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="98%" border="0">
                            <tr>
                              <td align="left"><h3><strong>Resultado Online</strong>:</h3></td>
                            </tr>
                            <tr>
                              <td align="left"><hr /></td>
                            </tr>
                            <tr>
                              <td align="left">&nbsp;</td>
                            </tr>
                            <tr>
                              <td><table width="100%" border="1" cellspacing="2" cellpadding="2">
                                <tbody>
                                  <tr>
                                    <td><strong>UNIDADE</strong></td>
                                    <td><strong>NOME DO CANDIDATO</strong></td>
                                    <td><strong>VOTOS RECEBIDOS</strong></td>
                                  </tr>
                                  <?php

                                    for($a = 1; $a <= $total_candidatos; $a++){
                                       $dados = "select candidato_nome,candidato_unidade,votos_recebidos from tb_candidatos where ativo = '1' and id='$a';";
                                       $query_dados = mysqli_query($link, $dados) or die(mysqli_error($link));
                                          while($row = mysqli_fetch_array($query_dados)){
                                             $cand_nome = $row["candidato_nome"];
                                             $cand_unidade = $row["candidato_unidade"];
                                             $cand_votosrecebidos = $row["votos_recebidos"];
                                             $stotal_votos[$a] = $cand_votosrecebidos;
                                          }

                                       $nome_unidade = "select nome_unidade from tb_cod_unidade where codigo_unidade='$cand_unidade' and ativo = '1';";
                                       $query_nome_unidade = mysqli_query($link, $nome_unidade) or die(mysqli_error($link));
                                          while($row = mysqli_fetch_array($query_nome_unidade)){
                                             $unid_nome = $row["nome_unidade"];
                                          }
                                       if($cand_unidade != "0"){
                                       echo " <tr>
                                              <td>$unid_nome</td>
                                              <td>$cand_nome</td>
                                              <td>$cand_votosrecebidos</td>
                                              </tr>";
                                       }else{
                                       echo " <tr>
                                              <td>ALL</td>
                                              <td>$cand_nome</td>
                                              <td>$cand_votosrecebidos</td>
                                              </tr>";
                                       }
                                       }
                                  ?>
                                              <tr>
                                              <td colspan='3'><STRONG><font color='#900'>TOTAL DE VOTOS: <?php echo array_sum($stotal_votos);  ?></font></STRONG></td>
                                              </tr>

                                </tbody>
                              </table></td>
                            </tr>
                            <tr>
                              <td><em>Esta p&aacute;gina recarrega automaticamente em 20 segundos.</em></td>
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
    	<p>Copyright Sicoob Planalto Central em Parceria com o Coopjus.</p>
</div>
</div>

</body>
</html>

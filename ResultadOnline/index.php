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

      $conte = "select COUNT(*) from `tb_auditoria`";
      $queryconte = mysqli_query($link, $conte) or die(mysqli_error($link));
      while($row = mysqli_fetch_array($queryconte)){
        $total_votou = $row["COUNT(*)"]; // final do bd
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
                           <td align='center'><H4><B>$cand_votosrecebidos</B></H4></td>
                           </tr>";
                         }


                                       /*
                                       else{
                                       echo " <tr>
                                              <td>VOTO NULO - GERAL</td>
                                              <td>$cand_nome</td>
                                              <td align='center'><H4><B>$cand_votosrecebidos</B></H4></td>
                                              </tr>";
                                       }
                                       */
                                     }

################################################################################################################################################################################################################################################################################################################################
                                     $unidade_seccional_1 = "AC - Embrapa Acre";
                                     $unidade_seccional_2 = "AM - Embrapa Amazônia Ocidental";
                                     $unidade_seccional_3 = "AP - Embrapa Amapá";
                                     $unidade_seccional_4 = "CE - Embrapa Agroindústria Tropical";
                                     $unidade_seccional_5 = "MG - Embrapa Milho e Sorgo";
                                     $unidade_seccional_6 = "PB - Embrapa Algodão";
                                     $unidade_seccional_7 = "PE - Embrapa Semiárido";
                                     $unidade_seccional_8 = "PI - Embrapa Meio-Norte";
                                     $unidade_seccional_9 = "RO - Embrapa Rondônia";
                                     $unidade_seccional_10 = "RR - Embrapa Roraima";
                                     $unidade_seccional_11 = "RS - Embrapa Clima Temperado";
                                     $unidade_seccional_12 =  "SP - Embrapa Meio Ambiente";
################################################################################################################################################################
                                     for($a = 1; $a <= $total_candidatos; $a++){
                                       $dados = "select candidato_nome,candidato_unidade,votos_recebidos from tb_candidatos where ativo = '1' and id='$a';";
                                       $query_dados = mysqli_query($link, $dados) or die(mysqli_error($link));
                                       while($row = mysqli_fetch_array($query_dados)){
                                            # $cand_nome = $row["candidato_nome"];
                                         $cand_unidade = $row["candidato_unidade"];
                                         $cand_votosrecebidos = $row["votos_recebidos"];
                                         $stotal_votos[$a] = $cand_votosrecebidos;
                                       }

                                       $nome_unidade = "select nome_unidade from tb_cod_unidade where codigo_unidade='$cand_unidade' and ativo = '1';";
                                       $query_nome_unidade = mysqli_query($link, $nome_unidade) or die(mysqli_error($link));
                                       while($row = mysqli_fetch_array($query_nome_unidade)){
                                         $unid_nome = $row["nome_unidade"];
                                       }
########################################################################################################################################################################################################################################################################################################################################################################

                                       if ($a == 1) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_1';";
                                      } else if ($a == 2) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_2';";
                                            # code...
                                      } else if ($a == 3) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_3';";
                                            # code...
                                      } else if ($a == 4) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_4';";
                                            # code...
                                      } else if ($a == 5) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_5';";
                                            # code...
                                      } else if ($a == 6) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_6';";
                                            # code...
                                      } else if ($a == 7) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_7';";
                                            # code...
                                      } else if ($a == 8) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_8';";
                                            # code...
                                      } else if ($a == 9) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_9';";
                                            # code...
                                      } else if ($a == 10) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_10';";
                                            # code...
                                      } else if ($a == 11) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_11';";
                                            # code...
                                      } else if ($a == 12) {
                                        $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = '$unidade_seccional_12';";
                                            # code...
                                      }






                                      $query_teste = mysqli_query($link, $teste) or die(mysqli_error($link));
                                      while ($row = mysqli_fetch_array($query_teste)) {
                                        $resultado_nulo = $row["COUNT(unidade_eleitor)"];
                                        
                                            # code...
                                      }  
####################################################################################################################################################################################




                                      if($cand_unidade != "0"){
                                       echo " <tr>
                                       <td>$unid_nome</td>
                                       <td><b>VOTOS NULOS</b></td>
                                       <td align='center'><H4><B>$resultado_nulo</B></H4></td>
                                       </tr>";
                                     }





                                   }





####################################################################################################################################################################################

######################################################################ESTE CÓDIGO É APENAS PARA TESTE##########################################################################################################################################################################################################################################################
#     $teste = "select COUNT(unidade_eleitor) from tb_auditoria where nome_candidato_voto = 13 and unidade_eleitor = 'SP - Embrapa Meio Ambiente';";
#    $query_teste = mysqli_query($link, $teste) or die(mysqli_error($link));
#     while ($row = mysqli_fetch_array($query_teste)) {
#      $resultado_nulo = $row["COUNT(unidade_eleitor)"];
#      echo "$resultado_nulo";
#       # code...
#     }  
####################################################################################################################################################################################








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
                 <p>Copyright Sicoob Planalto Central</p>
               </div>
             </div>

           </body>
           </html>

<?php

$datahora = time();
//echo date('r', $datahora);

//https://www.epochconverter.com/
$datahora_ini = 1604596828; //09/12/2019  21h 00min 00s est� com o hor�rio internacional. Ir� abrir o sistema �s 18h 00min 00s.
//echo date('r', $datahora_ini);die;

$datahora_fim = 1604683228; //13/12/2019 02h 59min 59s est� com o hor�rio internacional. Ir� fechar o sistema �s 23h 59min 59s.
//echo date('r', $datahora_fim);die;

 // LIBERACOES E FECHAMENTOS - SISTEMA SVS
 if($datahora > $datahora_ini && $datahora < $datahora_fim){
    require("page-ativo.php");
    echo $pagina_ativa;
    die;
 }else{
    require("page-desativado.php");
    echo $pagina_inativa;
    die;
 }

?>

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
extract($_POST); // Extrai os dados do form
$validou = 0;

if($user_valida1 == "" || $user_valida2 == "" || $user_valida3 == ""){
   header('Location: validacao_error.php');die;
}else{

    //checar dados de validacao:
    $pegavalidacoes = "select valida1, valida2, valida3 from tb_login where cpf = '$cpf_associado';";
    $query_pegavalidacoes = mysqli_query($link, $pegavalidacoes) or die(mysqli_error($link));
    while($row = mysqli_fetch_array($query_pegavalidacoes)){
       $db_valida1 = $row["valida1"];
       $db_valida2 = $row["valida2"];
       $db_valida3 = $row["valida3"];
    }//echo $db_valida1.'|'.$db_valida2.'|'.$db_valida3;die;

  if($db_valida1 == $user_valida1 && $db_valida2 == $user_valida2 && $db_valida3 == $user_valida3){
     $validou = 1;
  }

  if($validou == 0){
     header('Location: validacao_error.php');die;
  }

}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sistema de Vota&ccedil;&atilde;o do Sicoob</title>

<link href="../css/templatemo_style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="style.css"/>
	<style type="text/css">
		label {margin-right:20px;}
	</style>

<script src="../scripts/validar.js" type="text/javascript"></script>
<script src="../scripts/mascaraHellas.js" type="text/javascript"></script>
<script type="text/javascript" src="jquery/jquery-1.4.2.js"></script>

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
</style>
</head>


<body onload="checkJS()">


<div id="jsDisabled">
<font color="#FF0000"><strong> </strong></font>
<table width="100%" border="0">
  <tr>
    <td width="99%"><font color="#FF0000" size="2"><strong>VALIDA&Ccedil;&Atilde;O:</strong> Seu navegador n&atilde;o suporta JavaScript ou ele n&atilde;o est&aacute; ativado e este recurso &eacute; indispens&aacute;vel para este site.      Para habilitar este recurso no seu navegador &eacute; simples, segue uma p&aacute;gina de ajuda: <a href="http://www.enable-javascript.com/pt/" target="_blank">Clique aqui</a>.    </font></td>
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
					<form action="executa_voto.php" method="post" name="form1" id="form1" >
                      <br />
                      <table width="100%" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><table width="95%" border="0" align="center">
                            <tr>
                              <td align="left"><h3>Dados confirmados - Realize o seu voto:</h3>
                              <em>
                              Candidatos organizados por chapa.<br>
                              </em>
                              </td>
                            </tr>
                            <tr>
                              <td align="left">&nbsp;</td>
                            </tr>

                            <tr>

                              <td align="left"><table width="100%" border="0"><hr size='10' color='#00a091'><br>

<?php
// fazer aqui o codigo para mostrar os candidatos...



  $cont_geral = "select COUNT(*) from tb_candidatos;";
  $querycount_geral = mysqli_query($link, $cont_geral) or die(mysqli_error($link));
  while($row = mysqli_fetch_array($querycount_geral)){
     $count_geral = $row["COUNT(*)"];
  }

  $cont = "select COUNT(*) from tb_candidatos where candidato_unidade = '$unidade_associado';";
  $querycount = mysqli_query($link, $cont) or die(mysqli_error($link));
  while($row = mysqli_fetch_array($querycount)){
     $count_candidatos = $row["COUNT(*)"];
  }
//echo $count_candidatos; die;
//echo $unidade_associado;die;

$v=1;
for($i=1;$i<=$count_geral;$i++){
     $sel_cand_unid = "select id,candidato_nome,candidato_descricao,candidato_unidade from tb_candidatos where id = $i and candidato_unidade = '$unidade_associado' and ativo = 1;";
     $query_sel_cand_unid = mysqli_query($link, $sel_cand_unid) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($query_sel_cand_unid)){
        $candidato_id = $row["id"];
        $candidato_nome = $row["candidato_nome"];
        $candidato_descricao = $row["candidato_descricao"];
        $candidato_unidade = $row["candidato_unidade"];

        if ($candidato_nome != ""){
           $vetor_cand_unid[$v] = $candidato_nome.'#'.$candidato_descricao.'#'.$candidato_id; // vetor com as informa��es unidade do associado.
           //echo $vetor_cand_unid[$v].'<br><br><br>';
           $v++;
        }

     }

}//die;
//sort($vetor_cand_unid); // ordenando o vetor alfabeticamente.
$loops = sizeof ($vetor_cand_unid);

$s=1;
$r=0;



for ($a=1;$a<=$loops;$a++){
$separa = explode("#", $vetor_cand_unid[$s]);
$nome_candidato = $separa[0];
$descricao_candidato = $separa[1];
$id_candidato = $separa[2];
$s++;
//$nome_candidato = utf8_decode($nome_candidato);
//$nome_candidato = htmlspecialchars($nome_candidato);

/*
     if($id_candidato == 1 || $id_candidato == 27 || $id_candidato == 66 || $id_candidato == 70){
        if($id_candidato == 1){
           echo "<tr><td colspan='2'><hr size='10' color='#033333'><br><h1><b><font color='#000000'>1&ordf; Regi&atilde;o: Distrito Federal e Tocantins</font></b></h1></td></tr>";
        }
        if($id_candidato == 27){
           echo "<tr><td colspan='2'><hr size='10' color='#033333'><br><h1><b><font color='#000000'>2&ordf; Regi&atilde;o: Par&aacute; e Amap&aacute;</font></b></h1></td></tr>";
        }
        if($id_candidato == 66){
           echo "<tr><td colspan='2'><hr size='10' color='#033333'><br><h1><b><font color='#000000'>3&ordf; Regi&atilde;o: Santa Catarina</font></b></h1></td></tr>";
        }
        if($id_candidato == 70){
           echo "<tr><td colspan='2'><hr size='10' color='#033333'><br><h1><b><font color='#000000'>4&ordf; Regi&atilde;o: Rio Grande do Sul</font></b></h1></td></tr>";
        }

     }
*/

     echo "
     <tr>
     <td width='16%' rowspan='3' align='center'><img src=\"../images/fotos-candidatos/$id_candidato.jpg\"></td>
     <td><h5>
     <input type='radio' name='candidato' class='css-checkbox' id='radio$r' value='$id_candidato' />
     <label for='radio$r' class='css-label'><font color='#033333' size='+1' >$nome_candidato</font></label>
     </h5>
     </td>
     </tr>
     <tr>
     <td></td>
     </tr>
     <tr>
     <td <p align='justify'></p>$descricao_candidato</td>
     </tr>
     <tr>
     <td colspan='2' align='center'>&nbsp;</td>
     </tr>
     <tr>
     <td colspan='2' align='center'><hr></td>
     </tr>
     ";
     $r++;
}//fecha for
$r=0;
// exibe a linha de voto nulo:
     $sel_nulo = "select id,candidato_nome,candidato_descricao,candidato_unidade from tb_candidatos where candidato_unidade = 0 and ativo = 1;";
     $query_sel_nulo = mysqli_query($link, $sel_nulo) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($query_sel_nulo)){
        $candidato_id = $row["id"];
        $candidato_nome = $row["candidato_nome"];
        $candidato_descricao = $row["candidato_descricao"];
        $candidato_unidade = $row["candidato_unidade"];
        }


echo "
     <tr><td colspan='2'><hr size='10' color='#033333'><br><h1><font color='#000000'><b>Anular voto:</b></font></h1></td></tr>
     <tr>
     <td width='16%' rowspan='3' align='center'><img src=\"../images/fotos-candidatos/nulo.jpg\"></td>
     <td><h3>
     <input name='candidato' type='radio' class='css-checkbox' id='radionulo' value='$candidato_id' />
     <label for='radionulo' class='css-label'><font color='#666666' size='+1' >$candidato_nome</font></label>
     </h3>
     </td>
     </tr>
     <tr>
     <td><h5><em>Selecione esta op&ccedil;&atilde;o para anular o seu voto.</em></h5></td>
     </tr>
     <tr>
     <td></td>
     </tr>
     <tr>
     <td colspan='2' align='center'>&nbsp;</td>
     </tr>
     <tr>
     <td colspan='2' align='center'><hr size='10' color='#033333'></td>
     </tr>
";

?>
                              </table></td>
                            </tr>
                            <tr>
                              <td align="left">&nbsp;</td>
                            </tr>
                              <td align="center">
                              <input type="image" src="../images/confirma_voto.png" width="530" height="62" onclick="JavaScript:return validaRadios();">
                            </tr>
                          </table></td>
                        </tr>
                      </table>
                    </form>
                    </div>
            </div>
  </div>
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	<p>:: Vers&atilde;o 1.6 ::<br />
    	  Sistema de Vota&ccedil;&atilde;o do Sicoob<br />

</p>
</div>
</div>
</div>
</body>
</html>

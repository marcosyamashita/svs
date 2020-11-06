<?php
include("../conexao.php");
include("../login/restrito.php");
$nome_associado = $_SESSION['nome'];
$cpf_associado = $_SESSION['cpf'];
$unidade_associado = $_SESSION['unidade'];
$nome_unidade_associado = $_SESSION['nome_unidade'];

extract($_POST); // Extrai os dados do form
//echo $candidato;die;
$id_candidato_atual = $candidato;

// verificar se dados de voto estao corretos
if ($candidato == ""){
	$mensagem = "ERRO: Candidato sem ID determinada para vota&ccedil;&atilde;o.";
}else{
// verificar se o usuÃ¡rio atual jÃ¡ votou:
	$user_ativo = "select ativo from tb_login where cpf = $cpf_associado;";
	$query_verif_user_ativo = mysqli_query($link, $user_ativo) or die(mysqli_error($link));
	while($row = mysqli_fetch_array($query_verif_user_ativo)){
         $user_ativo = $row["ativo"]; // pegou qtd de votos recebidos realtime
       }//echo $votos_atualmente;die;

       if ($user_ativo == 0 || $user_ativo == ""){
       	$mensagem = "
       	<table width='100%' border='0' cellpadding='2' cellspacing='2'>
       	<tr>
       	<td colspan='2'> <h3>Voto realizado anteriormente</h3></td>
       	</tr>
       	<tr>
       	<td width='15%' align='left'><img src='../images/img-erro.png' width='100' height='100'></td>
       	<td width='85%'>
       	<p>      1. Voto registrado anteriormente.<br />
       	2. S&oacute; &eacute; poss&iacute;vel realizar 1 (um) voto por CPF.<br>
       	3. Em caso de dúvidas entre em contato conosco por um de nossos c<span style='padding-top: 10px; padding-bottom: 10px'>anais de atendimento.</span><br>
       	<br>
       	<em>Agradecemos a sua participa&ccedil;&atilde;o.</em></p></td>
       	</tr>
       	<tr>
       	<td colspan='2'><a href='../login/deslogar.php'><img src='../images/retorno-svs.jpg' width='763' height='60' /></a></td>
       	</tr>
       	</table>
       	";

       }else{

// inserir na tb_candidatos o voto:
       	$votos_atuais = "select votos_recebidos from tb_candidatos where id = $id_candidato_atual;";
       	$query_recupera_votos_atuais = mysqli_query($link, $votos_atuais) or die(mysqli_error($link));
       	while($row = mysqli_fetch_array($query_recupera_votos_atuais)){
         $votos_atualmente = $row["votos_recebidos"]; // pegou qtd de votos recebidos realtime
       }//echo $votos_atualmente;die;

   $votos_atualmente = $votos_atualmente + 1; // +1 voto para o candidato escolhido

   $executa_votacao = "UPDATE tb_candidatos SET votos_recebidos = '$votos_atualmente' WHERE id = $id_candidato_atual and ativo = 1;";
   $sql_executa_votacao = mysqli_query($link, $executa_votacao) or die(mysqli_error($link));

// inserir na tabela auditoria os votos:

   $data = date ('Y-m-d');
   $hora = date('H:i:s');
   $datahora = $data.' '.$hora;
   $data_hora_mail = date ('d/m/Y G:i:s');

   $server_ip_maq = $_SERVER["REMOTE_ADDR"];

   $dados_candidato = "select candidato_nome,candidato_descricao from tb_candidatos where id = $id_candidato_atual;";
   $query_recupera_dados_candidato = mysqli_query($link, $dados_candidato) or die(mysqli_error($link));
   while($row = mysqli_fetch_array($query_recupera_dados_candidato)){
         $nome_candidato_votado = $row["candidato_nome"]; // proteje voto repetido e atualizacoes de tela.
         $descricao_candidato_votado = $row["candidato_descricao"]; // pega descricao
     }

     $executa_auditoria = mysqli_query($link, "insert into tb_auditoria (`nome_eleitor`, `unidade_eleitor`, `nome_candidato_voto`, `datahora_bsb_voto`, `pc_ip_voto`) values('$nome_associado','$nome_unidade_associado', '$nome_candidato_votado', '$datahora','$server_ip_maq')");

// desativar acesso do usuÃ¡rio
     $desativa_user_votos = "UPDATE tb_login SET ativo = '0' WHERE cpf = '$cpf_associado';";
     $desativacao = mysqli_query($link, $desativa_user_votos) or die(mysqli_error($link));

// enviar email de confirmaÃ§Ã£o


     $mensagem = "
     <table width='100%' border='0' cellpadding='2' cellspacing='2'>
     <tr>
     <td colspan='2'><h3>Voto realizado com sucesso!</h3></td>
     </tr>
     <tr>
     <td width='8%' align='left'><img src='../images/img-ok.png' width='100' height='100'></td>
     <td width='92%'>
     <table width='100%' border='0' cellpadding='2' cellspacing='2'>
     <tr>
     <td width='15%'><strong>Nome:</strong></td>
     <td width='85%'>$nome_associado</td>
     </tr>
     <tr>
     <td><strong>Data/Hora:</strong></td>
     <td>$data_hora_mail </td>
     </tr>
     <tr>
     <td><strong>Identidade-PC:</strong></td>
     <td>$server_ip_maq</td>
     </tr>
     <tr>
     <td colspan='2'><br><em>Agradecemos a sua participa&ccedil;&atilde;o.</em></td>
     </tr>
     </table></td>
     </tr>
     <tr>
     <td colspan='2'><a href='../login/deslogar.php'><img src='../images/retorno-svs.jpg' /></a></td>
     </tr>
     </table>
     ";

}//fecha else
}//fecha else

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
<body>
	<div id="templatemo_header_wrapper">
		<div id="templatemo_header">
			<div id="site_title"><a href="#">Sistema de Vota&ccedil;&atilde;o do Sicoob<br />
			</a></div>
		</div>
	</div>
	<div align="center">
		<div align="center"><font color="#0000FF" size="2"><strong>Bem vindo sr(a) <?php echo $nome_associado.' | '.$email_associado.' | '.$cpf_associado.' | <a href="../login/deslogar.php">Sair</a>'; ?></strong></font></div>
	</div>
	<div id="templatemo_main_wrapper">
		<div id="templatemo_main">
			<div id="home" class="section">
				<div align="center">
					<form action="escolha_votacao.php" method="post" name="form1" id="form1" >
						<br />
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td><table width="95%" border="0" align="center">
									<tr>
										<td align="left"><h3>Seu voto foi realizado e confirmado com sucesso!</h3>
											<h4>Agradecemos a sua participação, pois ela é muito importante para garantir a representação democrática na governança e desenvolvimento da nossa Cooperativa.</h4>
										</td>
									</tr>
									<tr>
										<td align="left"><hr /></td>
									</tr>
									<tr>
										<td align="left"><p><?php echo $mensagem; ?> </p></td>
									</tr>
									<tr>
										<td><hr></td>
									</tr>
									<tr>
										<td align="center"><strong><br /></strong><strong>Canais de atendimento:<br />
										</strong>Whatsapp: <a href="https://api.whatsapp.com/send?phone=5561999842551" target="_blank"> (61) 99984-2551</a><br />
										Telefone 1: <a href="tel:08007244000">0800 724 4000</a><br />
										Telefone 2: <a href="tel:06121074000">(61) 2107-4000</a><br />
										E-mail:
										<a href=mailto:eleicoes@crediembrapa.com.br>eleicoes@crediembrapa.com.br</a><br />
									</p></td>



									
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
		<p>:: Vers&atilde;o 1.7 ::<br />
			Sistema de Vota&ccedil;&atilde;o do Sicoob<br />

		</p>
	</div>
</div>

</body>
</html>

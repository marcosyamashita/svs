<?php
error_reporting (E_ALL & ~ E_NOTICE & ~ E_DEPRECATED);
//date_default_timezone_set("America/Sao_Paulo");
header('Content-Type: text/html; charset=utf-8');
	//Insira as credenciais do banco de dados
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$banco = "svs_4198";
	$link = mysqli_connect($servidor, $usuario, $senha, $banco);

	// selecionando o banco
	/*mysqli_select_db($banco) or die("N�o foi poss�vel selecionar o banco de dados");*/

	if (!$link) {
		die('Connect Error (' . mysqli_connect_errno() . ') '
			. mysqli_connect_error());

	}

	//echo 'Sucess...' . mysqli_get_host_info($link). "\n";


mysqli_query($link,"SET NAMES 'utf8'");
mysqli_query($link,'SET character_set_connection=utf8');
mysqli_query($link,'SET character_set_client=utf8');
mysqli_query($link,'SET character_set_results=utf8');

?>

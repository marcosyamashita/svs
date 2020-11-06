<?php
ini_set ( "memory_limit", "128M");
include("../../conexao.php");


  $cont = "select COUNT(*) from tb_candidatos";
  $querycount = mysqli_query($link, $cont) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($querycount)){
        $total_cadastrados = $row["COUNT(*)"]; // final do bd
     }
     

if($total_cadastrados > 0){
echo $log = "<br/>A base de dados possui registros!<br />Execute a limpeza do banco antes de gerar um novo banco.";
}
else{

$arq = fopen( "candidatos.txt", "r" ) or die( "ERRO, avise o webmaster, que falta um arquivo no servidor"); // abrindo o arquivo

while(!feof($arq)){ // aqui o vetor captura cada linha do arquivo e tranforma numa posi��o do vetor
$linha[] = fgets($arq);} // cria um array com o conteudo do arquivo; at� aqui voc� tem o vetor com cada linha ("Linha01","Linha02", ...)

//separando cada parte entre ';' num vetor e inserindo no BD.
for($c = 0; $c < sizeof($linha); $c++){
  $coluna = explode(";",$linha[$c]); //quebra a linha aonde achar o ';' e abaixo joga a parte numa coluna do bd

  $sql1 = "INSERT INTO `tb_candidatos` (`id`,`candidato_nome`,`candidato_descricao`,`candidato_unidade`,`votos_recebidos`,`ativo`)
  VALUES ('".$coluna[0]."', '".$coluna[1]."', '".$coluna[2]."', '".$coluna[3]."', '".$coluna[4]."', '".$coluna[5]."')";
  $result1 = mysqli_query($link, $sql1) or die(mysqli_error($link));
}

  $cont = "select COUNT(*) from tb_candidatos";
  $querycount = mysqli_query($link, $cont) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($querycount)){
        $total_cadastrados = $row["COUNT(*)"]; // final do bd
     }

  $cont = "select COUNT(*) from tb_candidatos where ativo = 0";
  $querycount = mysqli_query($link, $cont) or die(mysqli_error($link));
     while($row = mysqli_fetch_array($querycount)){
        $total_cancelados = $row["COUNT(*)"]; // final do bd
     }

  echo $log = "<br />O banco de dados foi criado com sucesso.<br />Total de cadastros: ".$total_cadastrados."<br />Total cancelados: ".$total_cancelados;

}
?>

<?php
@session_start();
if (isset($_SESSION['nome']) && isset($_SESSION['cpf']) && isset($_SESSION['valida1']) && isset($_SESSION['valida2']) && isset($_SESSION['valida3'])
    && isset($_SESSION['unidade']) && isset($_SESSION['nome_unidade'])){
   $nome_associado = $_SESSION['nome'];
   $cpf_associado = $_SESSION['cpf'];
   $valida1 = $_SESSION['valida1'];
   $valida2 = $_SESSION['valida2'];
   $valida3 = $_SESSION['valida3'];
   $unidade_associado = $_SESSION['unidade'];
   $nome_unidade_associado = $_SESSION['nome_unidade'];
}
else {
   header("Location: ../acesso_incorreto.html");
   exit();
}
?>

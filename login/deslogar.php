<?php

// deslogando:
session_start(); //iniciamos a sess�o que foi aberta
session_destroy(); //destruimos a sess�o ;)
session_unset(); //limpamos as variaveis globais das sess�es

header("Location: ../index.php");

?>

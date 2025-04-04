<?php

require_once "controladores/plantilla.controlador.php";
require_once "controladores/usuarios.controlador.php";
require_once "controladores/sedes.controlador.php";
require_once "modelos/sedes.modelo.php";

require_once "modelos/usuarios.modelo.php";

$plantilla = new ControladorPlantilla();
$plantilla->ctrPlantilla();

?>

<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
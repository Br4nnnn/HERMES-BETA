<?php

  Class Conexion{
    static public function conectar(){
      $link = new PDO("mysql:host=localhost;dbname=hermes_alpha", "root", "");
      $link -> exec("set names utf8");
      return $link;
    }
  }

?>
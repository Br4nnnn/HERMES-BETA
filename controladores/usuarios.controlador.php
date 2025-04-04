<?php

class ControladorUsuarios{
    public function ctrIngresoUsuario(){
        if (isset($_POST["ingUsuario"])){
            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["ingUsuario"])&& preg_match('/^[a-zA-Z0-9]+$/', $_POST["ingPassword"])) {
                $tabla = "usuarios";
                $item = "usuario";
                $valor = $_POST["ingUsuario"];

                $respuesta = ModeloUsuarios::mdlMostrarUsuarios($tabla, $item, $valor);
                var_dump($respuesta["clave"]);
                if ($respuesta["usuario"] == $_POST ["ingUsuario"] && $respuesta["clave"] == $_POST["ingPassword"]) {

                    $_SESSION["iniciarSesion"] = "ok";
                    var_dump($_SESSION["iniciarSesion"]);
                    echo '<script>
                        windows.location = "inicio";
                    </script>';

                } else {
                    echo '<br><div class="alert alert-danger">Usuario y contraseña no coinciden</div>';
                }
            }
        }
    }
}
?>
<?php
namespace Includes;

class ConexionBD
{
    private $dsn = "mysql:host=localhost;dbname=udh";
    private $user = "root";
    private $pass = "";
    private $opciones = array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'UTF8'");
    private $conn;

    public function abrirConexion(){
        $this->conn = new \PDO($this->dsn, $this->user, $this->pass, $this->opciones);
        return $this->conn;
    }

    public function cerrarConexion(){
        $this->conn = null;
    }
}
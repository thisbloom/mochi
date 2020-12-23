<?php
namespace App\Clases;
use Includes\ConexionBD as Conexion;
include_once "includes/autoload.php";

class Usuario{
    private $id;
    private $nombres;
    private $apellidos;
    private $codigo;
    private $password;
    private $tipo;
    private $id_pa;

    public function getCodigo()
    {
        return $this->codigo;
    }

    public function setCodigo($codigo): void
    {
        $this->codigo=$codigo;
    }
    
    public function mostrarPorCodigo($codigo)
    {
        try {
            $conexionDB = new Conexion();
            $conn = $conexionDB->abrirConexion();
            $sql = "SELECT * FROM usuarios WHERE codigo=$codigo";

            $stmt = $conn->prepare($sql);
            $stmt->execute();
            //$resultado = $stmt->fetchAll();

            $conexionDB->cerrarConexion();
            return $stmt;
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function mostrarEstudiantes()
    {
        try {
            $conexionDB = new Conexion();
            $conn = $conexionDB->abrirConexion();
            $sql = "SELECT * FROM usuarios WHERE tipo='estudiante'";

            $stmt = $conn->prepare($sql);
            $stmt->execute();
            //$resultado = $stmt->fetchAll();

            $conexionDB->cerrarConexion();
            return $stmt;
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function insertar(int $codigo, String $password, String $tipo, int $id_pa,String $nombres, String $apellidos){
        try{
            $conexionDB = new Conexion();
            $conn = $conexionDB->abrirConexion();
            $sql = "INSERT INTO usuarios(codigo, pass, tipo, id_pa, nombres, apellidos)
                    VALUES(?, ?, ?, ?, ?, ?)";

            $stmt = $conn->prepare($sql);
            $stmt->bindParam(1, $codigo, \PDO::PARAM_INT);
            $stmt->bindParam(2, $password, \PDO::PARAM_STR);
            $stmt->bindParam(3, $tipo, \PDO::PARAM_STR);
            $stmt->bindParam(4, $id_pa, \PDO::PARAM_INT);
            $stmt->bindParam(5, $nombres, \PDO::PARAM_STR);
            $stmt->bindParam(6, $apellidos, \PDO::PARAM_STR);
            $stmt->execute();
            $filas = $stmt->rowCount();

            $conexionDB->cerrarConexion();
            return $filas;
        }catch(PDOException $e){
            return $e->getMessage();
        }
    }
}

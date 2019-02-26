<?php
namespace app;

class Database
{
    // Définition des constantes permettant la connexion à la DB
    const DBHOST = "localhost";
    const DBNAME = "b3dbdd";
    const DBUSERNAME = "b3dadmin";
    const DBUSERPASSWORD = "b3dadmin";
    const DBCHARSET = 'utf8';
    private static $connection = null;
    // Fonction qui initialise une requête
    public static function query($query)
    {
        $pdo = self::connect();
        $stm = $pdo->query($query);
        self::disconnect();
        return $stm;
    }
    // Fonction de préparation et d'exéction de requête auprès de la DB
    public static function exec($query = '', $data = [])
    {
        $db = self::connect();
        $statement = $db->prepare($query);
        $statement->execute($data);
        if ($item = $statement->fetch()) {
            self::disconnect();
            return $statement;
        } else {
            self::disconnect();
            return false;
        }
    }
    // Fonction de connexion à la DB avec gestion des erreurs
    private static function connect()
    {
        if (self::$connection == null) {
            try {
                self::$connection = new \PDO('mysql:host='.self::DBHOST.';dbname='.self::DBNAME.';charset='.self::DBCHARSET, self::DBUSERNAME, self::DBUSERPASSWORD);
            } catch (PDOException $e) {
                die($e->getMessage());
            }
        }
        return self::$connection;
    }
    // Fonction de déconnexion à la DB
    private static function disconnect()
    {
        self::$connection = null;
    }
}

<?php
namespace app;

class Database
{
    const DBHOST = "localhost";
    const DBNAME = "mdp_tech_in_sport";
    const DBUSERNAME = "admintechinsport";
    const DBUSERPASSWORD = "admintechinsport";
    private static $connection = null;

    public static function query($query)
    {
        $pdo = self::connect();
        $stm = $pdo->query($query);
        self::disconnect();
        return $stm;
    }

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

    private static function connect()
    {
        if (self::$connection == null) {
            try {
                self::$connection = new \PDO("mysql:host=" . self::DBHOST . ";dbname=" . self::DBNAME, self::DBUSERNAME, self::DBUSERPASSWORD);
            } catch (PDOException $e) {
                die($e->getMessage());
            }
        }
        return self::$connection;
    }

    private static function disconnect()
    {
        self::$connection = null;
    }
}

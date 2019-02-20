<?php
namespace app;

class Autoload
{
// Fonction qui permet le chargement de plusieurs class (file d'attente) ?
    public static function register()
    {
        spl_autoload_register([__CLASS__, 'autoload']);
    }
// Fonction qui permet de récuperer toutes les class présentes dans les namespace ?
    private static function autoload($class)
    {
        if (strpos($class, __NAMESPACE__ . '\\') === 0) {
            $class = str_replace(__NAMESPACE__.'\\', '', $class);
            $class = str_replace('\\', '/', $class);
            require 'app/'.$class.'.php';
        }
    }
}

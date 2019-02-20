<?php
namespace app\modele;

/**
 *
 */
class Formcleaning
{
    public $value=[];
    public function __construct($data=[])
    {
        foreach ($data as $key => $value) {
            $this->value[$key] = $this->clean($value);
        }
    }

    public static function cleanNumeric($value)
    {
        if (is_numeric($value)) {
            self::clean($value);
        } else {
            return false;
        }
    }

    public static function clean($value)
    {
        return $value = trim(stripslashes(htmlspecialchars($value)));
    }
}

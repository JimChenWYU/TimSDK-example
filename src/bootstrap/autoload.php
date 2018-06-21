<?php

require __DIR__ . '/../../vendor/autoload.php';

function env($key, $default = null)
{
    $value = getenv($key);

    if ($value === false) {
        if (isset($_ENV[$key])) {
            $value = $_ENV[$key];
        } elseif (isset($_SERVER[$key])) {
            $value = $_SERVER[$key];
        } else {
            $value = $default;
        }
    }

    return $value;
}

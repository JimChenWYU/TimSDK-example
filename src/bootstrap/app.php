<?php

$app = new \TimSDK\TimCloud([
    'log'         => [
        'default'  => 'single',
        'channels' => [
            'single' => [
                'driver' => 'single',
                'path'   => __DIR__ . 'log/app.log',
                'level'  => 'debug',
            ],
        ],
    ],
    'app_id'      => env('APP_ID'),
    'identifier'  => env('IDENTIFIER'),
    'private_key' => env('PRIVATE_KEY'),
    'public_key'  => env('PUBLIC_KEY'),
]);

return $app;

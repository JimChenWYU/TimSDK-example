<?php

/**
 * @var \FastRoute\RouteCollector $route
 */

use TimSDK\TimCloud;
use TimSDK\Core\API;

$route->addRoute(['GET', 'POST'], '', function () {
    return new \TimSDK\Foundation\ResponseBag([
        'status' => 'ok'
    ], []);
});

/**
 * 通过反射获得所有常量
 */
$interface = new \ReflectionClass(API::class);
$apiUris = $interface->getConstants();

foreach ($apiUris as $uri) {
    if ($uri === API::BASE_URL) {
        continue;
    }

    $route->post($uri, function (TimCloud $cloud) use ($uri) {
        return $cloud->request($uri, isset($_REQUEST['json']) ? $_REQUEST['json'] : []);
    });
}

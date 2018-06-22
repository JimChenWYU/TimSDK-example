<?php
/**
 * Created by PhpStorm.
 * User: lenovo
 * Date: 6/20/2018
 * Time: 11:24 PM
 */

require __DIR__ . '/bootstrap/autoload.php';

// 环境变量加载
$dotenv = new \Dotenv\Dotenv(dirname(__DIR__));
$dotenv->load();

/**
 * @var \TimSDK\TimCloud $app
 */
$app = require __DIR__ . '/bootstrap/app.php';

$routeInfo = require __DIR__ . '/bootstrap/dispatch.php';

switch ($routeInfo[0]) {
    case FastRoute\Dispatcher::NOT_FOUND:
        // ... 404 Not Found
        dd('404 Not Found');
        break;
    case FastRoute\Dispatcher::METHOD_NOT_ALLOWED:
        $allowedMethods = $routeInfo[1];
        // ... 405 Method Not Allowed
        dd('405 Method Not Allowed');
        break;
    case FastRoute\Dispatcher::FOUND:
        $handler = $routeInfo[1];
        $vars = $routeInfo[2];
        array_unshift($vars, $app);

        if (is_callable($handler)) {
            $response = call_user_func_array($handler, $vars);

            if (! is_null($response)) {
                if ($response instanceof \TimSDK\Foundation\ResponseBag) {
                    $response = $response->getContents();
                }

                if (strpos($_SERVER['HTTP_USER_AGENT'], 'curl') !== false) {
                    var_export($response->toArray());
                    return ;
                }

                if ($_SERVER['HTTP_X_REQUESTED_WITH'] === 'XMLHttpRequest') {
                    header('Content-Type: application/json');
                    echo $response->toJson();
                    return ;
                }
                dump($response->toArray());
            }

        } else {
            dump($handler);
        }

        break;
}

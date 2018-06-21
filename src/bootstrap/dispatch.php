<?php

$dispatcher = \FastRoute\simpleDispatcher(function (\FastRoute\RouteCollector $route) {
    require __DIR__ . '/../routes/routes.php';
});

$method = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

// Strip query string (?foo=bar) and decode URI
if (false !== $pos = strpos($uri, '?')) {
    $uri = substr($uri, 0, $pos);
}

$uri = rawurldecode($uri);

return $dispatcher->dispatch($method, trim($uri, '/'));


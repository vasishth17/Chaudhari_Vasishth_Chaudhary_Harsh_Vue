<?php

/** @var \Laravel\Lumen\Routing\Router $router */

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
*/


//matches localhost:8888/lumen/public/
$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/cars', 'CarController@index');
$router->get('/cars/{id}', 'CarController@show');
$router->get('/images/{imageName}', 'ImageController@show');














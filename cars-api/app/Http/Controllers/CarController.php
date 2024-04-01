<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Response;

class CarController extends BaseController
{
    // List all cars
    public function index()
    {
        $cars = DB::table('cars')->select('id', 'make', 'model', 'year', 'category', 'image_url')->get();

       
        $cars = $cars->map(function ($car) {
            if (!empty($car->image_url)) {
                $car->image_url = url($car->image_url); 
            }
            return $car;
        });

        return response()->json($cars);
    }

    // Get details for a single car
    public function show($id)
    {
        $car = DB::table('cars')->where('id', $id)->first();

        if ($car) {
           
            if (!empty($car->image_url)) {
                $car->image_url = url($car->image_url); 
            }

            return response()->json($car);
        } else {
            return response()->json(['error' => 'Car not found'], 404);
        }
    }
}

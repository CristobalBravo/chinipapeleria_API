<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Usuario;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


//Usuario
Route::post('usuario/all','UsuarioController@all');
Route::post('usuario/buscar','UsuarioController@buscarPorID');
Route::post('usuario/crear','UsuarioController@crear');
Route::post('usuario/editar','UsuarioController@editar');
Route::post('usuario/eliminar','UsuarioController@eliminar');

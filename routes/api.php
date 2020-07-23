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


//medio de pago
Route::post('medioPago/all','MedioPagoController@all');
Route::post('medioPago/buscar','MedioPagoController@buscarPorID');
Route::post('medioPago/crear','MedioPagoController@crear');
Route::post('medioPago/editar','MedioPagoController@editar');
Route::post('medioPago/eliminar','MedioPagoController@eliminar');

//Estado De Pedido
Route::post('estadoPedido/all','EstadoPedidoController@all');
Route::post('estadoPedido/buscar','EstadoPedidoController@buscarPorID');
Route::post('estadoPedido/crear','EstadoPedidoController@crear');
Route::post('estadoPedido/editar','EstadoPedidoController@editar');
Route::post('estadoPedido/eliminar','EstadoPedidoController@eliminar');

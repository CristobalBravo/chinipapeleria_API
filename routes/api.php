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


//Categoria
Route::post('categoria/all','CategoriaController@all');
Route::post('categoria/buscar','CategoriaController@buscarPorID');
Route::post('categoria/crear','CategoriaController@crear');
Route::post('categoria/editar','CategoriaController@editar');
Route::post('categoria/eliminar','CategoriaController@eliminar');

//Marca
Route::post('marca/all','MarcaController@all');
Route::post('marca/buscar','MarcaController@buscarPorID');
Route::post('marca/crear','MarcaController@crear');
Route::post('marca/editar','MarcaController@editar');
Route::post('marca/eliminar','MarcaController@eliminar');

//Marca
Route::post('tipoProducto/all','TipoProductoController@all');
Route::post('tipoProducto/buscar','TipoProductoController@buscarPorID');
Route::post('tipoProducto/crear','TipoProductoController@crear');
Route::post('tipoProducto/editar','TipoProductoController@editar');
Route::post('tipoProducto/eliminar','TipoProductoController@eliminar');

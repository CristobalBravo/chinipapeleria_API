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

//Seccion
Route::post('seccion/all','seccionController@all');
Route::post('seccion/buscar','seccionController@buscarPorID');
Route::post('seccion/crear','seccionController@crear');
Route::post('seccion/editar','seccionController@editar');
Route::post('seccion/eliminar','seccionController@eliminar');

//Tipo tapa
Route::post('tipoTapa/all','tipoTapaController@all');
Route::post('tipoTapa/buscar','tipoTapaController@buscarPorID');
Route::post('tipoTapa/crear','tipoTapaController@crear');
Route::post('tipoTapa/editar','tipoTapaController@editar');
Route::post('tipoTapa/eliminar','tipoTapaController@eliminar');

//Tipo espiral
Route::post('tipoEspiral/all','tipoEspiralController@all');
Route::post('tipoEspiral/buscar','tipoEspiralController@buscarPorID');
Route::post('tipoEspiral/crear','tipoEspiralController@crear');
Route::post('tipoEspiral/editar','tipoEspiralController@editar');
Route::post('tipoEspiral/eliminar','tipoEspiralController@eliminar');

//Tipo diseño
Route::post('diseno/all','disenoController@all');
Route::post('diseno/buscar','disenoController@buscarPorID');
Route::post('diseno/crear','disenoController@crear');
Route::post('diseno/editar','disenoController@editar');
Route::post('diseno/eliminar','disenoController@eliminar');

//Tamaño Hoja
Route::post('tamanioHoja/all','tamanioHojaController@all');
Route::post('tamanioHoja/buscar','tamanioHojaController@buscarPorID');
Route::post('tamanioHoja/crear','tamanioHojaController@crear');
Route::post('tamanioHoja/editar','tamanioHojaController@editar');
Route::post('tamanioHoja/eliminar','tamanioHojaController@eliminar');

//Tamaño Hoja
Route::post('tipoHoja/all','tipoHojaController@all');
Route::post('tipoHoja/buscar','tipoHojaController@buscarPorID');
Route::post('tipoHoja/crear','tipoHojaController@crear');
Route::post('tipoHoja/editar','tipoHojaController@editar');
Route::post('tipoHoja/eliminar','tipoHojaController@eliminar');
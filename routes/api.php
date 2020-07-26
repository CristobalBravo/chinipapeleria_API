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

//Tipo Producto
Route::post('tipoProducto/all','TipoProductoController@all');
Route::post('tipoProducto/buscar','TipoProductoController@buscarPorID');
Route::post('tipoProducto/crear','TipoProductoController@crear');
Route::post('tipoProducto/editar','TipoProductoController@editar');
Route::post('tipoProducto/eliminar','TipoProductoController@eliminar');

//Tipo planificador
Route::post('tipoPlanificador/all','TipoPlanificadorController@all');
Route::post('tipoPlanificador/buscar','TipoPlanificadorController@buscarPorID');
Route::post('tipoPlanificador/crear','TipoPlanificadorController@crear');
Route::post('tipoPlanificador/editar','TipoPlanificadorController@editar');
Route::post('tipoPlanificador/eliminar','TipoPlanificadorController@eliminar');

//Venta
Route::post('venta/all','VentaController@all');
Route::post('venta/buscar','VentaController@buscarPorID');
Route::post('venta/crear','VentaController@crear');
/* Para Posible Implementacion
Route::post('venta/editar','VentaController@editar');
Route::post('venta/eliminar','VentaController@eliminar');*/

//pedido
Route::post('pedido/all','PedidoController@all');
Route::post('pedido/buscar','PedidoController@buscarPorID');
Route::post('pedido/crear','PedidoController@crear');
Route::post('pedido/editar','PedidoController@editar');
Route::post('pedido/eliminar','PedidoController@eliminar');

//producto
Route::post('producto/all','ProductoController@all');
Route::post('producto/buscar','ProductoController@buscarPorID');
Route::post('producto/crear','ProductoController@crear');
Route::post('producto/editar','ProductoController@editar');
Route::post('producto/eliminar','ProductoController@eliminar');

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

//detallePedido
Route::post('detallePedido/all','DetallePedidoController@all');
Route::post('detallePedido/buscar','DetallePedidoController@buscarPorID');
Route::post('detallePedido/crear','DetallePedidoController@crear');
Route::post('detallePedido/editar','DetallePedidoController@editar');
Route::post('detallePedido/eliminar','DetallePedidoController@eliminar');
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

//Tamaño TipoLinea
Route::post('tipoLinea/all','tipoLineaController@all');
Route::post('tipoLinea/buscar','tipoLineaController@buscarPorID');
Route::post('tipoLinea/crear','tipoLineaController@crear');
Route::post('tipoLinea/editar','tipoLineaController@editar');
Route::post('tipoLinea/eliminar','tipoLineaController@eliminar');

//Tamaño TipoPunta
Route::post('tipoPunta/all','tipoPuntaController@all');
Route::post('tipoPunta/buscar','tipoPuntaController@buscarPorID');
Route::post('tipoPunta/crear','tipoPuntaController@crear');
Route::post('tipoPunta/editar','tipoPuntaController@editar');
Route::post('tipoPunta/eliminar','tipoPuntaController@eliminar');


//Tamaño FlashCard
Route::post('flashCard/all','FlashCardController@all');
Route::post('flashCard/buscar','FlashCardController@buscarPorID');
Route::post('flashCard/crear','FlashCardController@crear');
Route::post('flashCard/editar','FlashCardController@editar');
Route::post('flashCard/eliminar','FlashCardController@eliminar');

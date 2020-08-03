<?php

namespace App\Http\Controllers;
use App\Helpers\Role;
use Illuminate\Http\Request;
use App\Models\Producto;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use DateTime;

class ProductoController extends Controller
{

    public function all(){
        $producto= Producto::all()->load('categoria', 'marca');
        $data=[
            'code'=>200,
            'status'=>'success',
            'Producto'=>$producto
        ];
        return response()->json($data);
    }

    public function buscarPorID(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code=400;
            $result->status='error';
            $result->message = "Debes seleccionar un id del producto para buscar";
            return response()->json($result);
        }

        try{
            $id = $request->id;
            $producto = Producto::findOrFail($id)->load('categoria', 'marca');
            $result->code = 200;
            $result->status='success';
            $result->producto=$producto;
        }catch(ModelNotFoundException $e){
            $result->code =400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }

    Public function crear(Request $request){

        $token = $request->header('Authorization');
        $role= new Role();
        if($role->admin($token)){
            $producto = new Producto();
            $producto->nombre = $request->nombre;
            $producto->precio=$request->precio;
            $producto->stock=$request->stock;
            $producto->img=$request->img;
            //$producto->TipoProducto_id=$request->TipoProducto_id;
            $producto->Categoria_id=$request->Categoria_id;
            $producto->Marca_id=$request->Marca_id;
            $producto->save();
            $data=[
                'code'=>200,
                'status'=> 'success',
                'Producto'=>$producto];
            return response()->json($data);
        }
        $data=[
            'code'=>400,
            'status'=> 'error',
            'mensaje'=>'el usuario no es administrador'];
        return response()->json($data);
    }

    public function editar(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code=400;
            $result->message = "Debes seleccionar un id del producto para editar";
            return response()->json($result);
        }

        try{
            $producto = Producto::findOrFail($request->id);
            $producto->nombre = $request->nombre;
            $producto->save();
            $result->code = 200;
            $result->status='success';
            $result->producto=$producto;

        }catch(ModelNotFoundException $e){
            $result->code =400;
            $result->status='error';
            $result->message='No se encontro el id del  producto';
        }

        return response()->json($result);
    }

    public function eliminar(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code = 400;
            $result->status='error';
            $result->message = "Debes seleccionar un id del producto para Eliminar";
            return response()->json($result);
        }

        try{
            $id = $request->id;
            $producto = Producto::findOrFail($id);
            $producto->delete();
            $result->code = 200;
            $result->status='success';
            $result->message='Producto Eliminado Exitosamente';
        }catch(ModelNotFoundException $e){
            $result->code = 400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }
}

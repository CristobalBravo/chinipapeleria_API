<?php

namespace App\Http\Controllers;
use App\Helpers\Role;
use Illuminate\Http\Request;
use App\Models\Producto;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
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
            $validator = Validator::make($request->all(), [
                'nombre' => 'bail|required|string',
                'precio' => 'bail|required|numeric',
                'stock' => 'bail|required|numeric',
                'Categoria_id' => 'bail|required|numeric',
                'Marca_id' => 'bail|required|numeric',
                'img' => 'required|file|mimes:jpeg,bmp,png,jpg'
            ]);

            if ($validator->fails()) {
                $resp = new \stdClass();
                $resp->code = 200;
                $resp->status = 'error';
                $resp->message = 'No cumple con las precondiciones de los campos';
                $resp->errors = $validator->errors();
                return response(json_encode($resp), 200)
                    ->header('Content-Type', 'application/json');
            }

            $producto = new Producto();
            $producto->nombre = $request->nombre;
            $producto->precio=$request->precio;
            $producto->stock=$request->stock;
            $path = $request->img->store('public/producto');
            $path = str_replace("public/", "storage/", $path);
            $producto->img = $path;
            //$producto->TipoProducto_id=$request->TipoProducto_id;
            $producto->Categoria_id=$request->Categoria_id;
            $producto->Marca_id=$request->Marca_id;
            $producto->save();

            $resp = new \stdClass();
            $resp->code = 200;
            $resp->status = 'success';
            $resp->message = 'Producto registrado con éxito.';
            $resp->data = $producto;
            return response(json_encode($resp), 200)
                ->header('Content-Type', 'application/json');
        }

        $resp = new \stdClass();
        $resp->code = 400;
        $resp->status = 'error';
        $resp->message = 'No tiene autorización para realizar esto.';
        return response(json_encode($resp), 200)
            ->header('Content-Type', 'application/json');
    }

    public function editar(Request $request){

        $validator = Validator::make($request->all(), [
            'id' => 'bail|required|numeric',
            'nombre' => 'bail|nullable|string',
            'precio' => 'bail|nullable|numeric',
            'stock' => 'bail|nullable|numeric',
            'Categoria_id' => 'bail|nullable|numeric',
            'Marca_id' => 'bail|nullable|numeric',
            'img' => 'nullable|file|mimes:jpeg,bmp,png,jpg'
        ]);

        if ($validator->fails()) {
            $resp = new \stdClass();
            $resp->code = 200;
            $resp->status = 'error';
            $resp->message = 'No cumple con las precondiciones de los campos';
            $resp->errors = $validator->errors();
            return response(json_encode($resp), 200)
                ->header('Content-Type', 'application/json');
        }

        try{
            $producto = Producto::findOrFail($request->id);
            if(isset($request->nombre)){
                $producto->nombre = $request->nombre;
            }
            if(isset($request->precio)){
                $producto->precio = $request->precio;
            }
            if(isset($request->stock)){
                $producto->stock = $request->stock;
            }
            if(isset($request->Categoria_id)){
                $producto->Categoria_id = $request->Categoria_id;
            }
            if(isset($request->Marca_id)){
                $producto->Marca_id = $request->Marca_id;
            }
            if(isset($request->img)){
                $path = $request->img->store('public/producto');
                $path = str_replace("public/", "storage/", $path);
                $producto->img = $path;
            }

            $producto->save();

            $resp = new \stdClass();
            $resp->code = 200;
            $resp->status = 'success';
            $resp->message = 'Diseño actualizado con éxito.';
            $resp->data = $producto;
            return response(json_encode($resp), 200)
                ->header('Content-Type', 'application/json');

        }catch(ModelNotFoundException $e){
            $resp = new \stdClass();
            $resp->code = 400;
            $resp->status = 'error';
            $resp->message = 'Producto no encontrado';
            return response(json_encode($resp), 200)
                ->header('Content-Type', 'application/json');
        }

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

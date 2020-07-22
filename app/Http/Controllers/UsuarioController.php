<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Usuario;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UsuarioController extends Controller
{
    public function all(){
        $usuario= Usuario::all();
        $data=[
            'code'=>200,
            'status'=> 'success',
            'usuario'=>$usuario];
        return response()->json($data);
    }

    public function buscarPorID(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code=400;
            $result->status='error';
            $result->message = "Debes seleccion un id de usuario para buscar";
            return response()->json($result);
        }

        try{
            $id = $request->id;
            $usuario = Usuario::findOrFail($id);
            $result->code = 200;
            $result->status='success';
            $result->usuario=$usuario;
        }catch(ModelNotFoundException $e){
            $result->code =400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }

    Public function crear(Request $request){
        $usuario = new Usuario();
        $usuario->nombre = $request->nombre;
        $usuario->apellido = $request->apellido;
        $usuario->rut = $request->rut;
        $usuario->codigo_verificacion = $request->codigo_verificacion;
        $usuario->email = $request->email;
        $usuario->numero = $request->numero;
        $usuario->ciudad = $request->ciudad;
        $usuario->calle = $request->calle;
        $usuario->save();
        $data=[
            'code'=>200,
            'status'=> 'success',
            'usuario'=>$usuario];
        return response()->json($data);
    }

    public function editar(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code=400;
            $result->message = "Debes seleccion un id de usuario para editar";
            return response()->json($result);
        }

        try{
            $usuario = Usuario::findOrFail($request->id);
            $usuario->nombre = $request->nombre;
            $usuario->apellido = $request->apellido;
            $usuario->rut = $request->rut;
            $usuario->codigo_verificacion = $request->codigo_verificacion;
            $usuario->email = $request->email;
            $usuario->numero = $request->numero;
            $usuario->ciudad = $request->ciudad;
            $usuario->calle = $request->calle;
            $usuario->save();
            $result->code =200;
            $result->status='success';
            $result->usuario=$usuario;

        }catch(ModelNotFoundException $e){
            $result->code =400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }

    public function eliminar(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code = 400;
            $result->status='error';
            $result->message = "Debes seleccion un id de usuario para Eliminar";
            return response()->json($result);
        }

        try{
            $id = $request->id;
            $usuario = Usuario::findOrFail($id);
            $usuario->delete();
            $result->code = 200;
            $result->status='success';
            $result->message='Cliente Eliminado Exitosamente';
        }catch(ModelNotFoundException $e){
            $result->code = 400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }
}

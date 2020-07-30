<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Diseno;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class DisenoController extends Controller
{

    public function __construct()
    {
        $this->middleware('api.auth', ['except'=>['all']]);
    }
    public function all(){
        $diseno= Diseno::all();
        $data=[
            'code'=>200,
            'status'=> 'success',
            'medioPago'=>$diseno];
        return response()->json($data);
    }

    public function buscarPorID(Request $request){
        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code=400;
            $result->status='error';
            $result->message = "Debes seleccionar un id de diseño para buscar";
            return response()->json($result);
        }

        try{
            $id = $request->id;
            $diseno = Diseno::findOrFail($id);
            $result->code = 200;
            $result->status='success';
            $result->diseno=$diseno;
        }catch(ModelNotFoundException $e){
            $result->code =400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }

    Public function crear(Request $request){
        $diseno = new Diseno();
        $diseno->nombre = $request->nombre;
        $diseno->path = $request->path;
        $diseno->save();
        $data=[
            'code'=>200,
            'status'=> 'success',
            'diseño'=>$diseno];
        return response()->json($data);
    }

    public function editar(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code=400;
            $result->message = "Debes seleccionar un id de diseño para editar";
            return response()->json($result);
        }

        try{
            $diseno = Diseno::findOrFail($request->id);
            $diseno->nombre = $request->nombre;
            $diseno->path = $request->path;
            $diseno->save();
            $result->code =200;
            $result->status='success';
            $result->diseno=$diseno;

        }catch(ModelNotFoundException $e){
            $result->code =400;
            $result->status='error';
            $result->message='No se encontro el id de diseño';
        }

        return response()->json($result);
    }

    public function eliminar(Request $request){

        $result = new \stdClass();
        $result->code = 200;

        if($request->id == ''){
            $result->code = 400;
            $result->status='error';
            $result->message = "Debes seleccionar un id de seccion para Eliminar";
            return response()->json($result);
        }

        try{
            $id = $request->id;
            $diseno = Diseno::findOrFail($id);
            $diseno->delete();
            $result->code = 200;
            $result->status='success';
            $result->message='Diseño Eliminado Exitosamente';
        }catch(ModelNotFoundException $e){
            $result->code = 400;
            $result->status='error';
            $result->message='No se encontro el id';
        }

        return response()->json($result);
    }
}

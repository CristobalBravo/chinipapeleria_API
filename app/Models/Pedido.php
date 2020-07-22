<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    protected $table = 'pedido';
    public $timestamps=false;

    public function usuario(){
        return $this->belongTo('App\Models\Usuario','Usuario_id');
    }

    public function venta(){
        return $this->belongTo('App\Models\Venta','Venta_id');
    }

    public function estadoPedido(){
        return $this->belongTo('App\Models\EstadoPedido','EstadoPedido_id');
    }
}

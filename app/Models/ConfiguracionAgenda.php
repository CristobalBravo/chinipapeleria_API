<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConfiguracionAgenda extends Model
{
    protected $table = 'configuracionagenda';
    public $timestamps = false;

    public function detallepedido(){
        return $this->belongsTo('App\Models\DetallePedido', 'DetallePedido_id');
    }

    public function colorespiral(){
        return $this->belongsTo('App\Models\ColorEpiral', 'ColorEspiral_id');
    }
}

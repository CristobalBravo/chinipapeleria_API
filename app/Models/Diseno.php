<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Diseno extends Model
{
    protected $table = 'diseno';
    public $timestamps=false;

    public function configuracionflashcard(){
        return $this->hasOne('App\Models\ConfiguracionFlashCard');
    }

    public function confagendadiseno(){
        return $this->hasMany('App\Models\ConfAgendaDiseno');
    }
}

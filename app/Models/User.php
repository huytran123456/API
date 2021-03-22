<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
class User extends Model
{
    use HasFactory;
    protected $table='users';
    public $timestamps = false;
    protected $fillable=[
        'first_name',
      'last_name',
        'phone',
       'password',
      'email',
    ];
    protected $hidden=['password'];




    public function GetUsers(array $SelectR,array $WhereR){
        $result=DB::table($this->getTable())->select($SelectR)->where($WhereR)->get();
        return $result;
    }
}

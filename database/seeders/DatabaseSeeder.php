<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
     /*   DB::table('users')->insert([
            'first_name' => Str::random(10),
            'last_name'=>Str::random(10),
            'email' => Str::random(10).'@gmail.com',
            'password' => Str::random(10), ///quen set do dai password nen k hash
            'phone'=>Str::random(10),
        ]);*/
        $this->call(UserSeeder::class);
    }
}

<?php

namespace App\Controllers;

class Landing_Page extends BaseController
{
    public function index()
    {
        return view('welcome_message');
        
        // echo "nama saya Abimanyu";
    }
}

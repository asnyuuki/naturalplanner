<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Users extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'My Profile | Natural Planner',
            'copyright' => 'Copyright &copy; Nature Venue Wedding Inc.'
        ];
        echo view('user/index', $data);
    }
}

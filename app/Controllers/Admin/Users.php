<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;

class Users extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'My Profile | Natural Planner',
            'copyright' => 'Copyright &copy; Nature Venue Wedding Inc.'
        ];
        echo view('/user/index', $data);
    }
}

<?php

namespace App\Controllers\Admin;

use App\Controllers\BaseController;

class Users extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'My Profile | Natural Planner'
        ];
        echo view('/user/index', $data);
    }
}

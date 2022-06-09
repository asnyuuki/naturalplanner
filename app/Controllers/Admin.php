<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Admin extends BaseController
{
    protected $db, $builder;
    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data = [
            'title' => 'Admin | Natural Planner',
            'copyright' => 'Copyright &copy; Nature Venue Wedding Inc.'
        ];
        // $users = new \Myth\Auth\Models\UserModel();
        // $data['users'] = $users->findAll();

        $this->builder->select('users.id as userid, username, email, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $query = $this->builder->get();

        $data['users'] = $query->getResult();

        echo view('admin/index', $data);
    }

    public function detail($id = 0)
    {
        $data = [
            'title' => 'User Detail | Natural Planner',
            'copyright' => 'Copyright &copy; Nature Venue Wedding Inc.'
        ];

        $this->builder->select('users.id as userid, username, email, fullname, user_image, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        $this->builder->where('users.id', $id);
        $query = $this->builder->get();

        $data['user'] = $query->getRow();

        if (empty($data['user'])) {
            return redirect()->to('/admin');
        }

        echo view('admin/detail', $data);
    }

    public function create()
    {
        $data = [
            'title' => 'Add New User | Natural Planner',
            'copyright' => 'Copyright &copy; Nature Venue Wedding Inc.'
        ];

        echo view('admin/create', $data);
    }

    public function save()
    {
        $this->request->getVar();
    }
}

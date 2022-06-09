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
    public function coba()
    {
        $data = [
            'title' => 'Edit Profile | Natural Planner',
            'copyright' => 'Copyright &copy; Nature Venue Wedding Inc.'
        ];
        echo view('user/table', $data);
    }
    // public function update($id)
    // {
    //     $pegawai = new UserModel();
    //     $prod_item = $pegawai->find($id);
    //     $old_image =  $prod_item->user_image;
    //     $file =  $this->request->getFile('user_image');

    //     if ($file->isValid() && !$file->hasMoved()) {
    //         if (file_exists('/img/' . $old_image)) {
    //             unlink('/img/' . $old_image);
    //         }
    //         $randomName = $file->getRandomName();
    //         $file->move('public/img/', $randomName);
    //     } else {
    //         $randomName = $old_image;
    //     }
    //     $data =  [
    //         'email' => $this->request->getPost('email'),
    //         'username' => $this->request->getPost('username'),
    //         'fullname' => $this->request->getPost('fullname'),
    //         'user_image'  => $randomName,
    //     ];
    //     $pegawai->update($id, $data);
    //     session()->setFlashdata('message', 'Update Data Pegawai Berhasil');
    //     return redirect()->to('users/index');
    // }
}

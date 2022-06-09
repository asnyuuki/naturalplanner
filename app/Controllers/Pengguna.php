<?php

namespace App\Controllers;

use App\Models\PenggunaModel;

class Pengguna extends BaseController
{
    protected $pengguna;

    function __construct()
    {
        $this->pengguna = new PenggunaModel();
    }

    public function update($id)
    {
        $pengguna = new PenggunaModel();
        $prod_item = $pengguna->find($id);
        $old_image =  $prod_item->user_image;
        $file =  $this->request->getFile('user_image');

        if ($file->isValid() && !$file->hasMoved()) {
            if (file_exists('/img/' . $old_image)) {
                unlink('/img/' . $old_image);
            }
            $randomName = $file->getRandomName();
            $file->move('public/img/', $randomName);
        } else {
            $randomName = $old_image;
        }
        $data =  [
            'email' => $this->request->getPost('email'),
            'username' => $this->request->getPost('username'),
            'fullname' => $this->request->getPost('fullname'),
            'user_image'  => $randomName,
        ];
        $pengguna->update($id, $data);
        session()->setFlashdata('message', 'Update Data User Berhasil');
        return redirect()->to('users/index');
    }
}

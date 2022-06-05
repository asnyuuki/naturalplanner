<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function landingPage()
    {
        $data = [
            'title' => 'Home | Natural Planner'
        ];
        echo view('pages/landingPage', $data);
        // echo "nama saya Abimanyu";
    }

    public function aboutUs()
    {
        $data = [
            'title' => 'About | Natural Planner'
        ];
        echo view('pages/aboutUs', $data);
    }

    public function theTeam()
    {
        $data = [
            'title' => 'The Team | Natural Planner'
        ];
        echo view('pages/theTeam', $data);
    }

    public function services()
    {
        $data = [
            'title' => 'Services | Natural Planner'
        ];
        echo view('pages/services', $data);
    }

    public function getintouch()
    {
        $data = [
            'title' => 'Contact Us | Natural Planner'
        ];
        echo view('pages/getintouch', $data);
    }

    public function login()
    {
        $data = [
            'title' => 'Login-SignUp | Natural Planner'
        ];
        echo view('auth/login', $data);
    }
}

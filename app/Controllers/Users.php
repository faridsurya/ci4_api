<?php

namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use App\Models\UserModel;

class Users extends ResourceController
{
    function __construct() {
        $this->userModel = new UserModel();
      }

    public function index()
    {
        return 'ok';
    }

    public function getAllUsers()
    {
        $userModel = new UserModel();
        $data = $userModel->findAll();
        return $this->respond($data);
    }

    public function findUser()
    {
        $id = $this->request->uri->getSegment(2);
        $userModel = new UserModel();
        $data = $userModel->find($id);
        return $this->respond($data);
    }
    public function createUser()
    {
        $data = $this->request->getVar();
        $res =  $this->userModel->save($data);
        return $this->respond($res);
    }

}
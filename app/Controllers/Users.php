<?php

namespace App\Controllers;

use CodeIgniter\RESTful\ResourceController;
use App\Models\UserModel;

class Users extends ResourceController
{
    function __construct() {
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
        header("Access-Control-Allow-Headers: X-Requested-With");
        $this->userModel = new UserModel();
    }

    public function getAllUser()
    {
        $data = $this->userModel->findAll();
        return $this->respond($data);
    }
    
    public function getUserById(){
        $id = $this->request->uri->getSegment(2);
        $data = $this->userModel->find($id);
        return $this->respond($data);
    }
    
    public function updateUser()
    {
        $id = $this->request->uri->getSegment(2);
        $input = $this->request->getVar();
        $res = $this->userModel->update($id, $input);
        return $this->respond($res);
    }
    
    public function createUser()
    {
        $input = $this->request->getVar();
        $res = $this->userModel->save($input);
        return $this->respond($input);
    }
    
    public function deleteUser()
    {
        $id = $this->request->uri->getSegment(2);
        $res = $this->userModel->delete($id);
        return $this->respond($res);
    }
    
}
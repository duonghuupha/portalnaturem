<?php
class Blogs extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function index(){
        require('layouts/header.php');
        $this->view->render('blogs/index');
        require('layouts/footer.php');
    }

    function json(){

    }

    function formadd(){
        require('layouts/header.php');
        $this->view->render('blogs/add');
        require('layouts/footer.php');
    }

    function add(){

    }

    function formedit(){
        require('layouts/header.php');

        $id = base64_decode($_REQUEST['id']);
        $jsonObj = $this->model->get_info($id);
        $this->view->jsonObj = $jsonObj;

        $this->view->render('blogs/edit');
        require('layouts/footer.php');
    }

    function update(){

    }

    function del(){

    }

    function change(){
        
    }
}
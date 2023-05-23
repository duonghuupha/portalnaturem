<?php
class Orders extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function index(){
        require('layouts/header.php');
        $this->view->render('orders/index');
        require('layouts/footer.php');
    }
}
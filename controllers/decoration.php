<?php
class Decoration extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function index(){
        require('layouts/header.php');
        $this->view->render('decoration/index');
        require('layouts/footer.php');
    }
}

?>
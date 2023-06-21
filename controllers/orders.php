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

    function json(){
        $rows = 15;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->getFetObj($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('orders/json');
    }

    function detail(){
        require('layouts/header.php');
        $this->view->render('orders/detail');
        require('layouts/footer.php');
    }

    function invoice(){
        $id = base64_decode($_REQUEST['id']);
        $jsonObj = $this->model->get_detail($id);
        $this->view->json = $jsonObj;
        $add = $this->model->get_add($jsonObj[0]['address_id']);
        $this->view->add = $add;
        $cus = $this->model->get_cus($jsonObj[0]['cus_id']);
        $this->view->cus = $cus;
        $detail = $this->model->get_detail_order($jsonObj[0]['code']);
        $this->view->detail = $detail;
        $this->view->render('orders/invoice');
    }
}
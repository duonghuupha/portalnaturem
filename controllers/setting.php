<?php
class Setting extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function index(){
        require('layouts/header.php');

        $global = $this->model->get_global();
        $this->view->global = $global;
        $payment = $this->model->get_payment();
        $this->view->payment = $payment;

        $this->view->render('setting/index');
        require('layouts/footer.php');
    }

    function update_global(){
        $email = $_REQUEST['email']; $phone = $_REQUEST['phone'];
        $address = $_REQUEST['address'];
        $data = array("email" => $email, "phone" => $phone, "address" => $address);
        $temp = $this->model->updateObj_global($data);
        if($temp){
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render('setting/update_global');
    }

    function update_payment(){

        $this->view->render('setting/update_payment');
    }
}
?>
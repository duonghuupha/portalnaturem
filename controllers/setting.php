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
        $zipcode = $_REQUEST['zip_code']; $state = $_REQUEST['state'];
        $codestate = $_REQUEST['code_state']; $city = $_REQUEST['city'];
        $address = $_REQUEST['address'];
        $data = array("zip_code" => $zipcode, "address" => $address, "city" => $city,
                        "state" => $state, "code_state" =>  $codestate);
        $temp = $this->model->updateObj_payment($data);
        if($temp){
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }      
        $this->view->render('setting/update_payment');
    }
/////////////////////////////////////////////////////////////////////////////////////////////////////
    function check_code(){
        $code = base64_decode($_REQUEST['code']);
        $apikey = "01H2S7KFPP3YAGE7HSRP5BM0M3";
        $json = file_get_contents("https://api.zipcodestack.com/v1/search?codes=".$code."&country=us&apikey=".$apikey);
        $data = json_decode($json, true);
        if(count($data['results']) == 0){
            $jsonObj['msg'] = "Invalid zip code";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Valid zip code";
            $jsonObj['success'] = true;
            $jsonObj['results'] = $data['results'];
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render('setting/check_code');
    }
}
?>
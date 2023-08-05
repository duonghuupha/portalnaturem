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
        $machinable = (isset($_REQUEST['machinable']) && $_REQUEST['machinable'] != '') ? 1: 0;
        $data = array("zip_code" => $zipcode, "address" => $address, "city" => $city,
                        "state" => $state, "code_state" =>  $codestate, 'machinable' => $machinable);
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

    function cal_price(){
        $fromcode = base64_decode($_REQUEST['fromcode']); $tocode = base64_decode($_REQUEST['tocode']);
        $pounds = base64_decode($_REQUEST['pounds']); $ounces = base64_decode($_REQUEST['ounces']);

        /////////////////////////////////////////////////////////////////////////////////////////////
        $input_xml = <<<EOXML
        <RateV4Request USERID="9SVKHEZ345713" PASSWORD="I4784LR04T2714A">
            <Revision>2</Revision>
            <Package ID="0">
                <Service>GROUND ADVANTAGE</Service>
                <ZipOrigination>$fromcode</ZipOrigination>
                <ZipDestination>$tocode</ZipDestination>
                <Pounds>$pounds</Pounds>
                <Ounces>$ounces</Ounces>
                <Container></Container>
                <Width></Width>
                <Length></Length>
                <Height></Height>
                <Girth></Girth>
                <Machinable>TRUE</Machinable>
            </Package>
        </RateV4Request>
        EOXML;
        $fields = array(
            'API' => 'RateV4',
            'XML' => $input_xml
        );
        $url = 'https://secure.shippingapis.com/ShippingAPI.dll?' . http_build_query($fields);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 300);
        $data = curl_exec($ch);
        curl_close($ch);
        $array_data = json_encode(simplexml_load_string($data));
        //////////////////////////////////////////////////////////////////////////////////
        $this->view->jsonObj = $array_data;
        $this->view->render("setting/cal_price");
    }
}
?>
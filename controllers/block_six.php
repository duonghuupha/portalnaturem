<?php
class Block_six extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function form(){
        $jsonObj= $this->model->get_info();
        $this->view->jsonObj = $jsonObj;
        $this->view->render("block_six/form");
    }

    function update(){
        $title = $_REQUEST['title_block_6']; $number = $_REQUEST['number_post_block_6'];
        $data = array("title" => $title, "number_post" => $number);
        $temp = $this->model->updateObj($data);
        if($temp){
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("block_six/update");
    }
}
?>

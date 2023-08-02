<?php
class Block_three extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function form(){
        $jsonObj= $this->model->get_info();
        $this->view->jsonObj = $jsonObj;
        $this->view->render("block_three/form");
    }

    function list_pro(){
        $rows = 10;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_product($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; //$this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('block_three/list_pro');
    }

    function list_pro_page(){
        $rows = 10;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_product_total($keyword, $offset, $rows);
        $this->view->total = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('block_three/list_pro_page');
    }

    function update(){
        $title1 = $_REQUEST['title_1_block_3']; $title2 = $_REQUEST['title_2_block_3'];
        $desc = $_REQUEST['desc_block_3']; $dataid = $_REQUEST['data_id_block_3'];
        $data = array("title_1" => $title1, "title_2" => $title2, "data_id" => $dataid,
                        "description" => $desc);
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
        $this->view->render("block_three/update");
    }
}
?>

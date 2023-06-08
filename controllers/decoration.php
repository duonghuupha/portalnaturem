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

    function block_one(){
        $jsonObj = $this->model->get_data_block_one();
        $this->view->jsonObj = json_encode($jsonObj[0]);
        $this->view->render("decoration/block_one");
    }

    function block_three(){
        $jsonObj = $this->model->get_data_block_three();
        $this->view->jsonObj = json_encode($jsonObj[0]);
        $this->view->render("decoration/block_three");
    }

    function update_block_one(){
        $dataid = implode(",", $_REQUEST['pro_cate_block_1']);
        $titlebtn = $_REQUEST['title_btn_block_1']; $linkbtn = $_REQUEST['link_btn_block_1'];
        $data = array("data_id" => $dataid, "title_btn" => $titlebtn, "link_btn" => $linkbtn);
        $temp = $this->model->updateObj_block_one($data);
        if($temp){
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("decoration/update_block_one");
    }

    function list_pro(){
        $rows = 10;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_pro($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('decoration/list_pro');
    }

    function update_block_three(){
        $title1 = $_REQUEST['title_block_3_1']; $title2 = $_REQUEST['title_block_3_2'];
        $typedata = $_REQUEST['type_data'];
        if($typedata == 1){
            $dataid = implode(",", $_REQUEST['pro_cate_block_3']);
        }else{
            $dataid = $_REQUEST['data_id'];
        }
        $data = array("title_1" => $title1, "title_2" => $title2, "type_data" => $typedata,
                        "data_id" => $dataid);
        $temp = $this->model->updateObj_block_three($data);
        if($temp){
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("decoration/update_block_three");
    }

    function list_pro_4(){
        $rows = 10;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_pro($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('decoration/list_pro_4');
    }

    function update_block_five(){
        
    }

}
?>
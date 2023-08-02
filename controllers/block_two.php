<?php
class Block_two extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function form(){
        $jsonObj= $this->model->get_info();
        $this->view->jsonObj = $jsonObj;
        $this->view->cate = $this->model->get_data_cate();
        $this->view->render("block_two/form");
    }

    function list_pro(){
        $rows = 5;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_product($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('block_two/list_pro');
    }

    function update(){
        $title = $_REQUEST['title_block_2']; $type = $_REQUEST['type_data'];
        if($type == 1){
            $link = implode(",", $_REQUEST['pro_cate_block_2']);
        }else{
            $link = $_REQUEST['data_id'];
        }
        $data = array("title" => $title, "type_data" => $type, "link" => $link);
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
        $this->view->render("block_two/update");
    }
}
?>

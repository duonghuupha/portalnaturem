<?php
class Block_four extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function form(){
        $jsonObj= $this->model->get_info();
        $this->view->jsonObj = $jsonObj;
        $this->view->render("block_four/form");
    }

    function list_pro(){
        $rows = 10;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_product($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; //$this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('block_four/list_pro');
    }

    function list_pro_page(){
        $rows = 10;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->get_data_product_total($keyword, $offset, $rows);
        $this->view->total = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('block_four/list_pro_page');
    }

    function update(){
        $title = $_REQUEST['title_block_4']; $desc = $_REQUEST['desc_block_4']; 
        $pro1 = $_REQUEST['pro_id_1_block_4']; $pro2 = $_REQUEST['pro_id_2_block_4'];
        $imgold = $_REQUEST['image_old_block_4'];
        $image = ($_FILES['image_block_4']['name'] != '') ? $this->_Convert->convert_file($_FILES['image_block_4']['name'], 'img_block_4') : $imgold;
        $data = array("title" => $title, "image" => $image, "pro_id_1" => $pro1, "pro_id_2" => $pro2,
                        "description" => $desc);
        $temp = $this->model->updateObj($data);
        if($temp){
            if($_FILES['image_block_4']['name'] != ''){
                unlink(DIR_UPLOAD.'/images/other/'.$imgold);
                move_uploaded_file($_FILES['image_block_4']['tmp_name'], DIR_UPLOAD.'/images/other/'.$image);
            }
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("block_four/update");
    }
}
?>

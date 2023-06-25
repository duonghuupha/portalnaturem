<?php
class Slider extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function index(){
        require('layouts/header.php');
        $this->view->render('slider/index');
        require('layouts/footer.php');
    }

    function json(){
        $rows = 15;
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->getFetObj($offset, $rows);
        $this->view->jsonObj = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('slider/json');
    }

    function add(){
        $title1 = $_REQUEST['title_1']; $title2 = $_REQUEST['title_2'];
        $titlebtn = $_REQUEST['title_btn']; $linkbtn = $_REQUEST['link_btn'];
        $image = $this->_Convert->convert_file($_FILES['image']['name'], 'slider');
        $data = array("title_1" => $title1, "title_2" => $title2, "title_btn" => $titlebtn,
                        "link_btn" => $linkbtn, "image" => $image, "active" => 1);
        $temp = $this->model->addObj($data);
        if($temp){
            move_uploaded_file($_FILES['image']['tmp_name'], DIR_UPLOAD.'/images/slider/'.$image);
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("slider/add");
    }

    function update(){
        $id = base64_decode($_REQUEST['id']); $imageold = $_REQUEST['image_old'];
        $title1 = $_REQUEST['title_1']; $title2 = $_REQUEST['title_2'];
        $titlebtn = $_REQUEST['title_btn']; $linkbtn = $_REQUEST['link_btn'];
        $image = ($_FILES['image']['name'] != '') ? $this->_Convert->convert_file($_FILES['image']['name'], 'slider') : $imageold;
        $data = array("title_1" => $title1, "title_2" => $title2, "title_btn" => $titlebtn,
                        "link_btn" => $linkbtn, "image" => $image);
        $temp = $this->model->updateObj($id, $data);
        if($temp){
            if($_FILES['image']['image'] != ''){
                move_uploaded_file($_FILES['image']['tmp_name'], DIR_UPLOAD.'/images/slider/'.$image);
            }
            $jsonObj['msg'] = "Ghi dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Ghi dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("slider/update");
    }

    function del(){
        $id = base64_decode($_REQUEST['id']);
        $detail = $this->model->get_info($id);
        $temp = $this->model->delObj($id);
        if($temp){
            unlink(DIR_UPLOAD.'/images/slider/'.$detail[0]['image']);
            $jsonObj['msg'] = "Xóa dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Xóa dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("slider/del");
    }

    function change(){
        $id = base64_decode($_REQUEST['id']); $status = $_REQUEST['status'];
        $data = array("active" => $status);
        $temp = $this->model->updateObj($id, $data);
        if($temp){
            $jsonObj['msg'] = "Cập nhật dữ liệu thành công";
            $jsonObj['success'] = true;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $jsonObj['msg'] = "Cập nhật dữ liệu không thành công";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }
        $this->view->render("slider/change");
    }

    function info(){
        $id = base64_decode($_REQUEST['id']);
        $jsonObj = $this->model->get_info($id);
        $this->view->jsonObj = json_encode($jsonObj[0]);
        $this->view->render("slider/info");
    }
}
?>
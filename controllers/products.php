<?php
class Products extends Controller{
    function __construct(){
        parent::__construct();
        parent::PhadhInt();
    }

    function index(){
        require('layouts/header.php');
        $this->view->render('products/index');
        require('layouts/footer.php');
    }


    function json(){
        $rows = 15;
        $keyword = isset($_REQUEST['q']) ? str_replace("$", " ", $_REQUEST['q']) : '';
        $get_pages = isset($_REQUEST['page']) ? $_REQUEST['page'] : 1;
        $offset = ($get_pages-1)*$rows;
        $jsonObj = $this->model->getFetObj($keyword, $offset, $rows);
        $this->view->jsonObj = $jsonObj; $this->view->perpage = $rows; $this->view->page = $get_pages;
        $this->view->render('products/json');
    }

    function add(){
        $code = $_REQUEST['code']; $cateid = $_REQUEST['cate_id']; $stock = $_REQUEST['stock'];
        $price = str_replace(",", "", $_REQUEST['price']); $weight = $_REQUEST['weight'];
        $long = $_REQUEST['longs']; $wide = $_REQUEST['wide']; $hight = $_REQUEST['hight'];
        $title = $_REQUEST['title']; $desc = addslashes($_REQUEST['décription']);
        $tags = $_REQUEST['tags'];
        if($this->model->dupliObj(0, $code) > 0){
            $jsonObj['msg'] = "Mã sản phẩm đã tồn tại";
            $jsonObj['success'] = false;
            $this->view->jsonObj = json_encode($jsonObj);
        }else{
            $data = array("code" => $code, "cate_id" => $cateid, "title" => $title, "stock" => $stock,
                        "description" => $desc, "price" => $price, "tags" => $tags, "longs" => $long,
                        "wide" => $wide, "hight" => $hight, "weight" => $weight, "active" => 1,
                        "create_at" => date("Y-m-d H:i:s"), 'link_amazone' => '', "alias" => '');
            $temp = $this->model->addObj($data);
            if($temp){
                // upload image product
                $dir = DIR_UPLOAD.'/images/product/'.$code;
                if(!file_exists($dir)){ // check exit dir
                    mkdir($dir, 777); // create folder 
                }
                for($i = 1; $i <= 6; $i++){
                    if($_FILES['image_'.$i]['name'] != ''){ // check image 
                        $image = $this->_Convert->convert_file($_FILES['image_'.$i]['name'],'image_product_'.$i);
                        $data_img = array("code" => $code, "image" => $image, "title" => $title);
                        $tmp = $this->model->addObj_image($data_img);
                        move_uploaded_file($_FILES['image_'.$i]['tmp_name'], $dir.'/'.$image);
                    }
                }
                $jsonObj['msg'] = "Ghi dỮ liệu thành công";
                $jsonObj['success'] = true;
                $this->view->jsonObj = json_encode($jsonObj);
            }else{
                $jsonObj['msg'] = "Ghi dỮ liệu không thành công";
                $jsonObj['success'] = false;
                $this->view->jsonObj = json_encode($jsonObj);
            }
        }
        $this->view->render("products/add");
    }

    function update(){

    }

    function del(){

    }

    function change(){
        
    }
}
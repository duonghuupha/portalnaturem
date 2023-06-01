<?php
class Products_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE title LIKE '%$q%'");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, code, title, cate_id, stock, price, active, create_at,
                                    (SELECT tbl_category.title FROM tbl_category WHERE tbl_category.id = cate_id)
                                    AS category FROM tbl_product WHERE title LIKE '%$q%' ORDER BY id DESC LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows']  = $query->fetchAll();
        return $result;
    }

    function dupliObj($id, $code){
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE code = '$code'");
        if($id > 0){
            $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE code = '$code'
                                        AND id != $id");
        }
        $row = $query->fetchAll();
        return $row[0]['Total'];
    }

    function addObj($data){
        $query = $this->insert("tbl_product", $data);
        return $query;
    }

    function updateObj($id, $data){
        $query = $this->update("tbl_product", $data, "id = $id");
        return $query;
    }

    function updateObj_by_code($code, $data){
        $query = $this->update("tbl_product", $data, "code = $code");
        return $query;
    }

    function delObj($id){
        $query = $this->delete("tbl_product", "id = $id");
        return $query;
    }

    function addObj_image($data){
        $query = $this->insert("tbl_image_product", $data);
        return $query;
    }

    function delObj_image($id){
        $query = $this->delete("tbl_image_product", "id = $id");
        return $query;
    }
///////////////////////////////////////////////////////////////////////////////////////////////////
    function get_info($id){
        $query = $this->db->query("SELECT * FROM tbl_product WHERE id = $id");
        return $query->fetchAll();
    }

    function get_image_pro($code){
        $query = $this->db->query("SELECT id, code, image, title FROM tbl_image_product WHERE code = '$code'");
        return $query->fetchAll();
    }
}
?>
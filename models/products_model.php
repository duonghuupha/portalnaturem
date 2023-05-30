<?php
class Products_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE title LIKE '%$q%'");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, code, title, cate_id, stock, price, active, create_at FROM tbl_product
                                    WHERE title LIKE '%$q%' ORDER BY id DESC LIMIT $offset, $rows");
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
///////////////////////////////////////////////////////////////////////////////////////////////////
    function get_info($id){
        $query = $this->db->query("SELECT * FROM tbl_product WHERE id = $id");
        return $query->fetchAll();
    }
}
?>
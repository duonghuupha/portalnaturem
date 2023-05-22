<?php
class Category_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_category WHERE title LIKE '%$q%'");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, title, image, description, active, code FROM tbl_category
                                    WHERE title LIKE '%$q%' ORDER BY id DESC LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows']  = $query->fetchAll();
        return $result;
    }

    function addObj($data){
        $query = $this->insert("tbl_category", $data);
        return $query;
    }

    function updateObj($id, $data){
        $query = $this->update("tbl_category", $data, "id = $id");
        return $query;
    }

    function updateObj_by_code($code, $data){
        $query = $this->update("tbl_category", $data, "code = $code");
        return $query;
    }

    function delObj($id){
        $query = $this->delete("tbl_category", "id = $id");
        return $query;
    }
///////////////////////////////////////////////////////////////////////////////////////////////////
    function get_info($id){
        $query = $this->db->query("SELECT * FROM tbl_category WHERE id = $id");
        return $query->fetchAll();
    }
}
?>
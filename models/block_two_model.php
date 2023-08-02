<?php
class Block_two_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function get_info(){
        $query = $this->db->query("SELECT * FROM tbl_block_2 WHERE id = 1");
        return $query->fetchAll();
    }

    function updateObj($data){
        $query = $this->update("tbl_block_2", $data, "id = 1");
        return $query;
    }

////////////////////////////////////////////////////////////////////////////////////////////////////
    function get_data_product($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE active = 1
                                    AND title LIKE '%$q%'");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, code, title FROM tbl_product WHERE active = 1
                                    AND title LIKE '%$q%' LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows'] = $query->fetchAll();
        return $result;
    }

    function get_data_cate(){
        $query = $this->db->query("SELECT id, title FROM tbl_category WHERE active = 1");
        return $query->fetchAll();
    }
}
?>
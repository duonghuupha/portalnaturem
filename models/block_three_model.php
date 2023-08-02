<?php
class Block_three_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function get_info(){
        $query = $this->db->query("SELECT id, title_1, title_2, description, data_id, 
                                    (SELECT title FROM tbl_product WHERE tbl_product.id = data_id)
                                    AS title_product FROM tbl_block_3 WHERE id = 1");
        return $query->fetchAll();
    }

    function updateObj($data){
        $query = $this->update("tbl_block_3", $data, "id = 1");
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

    function get_data_product_total($q){
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE active = 1
                                    AND title LIKE '%$q%'");
        $row = $query->fetchAll();
        return $row[0]['Total'];
    }
}
?>
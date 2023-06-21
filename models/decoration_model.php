<?php
class Decoration_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function get_data_block_one(){
        $query = $this->db->query("SELECT id, data_id, title_btn, link_btn FROM tbl_block_1 WHERE id = 1");
        return $query->fetchAll();
    }

    function get_data_block_three(){
        $query = $this->db->query("SELECT * FROM tbl_block_3 WHERE id = 1");
        return $query->fetchAll();
    }

    function get_data_block_five(){
        $query = $this->db->query("SELECT * FROM tbl_block_4 WHERE id = 1");
        return $query->fetchAll();
    }

    function get_data_block_night(){
        $query = $this->db->query("SELECT * FROM tbl_block_9 WHERE id = 1");
        return $query->fetchAll();
    }

    function get_data_block_seven(){
        $query = $this->db->query("SELECT * FROM tbl_block_7 WHERE id = 1");
        return $query->fetchAll();
    }

    function get_data_block_two(){
        $query = $this->db->query("SELECT * FROM tbl_block_2 WHERE id = 1");
        return $query->fetchAll();
    }


    function updateObj_block_one($data){
        $query = $this->update("tbl_block_1", $data, "id = 1");
        return $query;
    }

    function get_data_pro($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_product WHERE title LIKE '%$q%'
                                    AND active = 1");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT code, id, title FROM tbl_product WHERE title LIKE '%$q%'
                                    AND active = 1 LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows'] = $query->fetchAll();
        return $result;
    }

    function updateObj_block_three($data){
        $query = $this->update("tbl_block_3", $data, "id = 1");
        return $query;
    }

    function updateObj_block_five($data){
        $query = $this->update("tbl_block_4", $data, "id = 1");
        return $query;
    }

    function updateObj_block_night($data){
        $query = $this->update("tbl_block_9", $data, "id = 1");
        return $query;
    }

    function updateObj_block_seven($data){
        $query = $this->update("tbl_block_7", $data, "id = 1");
        return $query;
    }

    function updateObj_block_two($data){
        $query = $this->update("tbl_block_2", $data, "id = 1");
        return $query;
    }
}
?>
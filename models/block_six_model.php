<?php
class Block_six_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function get_info(){
        $query = $this->db->query("SELECT id, title, number_post FROM tbl_block_6 WHERE id = 1");
        return $query->fetchAll();
    }

    function updateObj($data){
        $query = $this->update("tbl_block_6", $data, "id = 1");
        return $query;
    }
}
?>
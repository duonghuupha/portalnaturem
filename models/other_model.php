<?php
class Other_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function get_combo_cate(){
        $query = $this->db->query("SELLECT id, title FROM tbl_category WHERE active = 1");
        return $query->fetchAll();
    }
}
?>
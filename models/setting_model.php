<?php
class Setting_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function get_global(){
        $query = $this->db->query("SELECT * FROM tbl_setting_global WHERE id = 1");
        return $query->fetchAll();
    }

    function get_payment(){
        $query = $this->db->query("SELECT * FROM tbl_setting_payment WHERE id = 1");
        return $query->fetchAll();
    }

    function updateObj_global($data){
        $query = $this->update("tbl_setting_global", $data, "id = 1");
        return $query;
    }

    function updateObj_payment($data){
        $query = $this->update("tbl_setting_payment", $data, "id = 1");
        return $query;
    }
}
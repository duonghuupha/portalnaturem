<?php
class Slider_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_slider");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, title_1, title_2, title_btn, link_btn, image, active
                                    FROM tbl_slider ORDER BY id DESC LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows'] = $query->fetchAll();
        return $result;
    }

    function addObj($data){
        $query = $this->insert("tbl_slider", $data);
        return $query;
    }

    function updateObj($id, $data){
        $query = $this->update("tbl_slider", $data, "id = $id");
        return $query;
    }

    function delObj($id){
        $query = $this->delete("tbl_slider", "id = $id");
        return $query;
    }

    function get_info($id){
        $query = $this->db->query("SELECT * FROM tbl_slider WHERE id = $id");
        return $query->fetchAll();
    }
}
?>
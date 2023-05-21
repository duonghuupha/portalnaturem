<?php
class Menu_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_menu WHERE title LIKE '%$q%'");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, parent_id, title, type_menu, position, active, order_menu FROM tbl_menu
                                    WHERE title LIKE '%$q%' ORDER BY id DESC LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows']  = $query->fetchAll();
        return $result;
    }

    function addObj($data){
        $query = $this->insert("tbl_menu", $data);
        return $query;
    }

    function updateObj($id, $data){
        $query = $this->update("tbl_menu", $data, "id = $id");
        return $query;
    }

    function delObj($id){
        $query = $this->delete("tbl_menu", "id = $id");
        return $query;
    }
}
?>
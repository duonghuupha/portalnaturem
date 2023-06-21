<?php
class Customers_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_customer");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, code, firstname, lastname, email, phone, active, create_at
                                    FROM tbl_customer WHERE firstname LIKE '%$q%' OR lastname LIKE '%$q%'
                                    OR email LIKE '%$q%' ORDER BY id DESC LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows'] = $query->fetchAll();
        return $result;
    }
}
?>
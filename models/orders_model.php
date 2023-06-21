<?php
class Orders_Model extends Model{
    function __construct(){
        parent::__construct();
    }

    function getFetObj($q, $offset, $rows){
        $result = array();
        $query = $this->db->query("SELECT COUNT(*) AS Total FROM tbl_orders");
        $row = $query->fetchAll();
        $query = $this->db->query("SELECT id, code, cus_id, create_at, coupon, address_id, comment, status,
                                    auth_code, transid, (SELECT firstname FROM tbl_customer WHERE tbl_customer.id = cus_id)
                                    AS firstname, (SELECT lastname FROM tbl_customer WHERE tbl_customer.id = cus_id) AS lastname 
                                    FROM tbl_orders ORDER BY id DESC LIMIT $offset, $rows");
        $result['total'] = $row[0]['Total'];
        $result['rows'] = $query->fetchAll();
        return $result;
    }

    function get_detail($id){
        $query = $this->db->query("SELECT id, code, cus_id, create_at, coupon, address_id, comment,
                                    status, auth_code, transid FROM tbl_orders WHERE id = $id");
        return $query->fetchAll();
    }

    function get_detail_order($code){
        $query = $this->db->query("SELECT id, code, product_id, qty, price_old, price_new, combo_code,
                                    (SELECT title FROM tbl_product WHERE tbl_product.id = product_id) AS title,
                                    (SELECT tbl_product.code FROM tbl_product WHERE tbl_product.id = product_id) AS code_sp
                                    FROM tbl_orders_detail WHERE code = $code");
        return $query->fetchAll();
    }
/////////////////////////////////////////////////////////////////////////////////////////////////
    function get_add($id){
        $query = $this->db->query("SELECT * FROM tbl_address WHERE id = $id");
        return $query->fetchAll();
    }

    function get_cus($id){
        $query = $this->db->query("SELECT * FROM tbl_customer WHERE id = $id");
        return $query->fetchAll();
    }
}
?>
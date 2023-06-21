<?php
$jsonObj = $this->jsonObj; $perpage = $this->perpage; $pages = $this->page;
?>
<table 
    id="dynamic-table" 
    class="table table-striped table-bordered table-hover dataTable no-footer" 
    role="grid"
    aria-describedby="dynamic-table_info">
    <thead>
        <tr role="row">
            <th class="text-center" style="width:20px" rowspan="2">#</th>
            <th class="text-center" style="width:80px" rowspan="2">Mã ĐH</th>
            <th class="text-center" style="width:180px;" rowspan="2">Ngày đặt đơn</th>
            <th class="text-center" colspan="2">Khách hàng</th>
            <th class="text-center" rowspan="2">Mã giảm giá</th>
            <th class="text-center" rowspan="2">Auth code</th>
            <th class="text-center" rowspan="2">TransId</th>
            <th class="text-center" style="width:80px;" rowspan="2">Trạng thái</th>
        </tr>
        <tr>
            <th class="text-left">Firtname</th>
            <th class="text-left">Lasttname</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 0;
        foreach($jsonObj['rows'] as $row){
            $i++;
            $class = ($i%2 == 0) ? 'even' : 'odd'; 
        ?>
        <tr role="row" class="<?php echo $class ?>">
            <td class="text-center"><?php echo $i ?></td>
            <td class="text-center">
                <a href="javascript:void(0)" onclick="detail(<?php echo $row['id'] ?>)">
                    <?php echo $row['code'] ?>
                </a>
            </td>
            <td class="text-center">
                <?php echo date("H:i:s d-m-Y", strtotime($row['create_at'])) ?>
            </td>
            <td class="text-left"><?php echo $row['firstname'] ?></td>
            <td class="text-left"><?php echo $row['lastname'] ?></td>
            <td class="text-center"><?php echo $row['coupon'] ?></td>
            <td class="text-center"><?php echo $row['auth_code'] ?></td>
            <td class="text-center"><?php echo $row['transid'] ?></td>
            <td class="text-center">
                <?php
                if($row['status'] == 1){
                    echo '<span class="label label-sm label-success">Đã thanh toán</span>';
                }else if($row['status'] == 0){
                    echo '<span class="label label-sm label-inverse">Chưa thanh toán</span>';
                }else{
                    echo '<span class="label label-sm label-warning">Thanh toán không thành công</span>';
                }
                ?>
            </td>
        </tr>
        <?php
        }
        ?>
    </tbody>
</table>
<div class="row mini">
    <div class="col-xs-12 col-sm-6">
        <div class="dataTables_info" id="dynamic-table_info" role="status" aria-live="polite">
            <?php echo $this->_Convert->return_show_entries($jsonObj['total'], $perpage,  $pages) ?>
        </div>
    </div>
    <div class="col-xs-12 col-sm-6">
        <?php
        if($jsonObj['total'] > $perpage){
            $pagination = $this->_Convert->pagination($jsonObj['total'], $pages, $perpage);
            $createlink = $this->_Convert->createLinks($jsonObj['total'], $perpage, $pagination['number'], 'view_page_order', 1);
        ?>
        <div class="dataTables_paginate paging_simple_numbers" id="dynamic-table_paginate">
            <ul class="pagination">
                <?php echo $createlink ?>
            </ul>
        </div>
        <?php
        }
        ?>
    </div>
</div>
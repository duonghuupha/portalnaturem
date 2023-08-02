<?php
$jsonObj = $this->jsonObj; $perpage = $this->perpage; $pages = $this->page;
$array_id = (isset($_REQUEST['data'])) ? explode(",", base64_decode($_REQUEST['data'])) : [];
?>
<table 
    id="dynamic-table" 
    class="table table-striped table-bordered table-hover dataTable no-footer" 
    role="grid"
    aria-describedby="dynamic-table_info">
    <thead>
        <tr role="row">
            <th class="text-center" style="width:20px">#</th>
            <th class="text-center" style="width:120px">Mã sản phẩm</th>
            <th class="">Tiêu đề</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <?php
        $i = 0;
        foreach($jsonObj['rows'] as $row){
            $i++;
            $class = ($i%2 == 0) ? 'even' : 'odd'; 
            $checked = in_array($row['id'], $array_id) ? 'checked=""' : '';
        ?>
        <tr role="row" class="<?php echo $class ?>">
            <td class="text-center"><?php echo $i ?></td>
            <td class="text-center"><?php echo $row['code'] ?></td>
            <td id="titlepro_<?php echo $row['id'] ?>"><?php echo $row['title'] ?></td>
            <td class="text-center">
                <input type="checkbox" id="ck_block_2_<?php echo $row['id'] ?>" onclick="confirm_pro_block_2(<?php echo $row['id'] ?>)"
                class="ck_block_2" <?php echo $checked ?>/>
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
            $createlink = $this->_Convert->createLinks($jsonObj['total'], $perpage, $pagination['number'], 'view_page_pro', 1);
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
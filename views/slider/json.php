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
            <th class="text-center" style="width:20px">#</th>
            <th class="text-center" style="width:120px;">Hình ảnh</th>
            <th class="" style="width:350px;">Tiêu đề 1</th>
            <th class="" style="width:350px;">Tiêu đề 2</th>
            <th class="" style="width:250px;">Tiêu đề button</th>
            <th class="" style="width:250px;">Link button</th>
            <th class="text-center" style="width:100px;">Kích hoạt</th>
            <th class="text-center" style="width:100px;">Thao tác</th>
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
                <img src="<?php echo URL.'/public/images/slider/'.$row['image'] ?>" width="50"/>
            </td>
            <td class=""><?php echo $row['title_1'] ?></td>
            <td class=""><?php echo $row['title_2'] ?></td>
            <td class=""><?php echo $row['title_btn'] ?></td>
            <td class=""><?php echo $row['link_btn'] ?></td>
            <td class="text-center">
                <?php
                if($row['active'] == 1){
                    echo '<a href="javascript:void(0)" onclick="change('.$row['id'].', 0)"><img src="'.URL.'/styles/images/publish.png"/></a>';
                }else{
                    echo '<a href="javascript:void(0)" onclick="change('.$row['id'].', 1)"><img src="'.URL.'/styles/images/unpublish.png"/></a>';

                }
                ?>
            </td>
            <td class="text-center">
                <div class="action-buttons">
                    <a class="green" href="javascript:void(0)" onclick="edit(<?php echo $row['id'] ?>)">
                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                    </a>
                    <a class="red" href="javascript:void(0)" onclick="del(<?php echo $row['id'] ?>)">
                        <i class="ace-icon fa fa-trash bigger-130"></i>
                    </a>
                </div>
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
            $createlink = $this->_Convert->createLinks($jsonObj['total'], $perpage, $pagination['number'], 'view_page_slider', 1);
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
<?php $item = $this->jsonObj; ?>
<form id="fm-block-2" method="post">
    <input id="type_data" name="type_data" type="hidden" value="<?php echo $item[0]['type_data'] ?>" required=""/>
    <input id="data_id" name="data_id" type="hidden" value="<?php echo ($item[0]['type_data'] == 1) ? '' : $item[0]['link'] ?>"/>
    <div class="col-xs-12">
        <div class="form-group">
            <label for="form-field-username">Tiêu đề</label>
            <div>
                <input id="title_block_2" name="title_block_2" class="form-control" placeholder="Tiêu đề"
                style="width:100%" required="" value="<?php echo $item[0]['title'] ?>">
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group">
            <label for="form-field-username">
                Lựa chọn danh mục sản phẩm
                <input id="typedata1" name="typedata1" value="1" type="checkbox" onclick="set_type(1)"
                <?php echo ($item[0]['type_data'] == 1) ? 'checked=""' : '' ?>/>
            </label>
            <div>
                <select id="pro_cate_block_2" name="pro_cate_block_2[]" class="select2"
                data-placeholder="Lựa chọn danh mục" style="width:100%" multiple=""
                <?php echo ($item[0]['type_data'] == 2) ? 'disabled=""' : '' ?>>
                    <option value="">Lựa chọn danh mục</option>
                    <?php
                    $array_cate = explode(",", $item[0]['link']);
                    foreach($this->cate as $row){
                        if($item[0]['type_data'] == 1){
                            $selected = in_array($row['id'], $array_cate) ? 'selected' : '';
                        }else{
                            $selected = '';
                        }
                        echo '<option value="'.$row['id'].'" '.$selected.'>'.$row['title'].'</option>';
                    }
                    ?>
                </select>
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group">
            <label for="form-field-username">
                Lựa chọn sản phẩm (8 sản phẩm)
                <input id="typedata2" name="typedata2" value="2" type="checkbox" onclick="set_type(2)"
                <?php echo ($item[0]['type_data'] == 2) ? 'checked=""' : '' ?>/>
            </label>
            <?php
            if($item[0]['type_data'] == 2){
                echo "
                <script>
                    $(function(){
                        $('#list_data_block_2').load(baseUrl + '/block_two/list_pro?data=".base64_encode($item[0]['link'])."');
                    });
                </script>
                ";
            }
            ?>
            <div id="list_data_block_2" class="dataTables_wrapper form-inline no-footer">
                
            </div>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <button class="btn btn-sm btn-primary" type="button" onclick="save_block_2()">
            <i class="ace-icon fa fa-save"></i>
            Ghi dữ liệu
        </button>
    </div>
</form>
<script>
$(function(){
    $('.select2').select2();
});
</script>
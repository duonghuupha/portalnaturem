<div class="modal-header no-padding">
    <div class="table-header">
        Thêm mới - Cập nhật Ảnh ADV
    </div>
</div>
<div class="modal-body">
    <div class="row">
        <form id="fm-block-7" method="post" enctype="multipart/form-data">
            <input id="image_old_block_7" name="image_old_block_7" type="hidden" value="<?php echo (isset($_REQUEST['id'])) ? $this->jsonObj[0]['image'] : '' ?>"/>
            <?php
            if(isset($_REQUEST['id'])){
            ?>
            <div class="col-xs-12 text-center">
                <img src="<?php echo URL.'/public/images/other/'.$this->jsonObj[0]['image'] ?>" width="20%"/>
            </div>
            <?php
            }
            ?>
            <div class="col-xs-12">
                <div class="form-group">
                    <label for="form-field-username">Hình ảnh (600 x 390)</label>
                    <div>
                        <input type="file" id="image_block_7" name="image_block_7" class="file_attach" style="width:100%"
                        <?php echo (isset($_REQUEST['id'])) ? '' : 'required=""' ?> onchange="check_size_block_7()"/>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="modal-footer">
    <button class="btn btn-sm btn-danger pull-left" data-dismiss="modal">
        <i class="ace-icon fa fa-times"></i>
        Đóng
    </button>
    <button class="btn btn-sm btn-primary pull-right" onclick="save_block_seven()">
        <i class="ace-icon fa fa-save"></i>
        Ghi dữ liệu
    </button>
</div>
<script type="text/javascript">
$(function(){
    $('.file_attach').ace_file_input({
        no_file:'Không có file ...',
        btn_choose:'Lựa chọn',
        btn_change:'Thay đổi',
        droppable:false,
        onchange:null,
        thumbnail:true
    });
})
</script>
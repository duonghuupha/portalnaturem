<div class="modal-header no-padding">
    <div class="table-header">
        Thêm mới - Cập nhật Ảnh Slide
    </div>
</div>
<div class="modal-body">
    <div class="row">
        <form id="fm-block-1" method="post" enctype="multipart/form-data">
            <input id="image_old_block_1" name="image_old_block_1" type="hidden" value="<?php echo (isset($_REQUEST['id'])) ? $this->jsonObj[0]['image'] : '' ?>"/>
            <?php
            if(isset($_REQUEST['id'])){
            ?>
            <div class="col-xs-12 text-center">
                <img src="<?php echo URL.'/public/images/slider/'.$this->jsonObj[0]['image'] ?>" width="30%"/>
            </div>
            <?php
            }
            ?>
            <div class="col-xs-12">
                <div class="form-group">
                    <label for="form-field-username">Tiêu đề 1</label>
                    <div>
                        <input type="text" id="title_1_block_1" name="title_1_block_1" class="form-comtrol" style="width:100%"
                        required="" value="<?php echo (isset($_REQUEST['id'])) ? $this->jsonObj[0]['title_1'] : '' ?>"/>
                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group">
                    <label for="form-field-username">Tiêu đề 2</label>
                    <div>
                        <input type="text" id="title_2_block_1" name="title_2_block_1" class="form-control" style="width:100%"
                        required="" value="<?php echo (isset($_REQUEST['id'])) ? $this->jsonObj[0]['title_2'] : '' ?>"/>
                    </div>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="form-group">
                    <label for="form-field-username">Hình ảnh (639 x 536)</label>
                    <div>
                        <input type="file" id="image_block_1" name="image_block_1" class="file_attach" style="width:100%"
                        <?php echo (isset($_REQUEST['id'])) ? '' : 'required=""' ?> onchange="check_size()"/>
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
    <button class="btn btn-sm btn-primary pull-right" onclick="save_block_one()">
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
<?php $item = $this->jsonObj; ?>
<form id="fm-block-4" method="post" enctype="multipart/form-data">
    <input id="image_old_block_4" name="image_old_block_4" type="hidden" value="<?php echo $item[0]['image'] ?>"/>
    <input id="pro_id_1_block_4" name="pro_id_1_block_4" type="hidden" required="" value="<?php echo $item[0]['pro_id_1'] ?>"/>
    <input id="pro_id_2_block_4" name="pro_id_2_block_4" type="hidden" required="" value="<?php echo $item[0]['pro_id_2'] ?>"/>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Tiêu đề</label>
            <div>
                <input id="title_block_4" name="title_block_4" class="form-control" placeholder="Tiêu đề"
                style="width:100%" required="" value="<?php echo $item[0]['title'] ?>">
            </div>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Hình ảnh (559 x 572)</label>
            <div>
                <input type="file" id="image_block_4" name="image_block_4" class="file_attach" style="width:100%"
                onchange="check_size_block_4()"/>
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group">
            <label for="form-field-username">
                Nội dung
            </label>
            <div>
                <textarea style="width:100%;height:100px;resize:none" class="form-control" 
                required="" id="desc_block_4" name="desc_block_4"><?php echo $item[0]['description'] ?></textarea>
            </div>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Lựa chọn sản phẩm 1</label>
            <div class="input-group">
                <input type="text" id="single_pro_title_1" name="single_pro_title_1"
                placeholder="Click Go! để lựa chọn" style="width:100%" readonly=""
                value="<?php echo $item[0]['title_product_1'] ?>"/>
                <span class="input-group-btn">
                    <button class="btn btn-sm btn-primary" type="button" onclick="select_pro(1)"
                    id="select_users">
                        <i class="ace-icon fa fa-users bigger-110"></i>
                        Go!
                    </button>
                </span>
            </div>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Lựa chọn sản phẩm 2</label>
            <div class="input-group">
                <input type="text" id="single_pro_title_2" name="single_pro_title_2"
                placeholder="Click Go! để lựa chọn" style="width:100%" readonly=""
                value="<?php echo $item[0]['title_product_2'] ?>"/>
                <span class="input-group-btn">
                    <button class="btn btn-sm btn-primary" type="button" onclick="select_pro(2)"
                    id="select_users">
                        <i class="ace-icon fa fa-users bigger-110"></i>
                        Go!
                    </button>
                </span>
            </div>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <button class="btn btn-sm btn-primary" type="button" onclick="save_block_4()">
            <i class="ace-icon fa fa-save"></i>
            Ghi dữ liệu
        </button>
    </div>
</form>

<!--Form don vi tinh-->
<div id="modal-pro" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header no-padding">
                <div class="table-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <span class="white">×</span>
                    </button>
                    Danh sách sản phẩm
                </div>
            </div>
            <div class="modal-body" style="height:520px;">
                <div class="row">
                    <div class="col-xs-12 col-sm-12">
                        <input class="form-control" id="nav-search-input-pro-block-4" type="text" style="width:100%"
                        placeholder="Tìm kiếm" onkeyup="search_pro_block_4()"/>
                    </div>
                    <div class="col-xs-12">
                        <div class="space-6"></div>
                    </div>
                    <div class="col-xs-12 col-sm-12">
                        <div id="list_data_block_4" class="dataTables_wrapper form-inline no-footer"></div>
                    </div><!-- /.col -->
                </div>
            </div>
            <div class="modal-footer">
                <small class="pull-right" id="pager_pro_block_4">
                    <!--display pagination-->
                </small>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->

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
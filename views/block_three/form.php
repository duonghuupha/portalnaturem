<?php $item = $this->jsonObj; ?>
<form id="fm-block-3" method="post">
    <input id="data_id_block_3" name="data_id_block_3" type="hidden" required="" value="<?php echo $item[0]['data_id'] ?>"/>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Tiêu đề 1</label>
            <div>
                <input id="title_1_block_3" name="title_1_block_3" class="form-control" placeholder="Tiêu đề 1"
                style="width:100%" required="" value="<?php echo $item[0]['title_1'] ?>">
            </div>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Tiêu đề 2</label>
            <div>
                <input id="title_2_block_3" name="title_2_block_3" class="form-control" placeholder="Tiêu đề 2"
                style="width:100%" required="" value="<?php echo $item[0]['title_2'] ?>">
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group">
            <label for="form-field-username">
                Nội dung 
                <small>(150 ký tự)</small>
            </label>
            <div>
                <textarea style="width:100%;height:100px;resize:none" class="form-control" 
                maxlength="150" required="" id="desc_block_3" name="desc_block_3"><?php echo $item[0]['description'] ?></textarea>
            </div>
        </div>
    </div>
    <div class="col-xs-12">
        <div class="form-group">
            <label for="form-field-username">Lựa chọn sản phẩm</label>
            <div class="input-group">
                <input type="text" id="single_pro_title" name="single_pro_title"
                placeholder="Click Go! để lựa chọn" style="width:100%" readonly=""
                value="<?php echo $item[0]['title_product'] ?>"/>
                <span class="input-group-btn">
                    <button class="btn btn-sm btn-primary" type="button" onclick="select_pro()"
                    id="select_users">
                        <i class="ace-icon fa fa-users bigger-110"></i>
                        Go!
                    </button>
                </span>
            </div>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <button class="btn btn-sm btn-primary" type="button" onclick="save_block_3()">
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
                        <input class="form-control" id="nav-search-input-pro" type="text" style="width:100%"
                        placeholder="Tìm kiếm" onkeyup="search_pro()"/>
                    </div>
                    <div class="col-xs-12">
                        <div class="space-6"></div>
                    </div>
                    <div class="col-xs-12 col-sm-12">
                        <div id="list_data_block_3" class="dataTables_wrapper form-inline no-footer"></div>
                    </div><!-- /.col -->
                </div>
            </div>
            <div class="modal-footer">
                <small class="pull-right" id="pager_pro_block_3">
                    <!--display pagination-->
                </small>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->
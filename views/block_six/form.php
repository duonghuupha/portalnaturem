<?php $item = $this->jsonObj; ?>
<form id="fm-block-6" method="post" enctype="multipart/form-data">
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Tiêu đề</label>
            <div>
                <input id="title_block_6" name="title_block_6" class="form-control" placeholder="Tiêu đề"
                style="width:100%" required="" value="<?php echo $item[0]['title'] ?>">
            </div>
        </div>
    </div>
    <div class="col-xs-6">
        <div class="form-group">
            <label for="form-field-username">Số bài viết hiển thị</label>
            <div>
                <input id="number_post_block_6" name="number_post_block_6" class="form-control" placeholder="Số bài viết cần hiển thị"
                style="width:100%" required="" value="<?php echo $item[0]['number_post'] ?>" onkeypress="validate(event)">
            </div>
        </div>
    </div>
    <div class="col-xs-12 text-center">
        <button class="btn btn-sm btn-primary" type="button" onclick="save_block_6()">
            <i class="ace-icon fa fa-save"></i>
            Ghi dữ liệu
        </button>
    </div>
</form>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state breadcrumbs-fixed" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li>
                    <i class="ace-icon fa fa-crop crop-icon"></i>
                    <a href="#">Giao diện</a>
                </li>
                <li class="active">Slider</li>
            </ul>
        </div>
        <div class="page-content">
            <div class="page-header">
                <h1>
                    Quản lý ảnh slider
                    <small class="pull-right">
                        <button type="button" class="btn btn-primary btn-sm" onclick="add()">
                            <i class="fa fa-plus"></i>
                            Thêm mới
                        </button>
                    </small>
                </h1>
            </div><!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12 col-sm-12">
                    <div id="list_data" class="dataTables_wrapper form-inline no-footer"></div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<!--Form don vi tinh-->
<div id="modal-data" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content" id="form">
            <div class="modal-header no-padding">
                <div class="table-header">
                    Thêm mới - Cập nhật hình ảnh slide
                </div>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form id="fm" method="post" enctype="multipart/form-data">
                        <input id="image_old" name="image_old" type="hidden" value="0"/>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Tiêu đề 1</label>
                                <div>
                                    <input type="text" id="title_1" name="title_1" required="" 
                                    placeholder="Tiêu đề 1" style="width:100%" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Tiêu đề 2</label>
                                <div>
                                    <input type="text" id="title_2" name="title_2" required="" 
                                    placeholder="Tiêu đề 2" style="width:100%" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Tiêu đề button</label>
                                <div>
                                    <input type="text" id="title_btn" name="title_btn" required="" 
                                    placeholder="Tiêu đề button" style="width:100%" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Link button</label>
                                <div>
                                    <input type="text" id="link_btn" name="link_btn" required="" 
                                    placeholder="Link button" style="width:100%" />
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="form-field-username">Hình ảnh</label>
                                <div>
                                    <input type="file" id="image" name="image" class="file_attach" style="width:100%"/>
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
                <button class="btn btn-sm btn-primary pull-right" onclick="save()">
                    <i class="ace-icon fa fa-save"></i>
                    Ghi dữ liệu
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->
<script src="<?php echo URL.'/public/' ?>scripts/slider/index.js"></script>
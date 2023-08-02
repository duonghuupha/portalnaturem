<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state breadcrumbs-fixed" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Giao diện</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="page-header">
                <h1>
                    Cài đặt giao diện
                </h1>
            </div><!-- /.page-header -->
            <div class="row">
                <div class="col-xs-6 col-sm-6">
                    <div id="list-data" class="dataTables_wrapper form-inline no-footer"></div>
                </div><!-- /.col -->
                <div class="col-xs-6 col-sm-6">
                    <h3 class="header smaller lighter blue" style="margin-top:0">
                        Cập nhật dữ liệu
                        <small class="pull-right" id="btn_slide">
                            <button type="button" class="btn btn-primary btn-sm" onclick="add_slide()"
                            id="btn_block">
                                <i class="fa fa-plus"></i>
                                Thêm mới
                            </button>
                        </small>
                    </h3>
                    <div id="content-decoration"></div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<!--Form don vi tinh-->
<div id="modal-decoration" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content" id="form-decoration">
            
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->

<script src="<?php echo URL.'/public/' ?>scripts/decoration/index.js"></script>
<script src="<?php echo URL.'/public/' ?>scripts/decoration/block_one.js"></script>
<script src="<?php echo URL.'/public/' ?>scripts/decoration/block_two.js"></script>
<script src="<?php echo URL.'/public/' ?>scripts/decoration/block_three.js"></script>
<script src="<?php echo URL.'/public/' ?>scripts/decoration/block_four.js"></script>
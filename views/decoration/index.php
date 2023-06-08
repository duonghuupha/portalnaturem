<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
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
                    Thiết kế giao diện
                </h1>
            </div><!-- /.page-header -->
            <div class="row">
                <div class="col-xs-12 col-sm-3">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="form-field-username">Lựa chọn block</label>
                                <div>
                                    <select class="select2" data-placeholder="Lựa chọn block"
                                    style="width:100%" id="block_id" name="block_id" onchange="set_img_block(this.value)">
                                        <option value="">Lựa chọn block</option>
                                        <option value="1">Block 1</option>
                                        <option value="2">Block 2</option>
                                        <option value="3">Block 3</option>
                                        <option value="5">Block 4</option>
                                        <option value="6">Block 5</option>
                                        <option value="7">Block 6</option>
                                        <option value="8">Block 7</option>
                                        <option value="9">Block 8</option>
                                        <option value="10">Block 9</option>
                                        <option value="11">Block 10</option>
                                    </select>
                                    <img src=""
                                        width="100%" style="border:1px solid #ccc;margin-top:10px;" id="img_block"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!-- /.col -->
                <div class="col-xs-12 col-sm-9">
                    <div id="block_1">
                        <form id="fm_block_1" method="post">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Lựa chọn danh mục sản phẩm</label>
                                    <div>
                                        <select id="pro_cate_block_1" name="pro_cate_block_1[]" class="select2" required=""
                                        data-placeholder="Lựa chọn danh mục" style="width:100%" multiple=""></select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề nút bấm</label>
                                    <div>
                                        <input id="title_btn_block_1" name="title_btn_block_1" class="form-control"
                                        placeholder="Tiêu đề nút bấm" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Đích nút bấm</label>
                                    <div>
                                        <input id="link_btn_block_1" name="link_btn_block_1" class="form-control"
                                        placeholder="Đích nút bấm" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 text-center">
                                <button class="btn btn-sm btn-primary" type="button" onclick="save_block_1()">
                                    <i class="ace-icon fa fa-save"></i>
                                    Ghi dữ liệu
                                </button>
                            </div>
                        </form>
                    </div>
                    <!------------------------------------------------------------------------------>
                    <div id="block_3">
                        <form id="fm_block_3" method="post">
                            <input id="type_data" name="type_data" type="hidden"/>
                            <input id="data_id" name="data_id" type="hidden"/>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 1</label>
                                    <div>
                                        <input id="title_block_3_1" name="title_block_3_1" class="form-control"
                                        placeholder="Tiêu đề 1" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 2</label>
                                    <div>
                                        <input id="title_block_3_2" name="title_block_3_2" class="form-control"
                                        placeholder="Tiêu đề 2" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">
                                        Lựa chọn danh mục sản phẩm
                                        <input id="typedata1" name="typedata1" value="1" type="checkbox"
                                        onclick="set_type_1()"/>
                                    </label>
                                    <div>
                                        <select id="pro_cate_block_3" name="pro_cate_block_3[]" class="select2"
                                        data-placeholder="Lựa chọn danh mục" style="width:100%" multiple=""></select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">
                                        Lựa chọn sản phẩm
                                        <input id="typedata2" name="typedata2" value="2" type="checkbox"
                                        onclick="set_type_2()"/>
                                    </label>
                                    <div id="list_data_block_3" class="dataTables_wrapper form-inline no-footer">
                                        
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
                    </div>
                    <!------------------------------------------------------------------------------------------>
                    <div id="block_4">
                        <form id="fm_block_4" method="post">
                            <input id="data_id_4" name="data_id_4" type="hidden"/>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 1</label>
                                    <div>
                                        <input id="title_block_4_1" name="title_block_4_1" class="form-control"
                                        placeholder="Tiêu đề 1" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 2</label>
                                    <div>
                                        <input id="title_block_4_2" name="title_block_4_2" class="form-control"
                                        placeholder="Tiêu đề 2" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Nội dung 1</label>
                                    <div>
                                        <input id="content_block_4_1" name="content_block_4_1" class="form-control"
                                        placeholder="Nội dung 1" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Nội dung 2</label>
                                    <div>
                                        <input id="content_block_4_2" name="content_block_4_2" class="form-control"
                                        placeholder="Nội dung 2" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Nội dung 3</label>
                                    <div>
                                        <textarea id="content_block_4_3" name="content_block_4_3" class="form-control"
                                        placeholder="Nội dung 3" style="width:100%;height:100px;resize:none" required=""></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">
                                        Lựa chọn sản phẩm
                                    </label>
                                    <div id="list_data_block_4" class="dataTables_wrapper form-inline no-footer">
                                        
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
                    </div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<script src="<?php echo URL.'/public/' ?>scripts/decoration/index.js"></script>
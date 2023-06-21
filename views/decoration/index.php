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
                    <!--------------------------------------------------------------------------------------------->
                    <div id="block_9">
                        <form id="fm_block_9" method="post">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 1</label>
                                    <div>
                                        <input id="title_block_9_1" name="title_block_9_1" class="form-control"
                                        placeholder="Tiêu đề 1" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 2</label>
                                    <div>
                                        <input id="title_block_9_2" name="title_block_9_2" class="form-control"
                                        placeholder="Tiêu đề 2" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Số lượng tin bài hiển thị</label>
                                    <div>
                                        <input id="number_post_block_9" name="number_post_block_9" class="form-control"
                                        placeholder="Số lượng tin bài hiển thị" style="width:100%" required="" onkeypress="validate(event)">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 text-center">
                                <button class="btn btn-sm btn-primary" type="button" onclick="save_block_9()">
                                    <i class="ace-icon fa fa-save"></i>
                                    Ghi dữ liệu
                                </button>
                            </div>
                        </form>
                    </div>
                    <!--------------------------------------------------------------------------------------->
                    <div id="block_7">
                        <form id="fm_block_7" method="post" enctype="multipart/form-data">
                            <input id="pro_id_1" name="pro_id_1" type="hidden"/>
                            <input id="pro_id_2" name="pro_id_2" type="hidden"/>
                            <input id="image_block_7_old" name="image_block_7_old" type="hidden"/>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Hình ảnh</label>
                                    <div>
                                        <input type="file" id="image_block_7" name="image_block_7" class="file_attach" 
                                        style="width:100%"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 1</label>
                                    <div>
                                        <input id="title_block_7_1" name="title_block_7_1" class="form-control"
                                        placeholder="Tiêu đề 1" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 2</label>
                                    <div>
                                        <input id="title_block_7_2" name="title_block_7_2" class="form-control"
                                        placeholder="Tiêu đề 2" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Nội dung</label>
                                    <div>
                                        <textarea id="content_block_7" name="content_block_7" class="form-control"
                                        placeholder="Nội dung" style="width:100%;height:100px;resize:none" required=""></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group" id="single_product">
                                    <label for="form-field-username">Lựa chọn sản phẩm 1</label>
                                    <div class="input-group">
                                        <input type="text" id="pro_title_1" name="pro_title_1"
                                        placeholder="Click Go! để lựa chọn" style="width:100%" readonly=""/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-sm btn-primary" type="button" onclick="select_pro_1()"
                                            id="select_users">
                                                <i class="ace-icon fa fa-users bigger-110"></i>
                                                Go!
                                            </button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group" id="single_product">
                                    <label for="form-field-username">Lựa chọn sản phẩm 2</label>
                                    <div class="input-group">
                                        <input type="text" id="pro_title_2" name="pro_title_2"
                                        placeholder="Click Go! để lựa chọn" style="width:100%" readonly=""/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-sm btn-primary" type="button" onclick="select_pro_2()"
                                            id="select_users">
                                                <i class="ace-icon fa fa-users bigger-110"></i>
                                                Go!
                                            </button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 text-center">
                                <button class="btn btn-sm btn-primary" type="button" onclick="save_block_7()">
                                    <i class="ace-icon fa fa-save"></i>
                                    Ghi dữ liệu
                                </button>
                            </div>
                        </form>
                    </div>
                    <!----------------------------------------------------------------------------------------->
                    <div id="block_2">
                        <form id="fm_block_2" method="post" enctype="multipart/form-data">
                            <input id="image_block_2_old" name="image_block_2_old" type="hidden"/>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 1</label>
                                    <div>
                                        <input id="title_block_2_1" name="title_block_2_1" class="form-control"
                                        placeholder="Tiêu đề 1" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề 2</label>
                                    <div>
                                        <input id="title_block_2_2" name="title_block_2_2" class="form-control"
                                        placeholder="Tiêu đề 2" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="form-field-username">Hình ảnh</label>
                                    <div>
                                        <input type="file" id="image_block_2" name="image_block_2" class="file_attach" 
                                        style="width:100%"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Nội dung</label>
                                    <div>
                                        <textarea id="content_block_2" name="content_block_2" class="form-control"
                                        placeholder="Nội dung" style="width:100%;height:100px;resize:none" required=""></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiêu đề Button</label>
                                    <div>
                                        <input id="title_btn_block_2" name="title_btn_block_2" class="form-control"
                                        placeholder="Tiêu đề button" style="width:100%" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Link button</label>
                                    <div>
                                        <input id="link_btn_block_2" name="link_btn_block_2" class="form-control"
                                        placeholder="Link button" style="width:100%" required="">
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
                    </div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

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
                        <div id="list_product" class="dataTables_wrapper form-inline no-footer"></div>
                    </div><!-- /.col -->
                </div>
            </div>
            <div class="modal-footer">
                <small class="pull-right" id="pager_pro">
                    <!--display pagination-->
                </small>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->

<script src="<?php echo URL.'/public/' ?>scripts/decoration/index.js"></script>
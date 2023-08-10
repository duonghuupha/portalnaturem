<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state breadcrumbs-fixed" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Sản phẩm</li>
            </ul><!-- /.breadcrumb -->
            <div class="nav-search" id="nav-search">
                <form class="form-search">
                    <span class="input-icon">
                        <input type="text" placeholder="Tìm kiếm ..." class="nav-search-input" id="nav-search-input" autocomplete="off"
                        onkeyup="search()"/>
                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                    </span>
                </form>
            </div><!-- /.nav-search -->
        </div>
        <div class="page-content">
            <div class="page-header">
                <h1>
                    Quản lý sản phẩm
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
    <div class="modal-dialog" style="width:80%">
        <div class="modal-content" id="form">
            <div class="modal-header no-padding">
                <div class="table-header">
                    Thêm mới - Cập nhật thông tin sản phẩm
                </div>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form id="fm" method="post" enctype="multipart/form-data">
                        <input id="id" name="id" type="hidden"/>
                        <input id="data_edit" name="data_edit" type="hidden"/>
                        <input id="noidung" name="noidung" type="hidden"/>
                        <div class="col-xs-4">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">
                                        Mã sản phẩm &nbsp;
                                        <a href="javascript:void(0)" onclick="refresh_code()" title="Làm mới mã sản phẩm">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                    </label>
                                    <div>
                                        <input type="text" id="code" name="code" required="" readonly=""
                                        placeholder="Mã sản phẩm" style="width:100%" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Lựa chọn danh mục</label>
                                    <div>
                                        <select class="select2" id="cate_id" name="cate_id" required=""
                                        data-placeholder="Lựa chọn danh mục" style="width:100%"></select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Số lượng tồn kho</label>
                                    <div>
                                        <input type="text" id="stock" name="stock" required=""
                                        placeholder="Số lượng tồn kho" style="width:100%" onkeypress="validate(event)"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Đơn giá sản phẩm ($)</label>
                                    <div>
                                        <input type="text" id="price" name="price" required=""
                                        placeholder="Đơn giá sản phẩm" style="width:100%" data-type='currency'/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Kích thước đóng gói sản phẩm (cm)</label>
                                    <div>
                                        <div class="col-xs-4">
                                            <input type="text" id="longs" name="longs" required=""
                                            placeholder="L" style="width:100%" onkeypress="validates(event)"/>
                                        </div>
                                        <div class="col-xs-4">
                                            <input type="text" id="wide" name="wide" required=""
                                            placeholder="W" style="width:100%" onkeypress="validates(event)"/>
                                        </div>
                                        <div class="col-xs-4">
                                            <input type="text" id="hight" name="hight" required=""
                                            placeholder="H" style="width:100%" onkeypress="validates(event)"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Cân nặng của sản phẩm (pounds / ounces)</label>
                                    <div>
                                        <div class="col-xs-6">
                                            <input type="text" id="pounds" name="pounds" required=""
                                            placeholder="Pounds" style="width:100%" onkeypress="validate(event)"/>
                                        </div>
                                        <div class="col-xs-6">
                                            <input type="text" id="ounces" name="ounces" required=""
                                            placeholder="Ounces" style="width:100%" onkeypress="validate(event)"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-8" style="border-left:1px solid #307ecc;">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Tên sản phẩm</label>
                                    <div>
                                        <input type="text" id="title" name="title" required=""
                                        placeholder="Tên sản phẩm" style="width:100%" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Mô tả sản phẩm</label>
                                    <div>
                                        <textarea type="text" id="description" name="description" required=""
                                        placeholder="Mô tả sản phẩm" style="width:100%;height:200px;resize:none"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Từ khóa sản phẩm</label>
                                    <div>
                                        <input type="text" id="tags" name="tags[]" required="" class="form-field-tags"
                                        placeholder="Từ khóa sản phẩm" style="width:100%" />
                                    </div>
                                </div>
                            </div>
                            <div class="row col-xs-12">
                                <?php
                                for($i = 1; $i <= 6; $i++){
                                ?>
                                <div class="col-xs-2">
                                    <div class="form-group" id="btn_img_<?php echo $i ?>">
                                        <label for="form-field-username">
                                            <img src="<?php echo URL.'/styles/images/noimg.jpg' ?>" width="100%" style="border:1px solid gray;padding:2px;"
                                            id="img_<?php echo $i ?>" class="image_prev"/>
                                        </label>
                                        <div>
                                            <input type="file" id="image_<?php echo $i ?>" name="image_<?php echo $i ?>" class="file_attach" 
                                            style="width:100%" onchange="upload_img(this, <?php echo $i ?>)"/>
                                        </div>
                                    </div>                                                  
                                </div>
                                <?php
                                }
                                ?>
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

<!--Form don vi tinh-->
<div id="modal-view" class="modal fade" data-keyboard="false" data-backdrop="static">
    <div class="modal-dialog" style="width:80%">
        <div class="modal-content">
            <div class="modal-header no-padding">
                <div class="table-header">
                    Chi tiết sản phẩm
                </div>
            </div>
            <div class="modal-body">
                <div class="row" id="detail_view" style="height:calc(100vh - 200px);overflow:auto">
                    
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-sm btn-danger pull-right" data-dismiss="modal">
                    <i class="ace-icon fa fa-times"></i>
                    Đóng
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->

<script src="<?php echo URL.'/public/' ?>scripts/products/index.js"></script>
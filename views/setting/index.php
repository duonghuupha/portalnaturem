<?php
$global = $this->global;
?>
<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state breadcrumbs-fixed" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Trang chủ</a>
                </li>
                <li class="active">Cài đặt</li>
            </ul><!-- /.breadcrumb -->
        </div>
        <div class="page-content">
            <div class="page-header">
                <h1>
                    
                </h1>
            </div><!-- /.page-header -->
            <div class="row">
                <div class="col-xs-6">
                    <form id="fm-global" method="post" enctype="multipart/form-data">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Email</label>
                                <div>
                                    <input name="email" id="email" required="" class="form-control"
                                    placeholder="Email" style="width:100%" type="text"
                                    value="<?php echo $global[0]['email'] ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Điện thoại</label>
                                <div>
                                    <input name="phone" id="phone" required="" class="form-control"
                                    placeholder="Điện thoại" style="width:100%" type="text"
                                    value="<?php echo $global[0]['phone'] ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="form-field-username">Địa chỉ</label>
                                <div>
                                    <input name="address" id="address" required="" class="form-control"
                                    placeholder="Địa chỉ" style="width:100%" type="text"
                                    value="<?php echo $global[0]['address'] ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 text-center">
                            <button class="btn btn-sm btn-primary" onclick="save_global()" type="button">
                                <i class="ace-icon fa fa-save"></i>
                                Ghi dữ liệu
                            </button>
                        </div>
                    </form>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label for="form-field-username">Giờ làm việc</label>
                        <div>
                            <input name="time_work" id="time_work" required="" class="form-control"
                            placeholder="Thời gian làm việc" style="width:100%" type="text"
                            value="<?php echo $item[0]['time_work'] ?>"/>
                        </div>
                    </div>
                </div>
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->

<script src="<?php echo URL.'/public/' ?>scripts/setting/index.js"></script>
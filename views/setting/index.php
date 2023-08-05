<?php
$global = $this->global; $pay = $this->payment;
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
                    <h3 class="header smaller lighter blue" style="margin-top:0">
                        Cập nhật thông tin website
                    </h3>
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
                    <h3 class="header smaller lighter blue" style="margin-top:0">
                        Cập nhật địa chỉ vận chuyển
                    </h3>
                    <form id="fm-payment" method="post">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Quốc gia</label>
                                <div>
                                    <input name="country" id="country" required="" class="form-control"
                                    placeholder="Quốc gia" style="width:100%" type="text" readonly=""
                                    value="<?php echo $pay[0]['country'] ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Zip code</label>
                                <div>
                                    <input name="zip_code" id="zip_code" required="" class="form-control" maxlength="5"
                                    placeholder="Mã bưu chính" style="width:100%" type="text" onkeypress="validate(event)"
                                    value="<?php echo $pay[0]['zip_code'] ?>" onchange="reload_state()"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Tiểu bang/State</label>
                                <div>
                                    <input name="state" id="state" required="" class="form-control"
                                    placeholder="Tiểu bang/State" style="width:100%" type="text"
                                    value="<?php echo $pay[0]['state'] ?>" readonly=""/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Mã state</label>
                                <div>
                                    <input name="code_state" id="code_state" required="" class="form-control"
                                    placeholder="Mã bưu chính" style="width:100%" type="text"
                                    value="<?php echo $pay[0]['code_state'] ?>" readonly=""/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Thành phố</label>
                                <div>
                                    <input name="city" id="city" required="" class="form-control"
                                    placeholder="Thành phố" style="width:100%" type="text"
                                    value="<?php echo $pay[0]['city'] ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Địa chỉ</label>
                                <div>
                                    <input name="address" id="address" required="" class="form-control"
                                    placeholder="Địa chỉ" style="width:100%" type="text"
                                    value="<?php echo $pay[0]['address'] ?>"/>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="form-field-username">Gia công (Tự đóng gói)</label>
                                <div>
                                    <label>
                                        <input name="machinable" class="ace ace-switch ace-switch-4" type="checkbox"
                                        id="machinable" value="1" checked="">
                                        <span class="lbl"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 text-center">
                            <button class="btn btn-sm btn-warning" onclick="demo_ship()" type="button">
                                <i class="ace-icon fa fa-ship"></i>
                                Ước tính phí ship
                            </button>
                            <button class="btn btn-sm btn-primary" onclick="save_pay()" type="button">
                                <i class="ace-icon fa fa-save"></i>
                                Ghi dữ liệu
                            </button>
                        </div>
                    </form>
                </div>
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
                    Ước tính chi phí vận chuyển sử dụng USPS
                </div>
            </div>
            <div class="modal-body">
                <div class="row">
                    <form id="fm-demo-ship" method="post" enctype="multipart/form-data">
                        <input id="from_code" name="from_code" type="hidden" value="<?php echo $pay[0]['zip_code'] ?>"/>
                        <div class="col-xs-6" style="border-right:1px  solid #307ECC">
                            <div class="col-xs-12">
                                <div class="form-group" style="margin-bottom:0;">
                                    <label for="form-field-username">
                                        <b>Đến</b>    
                                    </label>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Zip code</label>
                                    <div>
                                        <input name="zipcode" id="zipcode" required="" class="form-control" maxlength="5"
                                        placeholder="Mã bưu chính" style="width:100%" type="text" onkeypress="validate(event)"
                                        onchange="demo_check_code()"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Tiểu bang / State</label>
                                    <div>
                                        <input name="demo_state" id="demo_state" required="" class="form-control"
                                        placeholder="State" style="width:100%" type="text" readonly=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Mã tiểu bang / Code state</label>
                                    <div>
                                        <input name="demo_codestate" id="demo_codestate" required="" class="form-control"
                                        placeholder="Code state" style="width:100%" type="text" readonly=""/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Thành phố / City</label>
                                    <div>
                                        <input name="demo_city" id="demo_city" required="" class="form-control"
                                        placeholder="City" style="width:100%" type="text"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="form-field-username">Địa chỉ / Address</label>
                                    <div>
                                        <input name="demo_add" id="demo_add" required="" class="form-control"
                                        placeholder="Địa chỉ" style="width:100%" type="text"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Pounds (1lb = 0.454kg)</label>
                                    <div>
                                        <input name="pounds" id="pounds" required="" class="form-control"
                                        placeholder="Pounds" style="width:100%" type="text" onkeypress="validate(event)"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">Ounces (1oz = 0.028kg)</label>
                                    <div>
                                        <input name="ounces" id="ounces" required="" class="form-control"
                                        placeholder="Ounces" style="width:100%" type="text" onkeypress="validate(event)"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6" id="info_ship">
                            <div class="col-xs-6" id="from_ship">
                                <div class="form-group">
                                    <label for="form-field-username">
                                        <b>Từ</b>    
                                    </label>
                                    <div>
                                        <span><?php echo $pay[0]['address'] ?></span><br/>
                                        <span><?php echo $pay[0]['city'].', '.$pay[0]['state'] ?></span><br/>
                                        <span><?php echo $pay[0]['zip_code'] ?></span><br/>
                                        <span><?php echo $pay[0]['country'] ?></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="form-field-username">
                                        <b>Đến</b>    
                                    </label>
                                    <div>
                                        <span id="to_add"></span><br/>
                                        <span id="to_city_state"></span><br/>
                                        <span id="to_zip"></span><br/>
                                        <span id="to_country"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <table 
                                    id="dynamic-table" 
                                    class="table table-striped table-bordered table-hover dataTable no-footer" 
                                    role="grid"
                                    aria-describedby="dynamic-table_info">
                                    <thead>
                                        <tr role="row">
                                            <th class="text-center" style="width:20px">#</th>
                                            <th class="text-center" style="width:70px">Pounds</th>
                                            <th class="text-center" style="width:70px">Ounces</th>
                                            <th class="text-left">Mail Service</th>
                                            <th class="text-right">Phí vận chuyển ($)</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody">
                                        
                                    </tbody>
                                </table>
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
                <button class="btn btn-sm btn-primary pull-right" onclick="cal_price()">
                    <i class="ace-icon fa fa-money"></i>
                    Tính phí
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- End formm don vi tinh-->

<script src="<?php echo URL.'/public/' ?>scripts/setting/index.js"></script>
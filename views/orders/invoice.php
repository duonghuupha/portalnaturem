<?php
$item = $this->json; $add = $this->add; $cus = $this->cus; $set = $this->setting;
?>
<div class="row" style="margin:0;">
    <div class="col-sm-10 col-sm-offset-1">
        <div class="widget-box transparent">
            <div class="widget-header widget-header-large">
                <h3 class="widget-title grey lighter">
                    <i class="ace-icon fa fa-leaf green"></i>
                    Customer Invoice
                </h3>
                <div class="widget-toolbar no-border invoice-info">
                    <span class="invoice-info-label">Invoice:</span>
                    <span class="red">#<?php echo $item[0]['code'] ?></span>
                    <br />
                    <span class="invoice-info-label">Date:</span>
                    <span class="blue"><?php echo date("H:i:s m/d/Y", strtotime($item[0]['create_at'])) ?></span>
                </div>
                <div class="widget-toolbar hidden-480">
                    <a href="#">
                        <i class="ace-icon fa fa-print"></i>
                    </a>
                </div>
            </div>
            <div class="widget-body">
                <div class="widget-main padding-24">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
                                    <b>Company Info</b>
                                </div>
                            </div>
                            <div>
                                <ul class="list-unstyled spaced">
                                    <li>SVK Herbal Corporation</li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right blue"></i>Street, City: 1810 E Sahara Avenue, Ste 215 Las Vegas
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right blue"></i>Zip Code: 89104
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right blue"></i>State, Country: Nevada, USA
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right blue"></i>
                                        Phone:
                                        <b class="red">+1 (725) 599-3998</b>
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right blue"></i>Email: naturem@gmail.com
                                    </li>
                                </ul>
                            </div>
                        </div><!-- /.col -->

                        <div class="col-sm-6">
                            <div class="row">
                                <div class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
                                    <b>Customer Info</b>
                                </div>
                            </div>
                            <div>
                                <ul class="list-unstyled  spaced">
                                    <li><?php echo $add[0]['firstname'].' '.$add[0]['lastname'] ?></li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right green"></i>Street, City: <?php echo $add[0]['address'].', '.$add[0]['city'] ?>
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right green"></i>Zip Code: <?php echo $add[0]['postcode'] ?>
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right green"></i>State, Country: <?php echo $add[0]['state'].', USA' ?>
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right green"></i>
                                        Phone:
                                        <b class="red"><?php echo $add[0]['phone'] ?></b>
                                    </li>
                                    <li>
                                        <i class="ace-icon fa fa-caret-right green"></i>Email: <?php echo $cus[0]['email'] ?>
                                    </li>
                                </ul>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                    <div class="space"></div>
                    <div>
                        <table class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th class="center">#</th>
                                    <th>Product</th>
                                    <th class="center">Qty</th>
                                    <th class="right">Price</th>
                                    <th class="center">Discount</th>
                                    <th class="right">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $i = 0; $total = 0;
                                foreach($this->detail as $row){
                                    $i++;
                                    $price = $row['qty'] * $row['price_new'];
                                    $total += $price;
                                ?>
                                <tr>
                                    <td class="center"><?php echo $i ?></td>
                                    <td><?php echo $row['title'] ?></td>
                                    <td class="center"><?php echo $row['qty'] ?></td>
                                    <td><?php echo '$'.$row['price_new'] ?></td>
                                    <td class="center"></td>
                                    <td><?php echo '$'.$price ?></td>
                                </tr>
                                <?php
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>

                    <div class="hr hr8 hr-double hr-dotted"></div>

                    <div class="row">
                        <div class="col-sm-12 pull-right">
                            <h4 class="pull-right">
                                Sub Total :
                                <span class="red">$<?php echo $total ?></span>
                            </h4>
                        </div>
                        <div class="col-sm-12 pull-right">
                            <h4 class="pull-right">
                                Shipping :
                                <span class="red">$<?php echo $item[0]['ship_price'] ?></span>
                            </h4>
                        </div>
                        <div class="col-sm-12 pull-right">
                            <h4 class="pull-right">
                                Shipping method:
                                <span class="red">
                                    <?php
                                    if($item[0]['service_ship'] == 1){
                                        echo "Regular";
                                    }elseif($item[0]['service_ship'] == 2){
                                        echo "Fast";
                                    }else{
                                        echo "Express";
                                    }
                                    ?>
                                </span>
                            </h4>
                        </div>
                        <div class="col-sm-5 pull-right">
                            <h4 class="pull-right">
                                Total amount :
                                <span class="red">$<?php echo $total + $item[0]['ship_price'] ?></span>
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
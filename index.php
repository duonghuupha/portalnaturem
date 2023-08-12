<?php
date_default_timezone_set("Asia/Ho_Chi_Minh");
// Use an autoloader!
require 'libs/Bootstrap.php';
require 'libs/Controller.php';
require 'libs/Model.php';
require 'libs/View.php';
require 'libs/Convert.php';
// Library
require 'libs/Database.php';
require 'libs/Session.php';
require 'libs/config/paths.php';
require 'libs/config/database.php'; 
/**
* PHPExcel
*/
require 'libs/PHPExcel/PHPExcel/IOFactory.php';
require "libs/PHPExcel/PHPEXCHelper.php";
require 'libs/PHPExcel/PHPExcel.php';
require 'libs/Excel.php';
$app = new Bootstrap();

?>

<?php
include"menu.php";
?>
<head>
<title> Program K-Means Clustering Menggunakan PHP </title>
</head>
       
	   <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
          <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Data Admin/h1>
                      <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
</head>
<?php 
include 'config.php';
$id = $_GET['id'];
mysql_query("DELETE FROM admin WHERE id='$id'")or die(mysql_error());
 
echo "<script>alert('Data Berhasil Di Hapus');location='admin_tampil.php';</script>";
?>


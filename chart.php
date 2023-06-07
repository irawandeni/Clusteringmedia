<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Clustering</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="">Clustering</a>
            </div>

            <div class="header-right">

                <a href="gambar.php" class="btn btn-info" title="Gambar"><b> </b><i class="fa fa-envelope-o fa-2x"></i></a>
                <a href="kalender.php" class="btn btn-primary" title="Calendar"><b></b><i class="fa fa-bars fa-2x"></i></a>
                <a href="video.php" class="btn btn-info" title="Video"><i class="fa fa-bars fa-2x"></i></a>

            </div>
        </nav>
        <!-- /. NAV TOP  -->

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
                        <h1 class="page-head-line">Data Hasil Perhitungan Cluster Kinerja Guru SDN Jatimulyo</h1>
                      <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
</head>
<?php
include_once("connect.php");
	$sql1 = "SELECT MAX(Cluster)AS hasil FROM iterasi";
	$result1 = $conn->query($sql1);
	$row1 = $result1->fetch_assoc();
	$sql2 = "SELECT SUM(if(min='c1',1,0))AS C1,SUM(if(min='c2',1,0))AS C2, SUM(if(min='c3',1,0))AS C3 FROM iterasi WHERE Cluster = '$row1[hasil]'";
	$result2 = $conn->query($sql2);
	$row2 = $result2->fetch_assoc();
	$sql3 = "SELECT iterasi.*,`data`.Nama, Tugas  FROM iterasi LEFT JOIN `data` ON `data`.ID = iterasi.ID_data WHERE Cluster = '$row1[hasil]'";	
	$result3 = $conn->query($sql3);
?>
		
		<div class="container">


            <!-- /.row -->
            <div class="row">
				<div class="col-md-5">
					<table style="margin-left: auto; margin-right: auto;" class="table table-hover">
						<thead>
							<tr style="height: 25px; background-color: #000080; font-size: 11px;" bgcolor="#000099">
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">Nama</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">Tugas</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">C1 Buruk</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">C2 Cukup</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">C3 Baik</span></strong></td>
							</tr>
						</thead>
						<tbody>	
<?php						
	if ($result3->num_rows > 0) {
		while($row3 = $result3->fetch_assoc()) {	
?>
							<tr style="height: 15px;">
								<td style="text-align: left;">&nbsp;<?php echo $row3['Nama'];?></td>
								<td style="text-align: left;">&nbsp;<?php echo $row3['Tugas'];?></td>
								<td style="text-align: center; <?php if($row3['min']=='c1') echo 'background-color: #ffdd33;';?>">&nbsp;<strong><?php if($row3['min']=='c1') echo '1';?></strong></td>
								<td style="text-align: center; <?php if($row3['min']=='c2') echo 'background-color: #ffdd33;';?>">&nbsp;<strong><?php if($row3['min']=='c2') echo '1';?></strong></td>	
								<td style="text-align: center; <?php if($row3['min']=='c3') echo 'background-color: #ffdd33;';?>">&nbsp;<strong><?php if($row3['min']=='c3') echo '1';?></strong></td>	
							</tr>								
<?php
		}
	}
	mysqli_data_seek($result3,0);
?>	
						</tbody>
						<tfoot>
							<tr style="height: 25px;">
								<td style="text-align: left;"><strong>&nbsp;</strong></td>
								<td style="text-align: right;"><strong>&nbsp;</strong></td>
								<td style="text-align: right;"><strong>&nbsp;</strong></td>
							</tr>
						</tfoot>
					</table>						
				</div>
				 <div class="col-md-12">
					<p><strong style="text-decoration: underline;">Keterangan :</strong></p>
					<p>Jadi  yang termasuk cluster Buruk (C1) , cluster Cukup (C2) dan  cluster Baik (C3) sebagai berikut :</p>
					<p>Cluster Buruk ( C1 )</p>
						<ol>
<?php						
	if ($result3->num_rows > 0) {
		while($row3 = $result3->fetch_assoc()) {	
			if($row3['min']=='c1'){
?>						
							<li><?php echo $row3['Tugas'];?></li>
<?php
			}
		}
	}
	mysqli_data_seek($result3,0);
?>	
						</ol>
					</p>
					<p>Cluster Cukup( C2 )</p>
					<p>
						<ol>
<?php						
	if ($result3->num_rows > 0) {
		while($row3 = $result3->fetch_assoc()) {
			if($row3['min']=='c2'){		
?>						
							<li><?php echo $row3['Tugas'];?></li>
<?php
			}
		}
	}
	mysqli_data_seek($result3,0);
?>	
						</ol>
					</p>

					
					<p>Cluster Baik ( C3 )</p>
					<p>
						<ol>
<?php						
	if ($result3->num_rows > 0) {
		while($row3 = $result3->fetch_assoc()) {
			if($row3['min']=='c3'){		
?>						
							<li><?php echo $row3['Tugas'];?></li>
<?php
			}
		}
	}
	mysqli_data_seek($result3,0);
?>	
						</ol>
					</p>

				 </div>
            </div>

        </div>

		<footer class="footer">
		  <div class="container">
		  </div>
		</footer>

</body>

</html>
<!-- /. ROW  -->

            <div class="row">
              <div class="col-md-8">
                        
                        <!-- /. ROW  -->
                        <hr />

                        <div class="panel panel-default">

                            <div id="carousel-example" class="carousel slide" data-ride="carousel" style="border: 5px solid #000;">

                                <div class="carousel-inner">
                                    <div class="item active">

                                        <img src="assets/img/slideshow/1.jpg" alt="" />

                                    </div>
                                    <div class="item">
                                        <img src="assets/img/slideshow/2.jpg" alt="" />

                                    </div>
                                    <div class="item">
                                        <img src="assets/img/slideshow/3.jpg" alt="" />

                                    </div>
                                </div>
                                <!--INDICATORS-->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example" data-slide-to="1"></li>
                                    <li data-target="#carousel-example" data-slide-to="2"></li>
                                </ol>
                                <!--PREVIUS-NEXT BUTTONS-->
                               
                            </div>
                        </div>
                </div>
                  <!-- /.REVIEWS &  SLIDESHOW  -->
                  <!--/.Chat Panel End-->
                </div>
                <!-- /. ROW  -->


            <div class="row">

              <div class="col-md-8">
                        
                        <br />
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
                        </div>
                </div>
                </div>
                <!--/.Row-->
                <hr />
                <div class="row"></div>
                <!--/.Row-->
                <hr />
                <div class="row" style="padding-bottom: 100px; `"></div>
              <!--/.ROW-->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        &copy; 2020 STMIK AKAKOM YOGYAKARTA | 
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    


</body>
</html>
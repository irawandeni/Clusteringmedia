<?php
error_reporting(0);
?>
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
                <a class="navbar-brand" href="">CLUSTERING</a>
            </div>

            <div class="header-right">

            <a href="gambar.php" class="btn btn-info" title="Gambar"><b> </b><i class="fa fa-envelope-o fa-2x"></i></a>
                <a href="kalender.php" class="btn btn-primary" title="Calendar"><b></b><i class="fa fa-bars fa-2x"></i></a>
                <a href="video.php" class="btn btn-danger" title="Video"><i class="fa fa-exclamation-circle fa-2x"></i></a>


            </div>
        </nav><!-- /. NAV TOP  -->
<?php
include"menu.php";
?> 
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Hasil Clustering Interasi 2</h1>
                        <h1 class="page-subhead-line"> Hasil ...</h1>

                    </div>
                </div>
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-12">
					
   <?php
if($_GET[act]=="lihat"){

  include ('config.php');
  $queryutama = mysql_query("SELECT  *  FROM kasus where idk='$_GET[id]'"); 
    $no = 1;
    while ($data = mysql_fetch_array($queryutama)) {
		 $c1=sqrt((pow(($data[kharga]-21.93681319),2))+(pow(($data[kmenu]-19.07692308),2))+(pow(($data[kfasilitas]-19.19505495),2))+(pow(($data[kjam]-19.28021978),2)));
		 $c2=sqrt((pow(($data[kharga]-25.47368421),2))+(pow(($data[kmenu]-21.57894737),2))+(pow(($data[kfasilitas]-21.63157895),2))+(pow(($data[kjam]-21.8947386),2)));
		 $c3=sqrt((pow(($data[kharga]-27.8),2))+(pow(($data[kmenu]-23.32),2))+(pow(($data[kfasilitas]-23.24),2))+(pow(($data[kjam]-24),2)));
		 
		 
		 $min=min($c1,$c2,$c3);
		 if($min==$c1){
			$hasil="Buruk";
		 }elseif($min==$c2){
			$hasil="Cukup";
		}
		 elseif($min==$c3){
			$hasil="Baik";
		 }
		echo"<h3>Perhitungan ID Kasus $_GET[id]</h3>";
		echo"<p><b>Hitung jarak ID Kasus $_GET[id] terhadap cluster Pertama:</b></p>";
		echo"<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C$_GET[id]1 = √((($data[kharga]-21.93681319)^2)+(($data[kmenu]-19.07692308)^2)+(($data[kfasilitas]-19.19505495)^2)+(($data[kjam]-19.28021978)^2)) = $c1 </p>";
		echo"<p><b>Hitung jarak ID Kasus $_GET[id] terhadap cluster Kedua:</b></p>";
		echo"<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C$_GET[id]2 = √((($data[kharga]-25.47368421)^2)+(($data[kmenu]-21.57894737)^2)+(($data[kfasilitas]-21.63157895)^2)+(($data[kjam]-21.8947386)^2)) = $c2</p>";
		echo"<p><b>Hitung jarak ID Kasus $_GET[id] terhadap cluster Ketiga:</b></p>";
		echo"<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C$_GET[id]3 = √((($data[kharga]-27.8)^2)+(($data[kmenu]-23.32^2)+(($data[kfasilitas]-23.24)^2)+(($data[kjam]-24)^2)) = $c3</p>";
		
		echo"<p><b>jarak terdekat (terkecil) dari pusat cluster: MIN(C$_GET[id]1,C$_GET[id]2,C$_GET[id]3) = MIN($c1,$c2,$c3) = $hasil</b></p>";
		
		$no++;	  

}
 
$no++;	
}else{  

?>
                      <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Nilai Guru Kelas</th>
                                            <th>Pedagogik</th>
                                            <th>Profesional</th>
                                            <th>Kepribadian</th>
                                            <th>Sosial</th>
                                            <th>C1 Buruk</th>
                                            <th>C2 Cukup</th>
                                            <th>C3 Baik</th>
                                            <th>Hasil</th>
                                            <th>Detail Perhitungan</th>
                                        </tr>
                                    </thead>
                                       <tbody>
    
    
  <?php

  include ('config.php');
  $queryutama = mysql_query("SELECT  *  FROM kasus order by idk"); 
    $no = 1;
    while ($data = mysql_fetch_array($queryutama)) {

		 $c1=sqrt((pow(($data[kharga]-21.93681319),2))+(pow(($data[kmenu]-19.07692308),2))+(pow(($data[kfasilitas]-19.19505495),2))+(pow(($data[kjam]-19.28021978),2)));
		 $c2=sqrt((pow(($data[kharga]-25.47368421),2))+(pow(($data[kmenu]-21.57894737),2))+(pow(($data[kfasilitas]-21.63157895),2))+(pow(($data[kjam]-21.89473684),2)));
		 $c3=sqrt((pow(($data[kharga]-27.8),2))+(pow(($data[kmenu]-23.32),2))+(pow(($data[kfasilitas]-23.24),2))+(pow(($data[kjam]-24),2)));
		 
		 
		 $min=min($c1,$c2,$c3);
		 if($min==$c1){
			$hasil=Buruk;
		 }elseif($min==$c2){
			$hasil=Cukup;
		}
		 elseif($min==$c3){
			$hasil=Baik;
		 }
?>
           <tr>
           <td><?php echo $no;  ?></td> 
           <td><?php echo"$data[nama]";  ?></td>
           <td><?php echo $data['kharga']; ?></td>
           <td><?php echo $data['kmenu']; ?></td>
           <td><?php echo $data['kfasilitas']; ?></td>
           <td><?php echo $data['kjam']; ?></td>
           <td><?php echo number_format($c1,2); ?></td>
           <td><?php echo number_format($c2,2); ?></td>
           <td><?php echo number_format($c3,2); ?></td>
           <td><?php echo $hasil; ?></td>
           
		   <td align=center><a href="tampilproses.php?act=lihat&id=<?php echo $data['idk']; ?>" class="btn btn-info">Lihat</a></td>

<?php 
$no++;	
}  

echo"<p><a href='interasi3.php' target='_blank'  class='btn btn-primary'> Interasi Selanjutnya</a></p>";

}
?>
</tr></tbody></table>

                    </div>
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <div id="footer-sec">
        &copy; STMIK AKAKOM YOGYAKARTA
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

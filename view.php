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
                <a href="video.php" class="btn btn-danger" title="Video"><i class="fa fa-exclamation-circle fa-2x"></i></a>

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
                        <h1 class="page-head-line">Data Pertanyaan</h1>
                      <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
</head>

<?php
//Koneksi Basis Data
$mysqli=new mysqli("localhost","root","","clustering");
//Cek Koneksi
if (mysqli_connect_errno()){
	echo "Tidak terhubung";
	exit;
}

//Fungsi mencari kueri single data
function caridata($mysqli,$query){
	$row= $mysqli->query($query)->fetch_array();
	return $row[0];
}

//Inisialisasi Cluster Awal
$jumlahsiswa=caridata($mysqli,"select count(*) from kasus");
echo $jumlahsiswa;
for ($i=0;$i<$jumlahsiswa; $i++) { 
	$clusterawal[$i]="1";
}

//Set Default Nilai Centroid 1,2,3
$centro1[0] = array('22.14285714','19','18.92857143','19.21428571');
$centro2[0] = array('24.65','21.10833333','21.10833333','21.275');
$centro3[0] = array('27.8','23.32','23.24','24');


$status='false';
$loop='0';
$x=0;
while ($status=='false'){
		

	//Proses K-Means Perhitungan
	$query="select * from kasus";
	$result=$mysqli->query($query);
	while ($data=mysqli_fetch_assoc($result)) {
		extract($data);
		$hasilc1=0;
		$hasilc2=0;
		$hasilc3=0;

	
		//Proses Pencarian Nilai Centro 1
		$hasilc1=sqrt(pow($kharga-$centro1[$loop][0],2) +
			pow($kmenu-$centro1[$loop][1],2) + 
			pow($kfasilitas-$centro1[$loop][2],2) + 
			pow($kjam-$centro1[$loop][3],2));
		echo number_format($hasilc1,2);
		echo "<br>";

		//Proses Pencarian Nilai Centro 2
		$hasilc2=sqrt(pow($kharga-$centro2[$loop][0],2) +
			pow($kmenu-$centro2[$loop][1],2) + 
			pow($kfasilitas-$centro2[$loop][2],2) +
			pow($kjam-$centro2[$loop][2],2)); 
		
		//Proses Pencarian Nilai Centro 3
		$hasilc3=sqrt(pow($kharga-$centro3[$loop][0],2) +
			pow($kmenu-$centro3[$loop][1],2) + 
			pow($kfasilitas-$centro3[$loop][2],2) +
			pow($kjam-$centro3[$loop][2],2));

		//Mencari Nilai Terkecil
		if ($hasilc1<$hasilc2 && $hasilc1<$hasilc3){
			$clusterakhir[$x]='C1';
			update_siswa($mysqli,$idk,'C1');

		}else if($hasilc2<$hasilc1 && $hasilc2<$hasilc3){
			$clusterakhir[$x]='C2';
			update_siswa($mysqli,$idk,'C2');

		}else{
			$clusterakhir[$x]='C3';
			update_siswa($mysqli,$idk,'C3');

		}
		//Penambhan Counter Index
		$x+=1;
	}

	$loop+=2;
	//Proses mencari centroid baru ambil dari basis data.
	//Centroid Baru Pusat 1
	$centro1[$loop][0]=caridata($mysqli,"select avg(kharga) from kasus where set_sementara='C1'");
	$centro1[$loop][1]=caridata($mysqli,"select avg(kmenu) from kasus where set_sementara='C1'");
	$centro1[$loop][2]=caridata($mysqli,"select avg(kfasilitas) from kasus where set_sementara='C1'");
	$centro1[$loop][3]=caridata($mysqli,"select avg(kjam) from kasus where set_sementara='C1'");

	//Centroid Baru Pusat 2
	$centro2[$loop][0]=caridata($mysqli,"select avg(kharga) from kasus where set_sementara='C2'");
	$centro2[$loop][1]=caridata($mysqli,"select avg(kmenu) from kasus where set_sementara='C2'");
	$centro2[$loop][2]=caridata($mysqli,"select avg(kfasilitas) from kasus where set_sementara='C2'");
	$centro1[$loop][3]=caridata($mysqli,"select avg(kjam) from kasus where set_sementara='C2'");

	//Centroid Baru Pusat 3
	$centro3[$loop][0]=caridata($mysqli,"select avg(kharga) from kasus where set_sementara='C3'");
	$centro3[$loop][1]=caridata($mysqli,"select avg(kmenu) from kasus where set_sementara='C3'");
	$centro3[$loop][2]=caridata($mysqli,"select avg(kfasilitas) from kasus where set_sementara='C3'");
	$centro1[$loop][3]=caridata($mysqli,"select avg(kjam) from kasus where set_sementara='C3'");

	$status='true';
	for ($i=0;$i<$jumlahsiswa;$i++) { 
		if($clusterawal[$i]!=$clusterakhir[$i]){
			$status='false';
		}
	}

	if($status=='false'){
		$clusterawal=$clusterakhir;
	}
}

echo "Proses berhasil dilakukan sebanyak $loop kali";

function update_siswa($mysqli,$idk,$nilai){

	$stmt=$mysqli->prepare("update kasus set 
		set_sementara=?
		where idk=?");
}
?>
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
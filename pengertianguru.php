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
                        <h1 class="page-head-line"> Pengertian Guru</h1>
                      <h1 class="page-subhead-line"></h1>

                    </div>
                </div>

<center><img src="assets/img/sekolah.jpg" class="img-thumbnail" /></center>
 <p>Guru adalah sosok yang pastiya sering kita temui dimana-mana, di lingkungan tempat tinggal, 
 anggota keluarga dan tentunya disekolah-sekolah. Dalam undang-undang nomor 14 tahun 2005  
 pasal 1 dijabarkan tentang guru dan dosen,  “guru dan dosen adalah pendidik profesional dengan 
 tugas utama mendidik, mengajar, membimbing, mengarahkan, melatih, menilai, dan mengevaluasi peserta didik
 pada pendidikan anak usia dini jalur pendidikan formal, pendidikan dasar, dan pendidikan menengah”.</p>
 <p>Seorang guru memiliki peran yang sangat penting di dalam kelas yakni mendidik , mengajar, membimbing, mengarahkan, melatih, menilai, 
 dan mengevaluasi pembelajaran seperti yang telah dijelaskan dalan Undang-undang diatas.Guru berperan menyampaikan ilmu-ilmu yang dimiliki kepada muridnya.</p>
 <p>Guru merupakan sumber belajar muridnya. Dari gurulah, murid diajarkan membaca, menulis dan berhitung. Serta dari gurulah, 
 murid mendapat pengetahuan baru dan pendidikan karakter. Guru sebagai orangtua kedua yang ada disekolah setelah orangtua kandung dirumah. 
 Prey katz (Aini, 2012), menggambarkan peranan guru sebagai komunikator, sahabat yang dapat memberikan nasihata-nasihat, 
 motivator sebagai pemberi inspirasi dan dorongan, pembimbing dalam pengembangan sikap dan tingkah laku serta nilai-nilai, 
 orang yang menguasai bahan yang diajarkan.</p>
<p>Namun, di zaman yang sudah modern ini, berbagai penemuan baru ditemukan untuk mempermudah manusia dalam menjalankan aktivitasnya. 
Begitupun juga dalam dunia pendidikan. Berbagai teknologi yang disebut-sebut bisa melakukan apa saja dan menjawab apa saja ditemukan guna mempermudah manusia.
 Seperti misalnya Google, yang biasanya disebut Om Google yang dikatakan oleh anak  sekolahan zaman sekarang sebagai pengganti guru. </p>
 <p>Dari google, segala macam hal dapat dicari dan ditemukan hanya dalam hitungan detik, Tidak heran, anak-anak sangat menyukainya dan bahkan bergantung padanya. 
 Bahkan ketika didalam kelas, murid lebih bergantung kepada internet untuk mencari suatu jawaban daripada menanyakan lansung kepada gurunya. 
 Hal ini menyebabkan peran guru mulai tersinggirkan oleh teknologi.</p>
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

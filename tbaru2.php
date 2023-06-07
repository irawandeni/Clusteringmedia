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
        </nav><!-- /. NAV TOP  -->
        <?php
include"menu.php";
?> 
<!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Form Penilaian Kinerja Guru SDN Jatimulyo</h1>
                        <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    Form Kuesioner Kinerja Guru
                </div>
				<form action="tbaru2_masuk.php" method="post">	
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
							<form action="tbaru2_masuk.php" method="post">	
                                    <h2><b>Identitas Responden</b></h2>
									<p><br>Kuesioner ini bersifat tertutup. Segala data identitas maupun hasil kuesioner Anda bersifat rahasia dan terlindungi keamanannya. Mohon diisi dengan BAIK dan JUJUR karena hasil kesimpulan kuesioner ini akan digunakan untuk perbaikan dalam kegiatan proses belajar mengajar di SD Negeri JatimulyoTerima kasih. Salam sukses untuk Anda semua.</p></br>
									<h2><b>Petunjuk Pengisian</b></h2>
									<br>Berilah tanda (O) pada kolom jawaban yang tersedia sesuai dengan jawaban Siswa dan Siswi</br>
									<br>1.Sangat Tidak Puas </p>
									<br>2.Tidak Puas</br>
									<br>3.Cukup</br>
									<br>4.Puas</br>
									<br>5.Sangat Puas </br>
									
									<hr>
                                    <div class="form-group">
                                        <label>Nama</label>
                                        <input type="text" name="nama" class="form-control" placeholder=" Masukkan Nama" required/>
                                    </div>
                                    <div class="form-group">
                                        <label>No Absen</label>
                                        <input type="text" name="absen" class="form-control" placeholder=" Masukkan No Absen" required>
                                    </div>
									 <div class="form-group">
                                        <label> Jenis Kelamin</label>
                                        <input type="text" name="jekel" class="form-control" placeholder=" Masukkan Jekel" required>
                                    </div>
                                    <div class="form-group">
                                        <label> Kelas</label>
                                        <input type="number" name="kelas" class="form-control" placeholder=" Masukkan Kelas" required>
                                    </div>
                                    <div class="form-group">
                                        <label> Tempat Lahir</label>
                                        <input type="text" name="tempat" class="form-control" placeholder=" Masukkan Tempat Lahir" required>
                                    </div>
                                    <div class="form-group">
                                        <label> Tanggal Lahir</label>
                                        <input type="date" name="tanggal" class="form-control" placeholder=" Masukkan Tanggal Lahir" required>
                                    </div>
									<div class="form-group">
                                        <label> Alamat</label>
                                        <input type="text" name="alamat" class="form-control" placeholder=" Masukkan Alamat" required>
                                    </div>
									<div class="form-group">
                                        <label> Nama Guru </label>
                                        <input type="text" name="guru" class="form-control" placeholder=" Masukkan Guru" required>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <h2><b>Pedagogik</b></h2>
                                                <table class="table table-bordered">
                                                <tr>
                                                    <th rowspan="2"><center><p style="margin-top:15px">No</p></center></th>
                                                    <th rowspan="2"><center><p style="margin-top:15px">Pertanyaan</p></center></th>
                                                    <th colspan="4"><center>Penilaian</center></th>
                                                </tr>
                                                <tr>
                                                    <td><center>Sangat tidak Puas</center></td>
                                                    <td><center>Tidak Puas</center></td>
                                                    <td><center>Cukup</center></td>
                                                    <td><center>Puas</center></td>
													<td><center>Sangat Puas</center></td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Guru dapat memahami Dengan baik ciri-ciri peserta didik</td>
                                                    <td><center><input type="radio" name="mp1" value="1"></center></td>
                                                    <td><center><input type="radio" name="mp1" value="2"></center></td>
                                                    <td><center><input type="radio" name="mp1" value="3"></center></td>
                                                    <td><center><input type="radio" name="mp1" value="4"></center></td>
													<td><center><input type="radio" name="mp1" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Guru dapat memahami potensi-potensi anak didik</td>
                                                    <td><center><input type="radio" name="mp2" value="1"></center></td>
                                                    <td><center><input type="radio" name="mp2" value="2"></center></td>
                                                    <td><center><input type="radio" name="mp2" value="3"></center></td>
                                                    <td><center><input type="radio" name="mp2" value="4"></center></td>
													<td><center><input type="radio" name="mp2" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Guru dapat menguasai bahasa indonesia yang baik sebagai medium of instruction yang efektif</td>
                                                    <td><center><input type="radio" name="mp3" value="1"></center></td>
                                                    <td><center><input type="radio" name="mp3" value="2"></center></td>
                                                    <td><center><input type="radio" name="mp3" value="3"></center></td>
                                                    <td><center><input type="radio" name="mp3" value="4"></center></td>
													<td><center><input type="radio" name="mp3" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Guru memiliki metode penyampaian materi yang baik  dan dapat membimbing anak bika menghadapi persoalan dalam pembelajaran</td>
                                                    <td><center><input type="radio" name="mp4" value="1"></center></td>
                                                    <td><center><input type="radio" name="mp4" value="2"></center></td>
                                                    <td><center><input type="radio" name="mp4" value="3"></center></td>
                                                    <td><center><input type="radio" name="mp4" value="4"></center></td>
													<td><center><input type="radio" name="mp4" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>Guru memberikan ulangan/ujian sesuai materi yang diajarkan</td>
                                                    <td><center><input type="radio" name="mp5" value="1"></center></td>
                                                    <td><center><input type="radio" name="mp5" value="2"></center></td>
                                                    <td><center><input type="radio" name="mp5" value="3"></center></td>
                                                    <td><center><input type="radio" name="mp5" value="4"></center></td>
													<td><center><input type="radio" name="mp5" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>Guru dapat menguasai berbagai model dan strategi pembelajaran dan juga menyampailan rencana pembelajaran dengan baik</td>
                                                    <td><center><input type="radio" name="mp6" value="1"></center></td>
                                                    <td><center><input type="radio" name="mp6" value="2"></center></td>
                                                    <td><center><input type="radio" name="mp6" value="3"></center></td>
                                                    <td><center><input type="radio" name="mp6" value="4"></center></td>
													<td><center><input type="radio" name="mp6" value="5"></center></td>
                                                </tr>
                                                </table>
                                            </div>
                                        </div>

                                        <div class="panel-q 1">
                                            <div class="row">
                                                <div class="col-md-12">
                                            <h2><b>Profesional</b></h2>
                                                <table class="table table-bordered">
                                                <tr>
                                                    <th rowspan="2"><center><p style="margin-top:15px">No</p></center></th>
                                                    <th rowspan="2"><center><p style="margin-top:15px">Pertanyaan</p></center></th>
                                                    <th colspan="4"><center>Penilaian</center></th>
                                                </tr>
                                                <tr>
                                                    <td><center>Sangat Tidak Puas</center></td>
                                                    <td><center>Tidak Puas</center></td>
                                                    <td><center>Cukup</center></td>
                                                    <td><center>Puas</center></td>
													<td><center>Sangat Puas</center></td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Guru mampu menguasai bagaimana menerapkan Teknologi Informasi dalam upaya meningkatkan efektifitas anak </td>
                                                    <td><center><input type="radio" name="ti1" value="1"></center></td>
                                                    <td><center><input type="radio" name="ti1" value="2"></center></td>
                                                    <td><center><input type="radio" name="ti1" value="3"></center></td>
                                                    <td><center><input type="radio" name="ti1" value="4"></center></td>
													<td><center><input type="radio" name="ti1" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Guru mampu menguasai bagaimana mengolah learning resources dari lingkungan hidup sehingga dapat dipergunakan untuk mendukung proses pembelajaran </td>
                                                    <td><center><input type="radio" name="ti2" value="1"></center></td>
                                                    <td><center><input type="radio" name="ti2" value="2"></center></td>
                                                    <td><center><input type="radio" name="ti2" value="3"></center></td>
                                                    <td><center><input type="radio" name="ti2" value="4"></center></td>
													<td><center><input type="radio" name="ti2" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Guru mampu menguasai learning resources yang di perlukan dalam proses belajar mengajar </td>
                                                    <td><center><input type="radio" name="ti3" value="1"></center></td>
                                                    <td><center><input type="radio" name="ti3" value="2"></center></td>
                                                    <td><center><input type="radio" name="ti3" value="3"></center></td>
                                                    <td><center><input type="radio" name="ti3" value="4"></center></td>
													<td><center><input type="radio" name="ti3" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Guru mampu menguasai bagaimana menerapkan teknologi informasi dalam upaya meningkatkan efektifitas belajar anak </td>
                                                    <td><center><input type="radio" name="ti4" value="1"></center></td>
                                                    <td><center><input type="radio" name="ti4" value="2"></center></td>
                                                    <td><center><input type="radio" name="ti4" value="3"></center></td>
                                                    <td><center><input type="radio" name="ti4" value="4"></center></td>
													<td><center><input type="radio" name="ti4" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>Guru mampu menguasai bagaimana menyusun rencana pelajaran yang mengemas isi , media teknologi, dan values dalam setiap proses pembelajaran</td>
                                                    <td><center><input type="radio" name="ti5" value="1"></center></td>
                                                    <td><center><input type="radio" name="ti5" value="2"></center></td>
                                                    <td><center><input type="radio" name="ti5" value="3"></center></td>
                                                    <td><center><input type="radio" name="ti5" value="4"></center></td>
													<td><center><input type="radio" name="ti5" value="5"></center></td>
                                                </tr>
                                                </table>
                                            </div>
                                        </div>
										
									 <div class="panel-q 1">
                                            <div class="row">
                                                <div class="col-md-12">
                                            <h2><b>Kepribadian</b></h2>
                                                <table class="table table-bordered">
                                                <tr>
                                                    <th rowspan="2"><center><p style="margin-top:15px">No</p></center></th>
                                                    <th rowspan="2"><center><p style="margin-top:15px">Pertanyaan</p></center></th>
                                                    <th colspan="4"><center>Penilaian</center></th>
                                                </tr>
                                                <tr>
                                                    <td><center>Sangat Tidak Puas</center></td>
                                                    <td><center>Tidak Puas</center></td>
                                                    <td><center>Cukup</center></td>
                                                    <td><center>Puas</center></td>
													<td><center>Sangat Puas</center></td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Guru memiliki Keteladanan dalam bersikap dan berpelilaku  </td>
                                                    <td><center><input type="radio" name="si1" value="1"></center></td>
                                                    <td><center><input type="radio" name="si1" value="2"></center></td>
                                                    <td><center><input type="radio" name="si1" value="3"></center></td>
                                                    <td><center><input type="radio" name="si1" value="4"></center></td>
													<td><center><input type="radio" name="si1" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Guru selalu adil dan memiliki kasih sayang kepada siswa  tanpa membeda-bedakan</td>
                                                    <td><center><input type="radio" name="si2" value="1"></center></td>
                                                    <td><center><input type="radio" name="si2" value="2"></center></td>
                                                    <td><center><input type="radio" name="si2" value="3"></center></td>
                                                    <td><center><input type="radio" name="si2" value="4"></center></td>
													<td><center><input type="radio" name="si2" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Guru memiliki kearifan dalam mengambil keputusan dan pengendalian diri dalam berbagai kondisi  </td>
                                                    <td><center><input type="radio" name="si3" value="1"></center></td>
                                                    <td><center><input type="radio" name="si3" value="2"></center></td>
                                                    <td><center><input type="radio" name="si3" value="3"></center></td>
                                                    <td><center><input type="radio" name="si3" value="4"></center></td>
													<td><center><input type="radio" name="si3" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Guru dapat memiliki rasa tanggung jawab yang kokoh dalam melakukan fungsinya sebagai guru  </td>
                                                    <td><center><input type="radio" name="si4" value="1"></center></td>
                                                    <td><center><input type="radio" name="si4" value="2"></center></td>
                                                    <td><center><input type="radio" name="si4" value="3"></center></td>
                                                    <td><center><input type="radio" name="si4" value="4"></center></td>
													<td><center><input type="radio" name="si4" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>Guru memberikan pujian terhadap peserta didik yang dapat menyelesaikan tugas tepat waktu </td>
                                                    <td><center><input type="radio" name="si5" value="1"></center></td>
                                                    <td><center><input type="radio" name="si5" value="2"></center></td>
                                                    <td><center><input type="radio" name="si5" value="3"></center></td>
                                                    <td><center><input type="radio" name="si5" value="4"></center></td>
													<td><center><input type="radio" name="si5" value="5"></center></td>
                                                </tr>
                                                </table>
                                            </div>
                                        </div>	
										
									 <div class="panel-q 1">
                                            <div class="row">
                                                <div class="col-md-12">
                                            <h2><b>Sosial</b></h2>
                                                <table class="table table-bordered">
                                                <tr>
                                                    <th rowspan="2"><center><p style="margin-top:15px">No</p></center></th>
                                                    <th rowspan="2"><center><p style="margin-top:15px">Pertanyaan</p></center></th>
                                                    <th colspan="4"><center>Penilaian</center></th>
                                                </tr>
                                                <tr>
                                                    <td><center>Sangat Tidak Puas</center></td>
                                                    <td><center>Tidak Puas</center></td>
                                                    <td><center>Cukup</center></td>
                                                    <td><center>Puas</center></td>
													<td><center>Sangat Puas</center></td>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Guru msampu memahami beberapa faktor yang berpengaruh dalam menciptakan lingkungan belajar yang mendukung pbm </td>
                                                    <td><center><input type="radio" name="km1" value="1"></center></td>
                                                    <td><center><input type="radio" name="km1" value="2"></center></td>
                                                    <td><center><input type="radio" name="km1" value="3"></center></td>
                                                    <td><center><input type="radio" name="km1" value="4"></center></td>
													<td><center><input type="radio" name="km1" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Guru dapat mengerti berbagai faktor sosial –cultural dan ekonomi yang berpengaruh terhadap proses pendidikan anak di sekolah </td>
                                                    <td><center><input type="radio" name="km2" value="1"></center></td>
                                                    <td><center><input type="radio" name="km2" value="2"></center></td>
                                                    <td><center><input type="radio" name="km2" value="3"></center></td>
                                                    <td><center><input type="radio" name="km2" value="4"></center></td>
													<td><center><input type="radio" name="km2" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Guru mampu memahami pentingnya hubungan antara sekolah terhadap orang tua dan tokoh masyarakat yang berpengaruh terhadap proses pendidikan anak di Indonesia </td>
                                                    <td><center><input type="radio" name="km3" value="1"></center></td>
                                                    <td><center><input type="radio" name="km3" value="2"></center></td>
                                                    <td><center><input type="radio" name="km3" value="3"></center></td>
                                                    <td><center><input type="radio" name="km3" value="4"></center></td>
													<td><center><input type="radio" name="km3" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Guru dapat mengerti nilai –nilai dan norma –norma yang berlaku dan di junjung tinggi oleh masyarakat </td>
                                                    <td><center><input type="radio" name="km4" value="1"></center></td>
                                                    <td><center><input type="radio" name="km4" value="2"></center></td>
                                                    <td><center><input type="radio" name="km4" value="3"></center></td>
                                                    <td><center><input type="radio" name="km4" value="4"></center></td>
													<td><center><input type="radio" name="km4" value="5"></center></td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>Guru mamou memahami berbagai faktor yang berkontribusi dalam menciptakan lingkungan belajar yang mendukung Proses belajar Mengajar </td>
                                                    <td><center><input type="radio" name="km5" value="1"></center></td>
                                                    <td><center><input type="radio" name="km5" value="2"></center></td>
                                                    <td><center><input type="radio" name="km5" value="3"></center></td>
                                                    <td><center><input type="radio" name="km5" value="4"></center></td>
													<td><center><input type="radio" name="km5" value="5"></center></td>
                                                </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <td><input type="submit" value="Simpan"></td>	
                                </div><!-- /.col-lg-6 (nested) -->
                            </div><!-- /.row (nested) -->
                        </div><!-- /.panel-body -->
                    </div><!-- /.panel -->
                </div><!-- /.col-lg-12 -->
            </div><!-- /.row -->
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <div id="footer-sec">
        &copy; 2017 Universitas Putra Indonesia 
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

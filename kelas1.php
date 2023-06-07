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
                <a class="navbar-brand" href="index.html">Clustering</a>
            </div>

            <div class="header-right">

                <a href="login.html" class="btn btn-danger" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

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
                        <h1 class="page-head-line">Data Hasil Perhitungan Responden Guru Kelas dan Guru Mapel PAI</h1>
                      <h1 class="page-subhead-line"></h1>

                    </div>
                </div>
</head>
<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Siswa Kelas 1</h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM kelas1")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Siswa Kelas 2</h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM kelas2")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Siswa Kelas 3</h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM kelas3")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Siswa Kelas 4</h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM kelas4")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Siswa Kelas 5</h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM kelas5")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Siswa Kelas 6</h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM kelas6")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<title>Membuat CRUD Dengan PHP Dan MySQL - Menampilkan data dari database</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<br/>
 
	<?php 
if(isset($_GET['pesan'])){ $pesan = $_GET['pesan'];
if($pesan == "input"){
echo "Data berhasil di input.";
}else if($pesan == "update"){
echo "Data berhasil di update.";
}else if($pesan == "hapus"){
echo "Data berhasil di hapus.";
		}
	}
	?>

	<h3>Data Hasil Nilai Responden Untuk Guru PAI </h3>
	<table border="1" class="table">
		<tr>
			<th>No</th>
			<th>Nama Responden </th>
			<th>Pedagogik</th>
			<th>Profesional</th>
			<th>Kepribadian</th>
			<th>Sosial</th>		
			
		</tr>
		<?php 
		include "config.php";
		$query_mysql = mysql_query("SELECT * FROM pai")or die(mysql_error());
		$nomor = 1;
        while($data = mysql_fetch_array($query_mysql)){
		?>
		<tr>
		
<td><?php echo $nomor++; ?></td>
<td><?php echo $data['nama']; ?></td>
<td><?php echo $data['pedagogik']; ?></td>
<td><?php echo $data['profesional']; ?></td>
<td><?php echo $data['kepribadian']; ?></td>
<td><?php echo $data['sosial']; ?></td>

		</tr>
		<?php } ?>
	</table>
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

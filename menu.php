<?php
session_start();
		
?>        
		<nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/deni.jpg" class="img-thumbnail" />

                            <div class="inner-text">
                                Deni Malik Irawan
                            <br />
                                <small> </small>
                            </div>
                        </div>

                    </li>
<head>
<title> Program K-Means Clustering Menggunakan PHP </title>
</head>
           <?php
					if($_SESSION['level']=="Admin"){
					?>
	
	<li>
          <a href="home.php?hal=home">
            <i class="fa fa-home"></i> <span>Dashboard</span>
          </a>
     </li>
       
	<li>
          <a href="admin_tampil.php?hal=admin">
            <i class="fa fa-home"></i> <span>Data Admin dan User</span>
          </a>
     </li>
					
	<li>
          <a href="siswa_tampil.php?hal=siswa">
            <i class="fa fa-book"></i> <span>Data Siswa</span>
          </a>
     </li>

		<li>
          <a href="guru_tampil.php?hal=guru">
            <i class="fa fa-book"></i> <span>Data Guru</span>
          </a>
     </li>
					
    <li>
          <a href="pertanyaan_tampil.php?hal=clustering">
            <i class="fa fa-book"></i> <span>Data Pertanyaan</span>
          </a>
     </li>
	 
	 
	 <li>
          <a href="pedagogik.php?hal=clustering">
            <i class="fa fa-book"></i> <span>Data Hasil Sampel Responden</span>
          </a>
	 </li>
	 
	 	<li>
          <a href="tampilproses.php?hal=hasil">
            <i class="fa fa-book"></i> <span>Data Hasil</span>
          </a>
     </li>
					<?php 
					}elseif($_SESSION["level"]=="User"){
					?>
					
     <li>
          <a href="home.php?hal=home">
            <i class="fa fa-home"></i> <span>Dashboard</span>
          </a>
     </li>
	 
	 <li>
          <a href="tbaru2.php?hal=kuesioner">
            <i class="fa fa-book"></i> <span>Form Kuesioner</span>
          </a>
     </li>
	 
					
					<?php
					}
					?>
					 <li>
                        <a href="logout.php"><i class="fa fa-exclamation-circle "></i>Logout</a>
                        
                    </li>    
            </div>

        </nav>

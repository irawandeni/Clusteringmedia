<?php 
include 'config.php';
$nama = $_POST['nama'];
$jekel = $_POST['jekel'];
$kelas = $_POST['kelas'];
$absen = $_POST['absen'];
$tempat = $_POST['tempat'];
$tanggal = $_POST['tanggal'];
$alamat = $_POST['alamat'];

mysql_query("INSERT INTO siswa VALUES('','$nama','$jekel','$kelas','$absen','$tempat','$tanggal','$alamat')");
echo "<script>alert('Data Berhasil Di Tambah');location='siswa_tampil.php';</script>"; 
?>

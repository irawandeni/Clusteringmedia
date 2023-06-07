<?php 
include 'config.php';
$npsn = $_POST['npsn'];
$sekolah = $_POST['sekolah'];
$ptk = $_POST['ptk'];
$pangkat = $_POST['pangkat'];
$nip = $_POST['nip'];
$tugas = $_POST['tugas'];
$mapel= $_POST['mapel'];

mysql_query("INSERT INTO guru VALUES('','$npsn','$sekolah','$ptk','$pangkat','$nip','$tugas','$mapel')");
echo "<script>alert('Data Berhasil Di Tambah');location='guru_tampil.php';</script>"; 
?>

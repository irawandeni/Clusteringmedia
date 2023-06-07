<?php 
include 'config.php';
$id = $_POST['id'];
$npsn = $_POST['npsn'];
$sekolah = $_POST['sekolah'];
$ptk = $_POST['ptk'];
$pangkat = $_POST['pangkat'];
$nip = $_POST['nip'];
$tugas = $_POST['tugas'];
$mapel= $_POST['mapel'];

mysql_query("UPDATE guru SET npsn='$npsn', sekolah='$sekolah', ptk='$ptk', 
pangkat='$pangkat', nip='$nip', tugas='$tugas', mapel='$mapel'  WHERE id='$id'");
 
echo "<script>alert('Data Berhasil Di Update');location='guru_tampil.php';</script>";
 
?>

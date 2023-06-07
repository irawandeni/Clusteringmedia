<?php 
include 'config.php';
$id = $_POST['id'];
$nama = $_POST['nama'];
$jekel = $_POST['jekel'];
$kelas = $_POST['kelas'];
$absen = $_POST['absen'];
$tempat = $_POST['tempat'];
$tanggal = $_POST['tanggal'];
$alamat = $_POST['alamat'];


mysql_query("UPDATE siswa SET nama='$nama', jekel='$jekel', kelas='$kelas', 
absen='$absen', tempat='$tempat', tanggal='$tanggal', alamat='$alamat'  WHERE id='$id'");
 
echo "<script>alert('Data Berhasil Di Update');location='siswa_tampil.php';</script>";
 
?>

<?php 
include 'config.php';
$username = $_POST['username'];
$password = $_POST['password'];
$nama = $_POST['nama'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$level = $_POST['level'];
mysql_query("INSERT INTO admin VALUES('','$username','$password','$nama','$phone','$email','$level')");
echo "<script>alert('Data Berhasil Di Tambah');location='admin_tampil.php';</script>"; 
?>

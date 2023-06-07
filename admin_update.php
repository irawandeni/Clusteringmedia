<?php 
 
include 'config.php';
$id = $_POST['id'];
$username = $_POST['username'];
$password = $_POST['password'];
$nama = $_POST['nama'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$level = $_POST['level'];

mysql_query("UPDATE admin SET username='$username', password='$password', nama='$nama', phone='$phone', email='$email', level='$level' WHERE id='$id'");
 
echo "<script>alert('Data Berhasil Di Update');location='admin_tampil.php';</script>";
 
?>

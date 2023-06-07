<?php 
include 'config.php';
$id= $_GET['id'];
mysql_query("DELETE FROM guru WHERE id='$id'")or die(mysql_error());
 
echo "<script>alert('Data Berhasil Di Hapus');location='guru_tampil.php';</script>";
?>

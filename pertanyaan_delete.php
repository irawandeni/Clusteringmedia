<?php 
include 'config.php';
$id= $_GET['id'];
$nama= $_GET['nama'];

mysql_query("DELETE FROM pertanyaan WHERE id='$id'")or die(mysql_error());
 
echo "<script>alert('Data Berhasil Di Hapus');location='pertanyaan_tampil.php';</script>";
?>


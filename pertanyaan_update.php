<?php 
 include 'config.php';
$id = $_POST['id'];
$nama = $_POST['nama'];
$kategori= $_POST['kategori'];


mysql_query("UPDATE pertanyaan SET nama='$nama', kategori='$kategori' WHERE id='$id'");
 
echo "<script>alert('Data Berhasil Di Update');location='pertanyaan_tampil.php';</script>";
 
?>

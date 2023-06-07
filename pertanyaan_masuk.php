<?php 
include 'config.php';
$nama = $_POST['nama'];
$kategori = $_POST['kategori'];
mysql_query("INSERT INTO pertanyaan VALUES('','$nama','$kategori')");
echo "<script>alert('Data Berhasil Di Tambah');location='pertanyaan_tampil.php';</script>"; 
?>

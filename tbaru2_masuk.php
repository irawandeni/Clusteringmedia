<?php 
include 'config.php';
$nama = $_POST['nama'];
$absen = $_POST['absen'];
$jekel = $_POST['jekel'];
$kelas = $_POST['kelas'];
$tempat = $_POST['tempat'];
$tanggal = $_POST['tanggal'];
$alamat= $_POST['alamat'];
$guru= $_POST['guru'];
$mp1= $_POST['mp1'];
$mp2= $_POST['mp2'];
$mp3= $_POST['mp3'];
$mp4= $_POST['mp4'];
$mp5= $_POST['mp5'];
$mp6= $_POST['mp6'];
$ti1= $_POST['ti1'];
$ti2= $_POST['ti2'];
$ti3= $_POST['ti3'];
$ti4= $_POST['ti4'];
$ti5= $_POST['ti5'];
$si1= $_POST['si1'];
$si2= $_POST['si2'];
$si3= $_POST['si3'];
$si4= $_POST['si4'];
$si5= $_POST['si5'];
$km1= $_POST['km1'];
$km2= $_POST['km2'];
$km3= $_POST['km3'];
$km4= $_POST['km4'];
$km5= $_POST['km5'];

mysql_query("INSERT INTO hasil VALUES('','$nama','$absen','$jekel','$kelas','$tempat','$tanggal','$alamat','$guru',
'$mp1','$mp2','$mp3','$mp4','$mp5','$mp6','$ti1','$ti2','$ti3','$ti4','$ti5','$si1','$si2','$si3','$si4','$si5',
'$km1','$km2','$km3','$km4','$km5')");
echo "<script>alert('Data Berhasil Di Tambah');location='tbaru2.php';</script>"; 
?>

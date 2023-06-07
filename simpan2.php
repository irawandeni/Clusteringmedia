<?
error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));



include('config.php');
?>
<?

$query = mysql_query("insert into kasus values('','$_POST[nm]','$_POST[harga]','$_POST[menu]','$_POST[fasilitas]','$_POST[jam]')");
 
if ($query) {

echo "Data berhasil disimpan";
echo '<META HTTP-EQUIV="Refresh" CONTENT="1; URL=tampilproses.php">';


}
else
{ echo 'Data telah di entry sebelumnya';
}

?>
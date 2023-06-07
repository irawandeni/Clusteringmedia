<?php
include("connect.php");
$Nama = $_POST['Nama'];
$Pangkat = $_POST['Pangkat'];
$Tugas = $_POST['Tugas'];
$Mapel = $_POST['Mapel'];
$v1 = $_POST['v1'];
$v2 = $_POST['v2'];
$v3 = $_POST['v3'];
$v4 = $_POST['v4'];

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	if($_GET['cmd']=='hapus'){
		$sql = "DELETE FROM data WHERE ID='$_POST[id]'";		
	}
	else if($_GET['cmd']=='entry'){
		$sql = "INSERT INTO data (Nama, Pangkat, Tugas, Mapel, v1, v2, v3, v4) VALUES ('$_POST[Nama]', '$_POST[Pangkat]', '$_POST[Tugas]', '$_POST[Mapel]', '$_POST[v1]', '$_POST[v2]', '$_POST[v3]', '$_POST[v4]')";
	}
	if ($conn->query($sql) === TRUE) {
		echo "ok";
	} else {
		echo "Error: " . $sql . "<br>" . $conn->error;
	}	
	$conn->close();
	exit();
}
$sql = "SELECT * FROM data";
$result = $conn->query($sql);
$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<style>
			table {
				font-size: 10px;
			}
			.container{
				font-size: 12px;
				margin-bottom: 50px;
			}
			.footer {
				background-color: #f5f5f5;
				bottom: 0;
				height: 60px;
				position: fixed;
				width: 100%;
			}
			.footer .container{
				margin-bottom: 0px;
			}
			.footer .container .text-muted {
				margin: 20px 0;
				font-size:14px;
			}
			.form-horizontal .form-inline .form-group{
				margin-left: 0px;
				margin-right: 0px;
				margin-bottom:5px;
			}
			table tr td{
				position: relative;
			}
			
			table tr td .d-control{
				display: none;
				position:absolute;
				bottom:5px;
				right:5px;
			}
				
			table tr:hover .d-control {
				display: block;
			}
		</style>		
		<script src="jquery/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script>
		</script>
	</head>
	<body>
		
	<div class="container">
			<div class="row" >
				<div class="col-md-12" style="margin-bottom:10px;"><button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#fr-entry">Tambah Data</button></div>
				<div id="fr-entry" class="col-sm-10 collapse">
				<form action="Data.php" method="post">	
					<div class="panel panel-default">
						<div class="panel-heading"><strong>Entry Data</strong></div>
						<div class="panel-body">
							<form class="form-horizontal" id="frm-entry">
							  <div class="form-group">
								<label>Nama</label>
								    <input type="text" name="Nama" class="form-control" placeholder=" Masukkan Nama" required/>
							  </div>
							  <div class="form-group">
								<label>Pangkat</label>
								<input type="text" name="Pangkat" class="form-control" placeholder=" Masukkan Pangkat" required/>
							  </div>
							   <div class="form-group">
								<label>Tugas</label>
								<input type="text" name="Tugas" class="form-control" placeholder=" Masukkan Tugas" required/>
							  </div>
							  <div class="form-group">
								<label>Mapel</label>
								<input type="text" name="Mapel" class="form-control" placeholder=" Masukkan Mapel" required/>
							  </div>
							 
							  </div>
							  <div class="row">
								<div class="col-sm-10 col-sm-offset-2 ">
								  <div class="panel panel-default">
									  <div class="panel-heading"><strong>Data Rata-Rata Kinerja Guru</strong></div>
									  <div class="panel-body form-inline">
										  <div class="form-group">
											<label>Pedagogik</label>
											  <input type="float" name="v1" class="form-control" placeholder=" Masukkan Nilai" required/>
										  </div>
										  <div class="form-group">
											<label>Profesional</label>
											  <input type="float" name="v2" class="form-control" placeholder=" Masukkan Nilai" required/>
										  </div>
										   <div class="form-group">
											<label>Kepribadian</label>
											  <input type="float" name="v3" class="form-control" placeholder=" Masukkan Nilai" required/>
										  </div>
										  <div class="form-group">
											<label>Sosial</label>
											  <input type="float" name="v2" class="form-control" placeholder=" Masukkan Nilai" required/>
										  </div>
									  </div>
								  </div>
								</div>
							  </div>
							  <div class="row">
								<div class="col-sm-12">
									<button type="submit" class="btn btn-success">Simpan</button>
								</div>
							  </div>
							</form>						  
						</div>
					</div>				

				</div>
			</div>		
			<div class="row">
				<div class="col-sm-12" id="frm-err" style="margin-top:5px; display:none;">
					<div class="alert alert-danger" role="alert">...</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<table style="margin-left: auto; margin-right: auto;" class="table table-hover">
						<thead>
							<tr style="height: 25px; background-color: #000080; font-size: 11px;" bgcolor="#000099">
								<td style="height: 25px; text-align: center;" colspan="15"><strong><span style="color: #ffffff;">Data Kinerja Guru SD Jatimulyo</span></strong></td>
							</tr>
							<tr style="height: 25px; background-color: #000080;">
								<td style="width: 200px;" rowspan="2">
									<p style="text-align: center;"><strong><span style="color: #ffffff;">Nama Guru</span></strong></p>
								</td>
								<td style="width: 65px;" rowspan="2">
									<p style="text-align: center;"><strong><span style="color: #ffffff;">Pangkat</span></strong></p>
								</td>
								<td style="width: 65px;" rowspan="2">
									<p style="text-align: center;"><strong><span style="color: #ffffff;">Tugas</span></strong></p>
								</td>
								<td style="width: 125px;" rowspan="2">
									<p style="text-align: center;"><strong><span style="color: #ffffff;">Mapel</span></strong></p>
								</td>
								<td style="text-align: center;" colspan="9"><strong><span style="color: #ffffff;">Rata-Rata Kinerja</span></strong></td>
							</tr>
							<tr style="height: 25px; background-color: #000080;">
								<td style="width: 250px; text-align: center;"><strong><span style="color: #ffffff;">Pedagogik</span></strong></td>
								<td style="width: 250px; text-align: center;"><strong><span style="color: #ffffff;">Profesional</span></strong></td>
								<td style="width: 275px; text-align: center;"><strong><span style="color: #ffffff;">Kepribadian</span></strong></td>
								<td style="width: 275px; text-align: center;"><strong><span style="color: #ffffff;">Sosial</span></strong></td>
								<td style="width: 275px; text-align: center;"><strong><span style="color: #ffffff;">Hasil</span></strong></td>
							</tr>
							<tr style="height: 15px; background-color: #a8a8a8;">
								<td style="text-align: center;"><strong><span style="color: #ffffff;">1</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">2</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">3</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">4</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">5</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">6</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">7</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">8</span></strong></td>
								<td style="text-align: center;"><strong><span style="color: #ffffff;">9</span></strong></td>
							</tr>
						</thead>
						<tbody>
							<tr style="height: 15px;">
<?php
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
	$Nama += $row['Nama'];
	$Pangkat += $row['Pangkat'];
	$Tugas += $row['Tugas'];
	$Mapel += $row['Mapel'];
	$v1 += $row['v1'];
	$v2 += $row['v2'];
	$v3 += $row['v3'];
	$v4 += $row['v4'];
	$vt += $row['v1']+$row['v2']+$row['v3']+$row['v4'];
?>
								<td style="text-align: left;">
								&nbsp;<?php echo $row['Nama'];?>
									<div class="d-control">
										<a href="#" class="btn btn-danger btn-xs hapus" data="<?php echo $row['ID'];?>"><i class="glyphicon glyphicon-remove"></i></a>
									</div>
								</td>
								<td style="text-align: left;">
								&nbsp;<?php echo $row['Pangkat'];?>
									<div class="d-control">
										<a href="#" class="btn btn-danger btn-xs hapus" data="<?php echo $row['ID'];?>"><i class="glyphicon glyphicon-remove"></i></a>
									</div>
								</td>
								<td style="text-align: left;">
								&nbsp;<?php echo $row['Tugas'];?>
									<div class="d-control">
										<a href="#" class="btn btn-danger btn-xs hapus" data="<?php echo $row['ID'];?>"><i class="glyphicon glyphicon-remove"></i></a>
									</div>
								</td>
								<td style="text-align: left;">
								&nbsp;<?php echo $row['Mapel'];?>
									<div class="d-control">
										<a href="#" class="btn btn-danger btn-xs hapus" data="<?php echo $row['ID'];?>"><i class="glyphicon glyphicon-remove"></i></a>
									</div>
								</td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v1'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v2'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v3'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v4'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v1']+$row['v2']+$row['v3']+$row['v4'];?></td>
							</tr>
<?php
    }
} else {
?>
							<tr style="height: 25px;">
								<td style="height: 25px; text-align: center;" colspan="15"><strong><span>Data Tidak Ditemukan ...</span></strong></td>
							</tr>
<?php
}
?>
						</tbody>
						<tfoot>
							<tr style="height: 25px;">
								<td style="text-align: left;"><strong>Total Nilai Kinerja</strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $Nama;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $Pangkat ;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $Tugas;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $Mapel;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v1;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v2;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v3;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v4;?></strong></td>
								
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
		<footer class="footer">
		  <div class="container">
		  </div>
		</footer>
	</body>
</html>
<?php
include_once("connect.php");
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	if($_GET['cmd']=='process'){
		$c1v1 = $_POST['c1v1'];	$c1v2 = $_POST['c1v2'];	$c1v3 = $_POST['c1v3'];	$c1v4 = $_POST['c1v4'];
		$c2v1 = $_POST['c2v1'];	$c2v2 = $_POST['c2v2'];	$c2v3 = $_POST['c2v3'];	$c2v4 = $_POST['c2v4'];
	
		
		$result = $conn->query($sql1);

		if ($result->num_rows > 0) {
			$sql2 = "TRUNCATE TABLE cluster;";
			$conn->query($sql2);
			$sql3 = "TRUNCATE TABLE iterasi;";
			$conn->query($sql3);	
			$finis = false;
			$i=1;
			while(!$finis) {

				$sql4 = "INSERT INTO cluster (Cluster, idx, v1, v2, v3, v4) VALUES 
					('$i', 'c1', '$c1v1', '$c1v2', '$c1v3', '$c1v4'),
					('$i', 'c2', '$c2v1', '$c2v2', '$c2v3', '$c2v4');";
					
				$conn->query($sql4);			
				while($row = $result->fetch_assoc()) {
					//echo $i;
					$hc1 = sqrt((pow(($row['v1']-$c1v1),2))+(pow(($row['v2']-$c1v2),2))+(pow(($row['v3']-$c1v3),2))+(pow(($row['v4']-$c1v4),2)));
					$hc2 = sqrt((pow(($row['v1']-$c2v1),2))+(pow(($row['v2']-$c2v2),2))+(pow(($row['v3']-$c2v3),2))+(pow(($row['v4']-$c2v4),2)));
					
					$min  =($hc1<$hc2)?'c1':'c2';
					$sql5 = "INSERT INTO iterasi(Cluster, ID_data, c1, c2, min)VALUES('$i', '$row[ID]', '$hc1', '$hc2', '$min');";
					$conn->query($sql5);
				}
				mysqli_data_seek($result,0);
				
				$sql6 = "SELECT Sum(`data`.v1) AS v1,Sum(`data`.v2) AS v2,Sum(`data`.v3) AS v3,Sum(`data`.v4) AS v4, sum(if(iterasi.min='c1',1,0))AS cnt FROM `data` INNER JOIN iterasi ON iterasi.ID_data = `data`.ID WHERE iterasi.min = 'c1' AND iterasi.Cluster = '$i';";
				//echo $sql6;
				$c1 = $conn->query($sql6);	
				$row = $c1->fetch_assoc();
				$c1v1 = $row['v1']/$row['cnt'];	$c1v2 = $row['v2']/$row['cnt'];	$c1v3 = $row['v3']/$row['cnt'];	$c1v4 = $row['v4']/$row['cnt'];

				$sql7 = "SELECT Sum(`data`.v1) AS v1,Sum(`data`.v2) AS v2,Sum(`data`.v3) AS v3,Sum(`data`.v4) AS v4, AS v6, sum(if(iterasi.min='c2',1,0))AS cnt FROM `data` INNER JOIN iterasi ON iterasi.ID_data = `data`.ID WHERE iterasi.min = 'c2' AND iterasi.Cluster = '$i';";
				$c2 = $conn->query($sql7);	
				$row = $c2->fetch_assoc();
				$c2v1 = $row['v1']/$row['cnt'];	$c2v2 = $row['v2']/$row['cnt'];	$c2v3 = $row['v3']/$row['cnt'];	$c2v4 = $row['v4']/$row['cnt'];	$c2v5 = $row['v5']/$row['cnt'];	$c2v6 = $row['v6']/$row['cnt'];	$c2v7 = $row['v7']/$row['cnt'];	$c2v8 = $row['v8']/$row['cnt'];	$c2v9 = $row['v9']/$row['cnt'];
				
				$i1=$i;
				$i2=$i-1;
				$sql8 = "SELECT A.min FROM (SELECT ID_data,min FROM iterasi WHERE Cluster ='$i1') AS A JOIN (SELECT ID_data,min FROM iterasi WHERE Cluster ='$i2') AS B ON A.ID_data = B.ID_data AND A.min = B.min;";
				$cek = $conn->query($sql8);	
				
				if($result->num_rows == $cek->num_rows){
					$finis = true;
				}
				$i++;
			}
			$arr['stt'] = "ok";
			ob_start();
			include('hasil.php');
			$arr['data'] = ob_get_contents();
			ob_end_clean();
			//$arr['data'] = include('hasil.php');
			echo json_encode($arr);
		}		
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
				margin-bottom: 80px;
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
			.form-inline .form-group{
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
			#hasil table tr td{
				padding:1px;
			}
		</style>
		<script src="jquery/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script>
			$( document ).ready(function() {
				$("#dc1").change(function(event) {
					$('#c1v1').val($('option:selected',this).attr('v1'));
					$('#c1v2').val($('option:selected',this).attr('v2'));
					$('#c1v3').val($('option:selected',this).attr('v3'));
					$('#c1v4').val($('option:selected',this).attr('v4'));
				});
				$("#dc2").change(function(event) {
					$('#c2v1').val($('option:selected',this).attr('v1'));
					$('#c2v2').val($('option:selected',this).attr('v2'));
					$('#c2v3').val($('option:selected',this).attr('v3'));
					$('#c2v4').val($('option:selected',this).attr('v4'));
				});		
				$("#frm-entry").submit(function(event) {
					event.preventDefault();
					if(ValidateForm($("#frm-entry"))){
					$.ajax({
						type: "POST",
						async: false,
						url: "prosesdata.php?cmd=process",
						data: $(this).serializeArray(),
						dataType: "json",
						success: function(data) {
							if(data.stt=='ok') {
								//var win = window.open('http://localhost/rudibps/hasil.php');
								//win.focus();
								$('#data').html(data.data);
								$("#hasil").show();
								$('html, body').animate({
									scrollTop: $("#hasil").offset().top
								}, 2000);
							}else{
								alert('gagal1');
							}
								
						},
						error: function() {
							alert('gagal2');
						}
					});
					}
				});				
			});
			function ValidateForm(element) {
				var form = element[0];
				for (var i=0, iLen=form.length; i<iLen; i++) {
					if ($(form[i]).hasClass("form-control")) {
						if($(form[i]).val()===''){
							alert('data tidak bisa di proses\nSilahkan lengkapi Pusat Cluster');
							$(form[i]).focus();
							return false;
							break;
						}
					}
				}
				return true;
			}
		</script>
	</head>
	<body>
		<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
			  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			  </button>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav">
				<li><a href="data.php">Data <span class="sr-only">(current)</span></a></li>
				<li class="active"><a href="Prosesdata.php">Iterasi</a></li>
				<li><a href="chart.php">Hasil</a></li>
			  </ul>


				  </ul>
				</li>
			  </ul>
			</div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>	
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-default">
					  <div class="panel-heading"><strong>Penentuan pusat awal cluster</strong></div>
					  <div class="panel-body ">
					  <form class="form-inline" id="frm-entry">
						<div class="panel panel-default">
							<div class="panel-heading clearfix">
							  <div class="col-sm-2">
								<strong>Pusat Cluster Ke-1</strong>
							  </div>
							  <div class="col-sm-9">
								<select id="dc1" class="form-control input-sm">
								   <option value="C2">Custom..</option>
<?php
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
?>		
								  <option 
								  v1="<?php echo $row['v1'];?>" 
								  v2="<?php echo $row['v2'];?>" 
								  v3="<?php echo $row['v3'];?>" 
								  v4="<?php echo $row['v4'];?>" 
								  value="<?php echo $row['Nama'];?>"><?php echo $row['Nama'];?></option>
<?php
	}
}
mysqli_data_seek($result,0);
?>
								</select>
							  </div>
							</div>
							<div class="panel-body ">
							  <div class="form-group">
								<label>Pedagogik</label>
								<input type="float" placeholder="pedagogik" name="c1v1" id="c1v1" class="form-control input-sm number">
							  </div>
							  <div class="form-group">
								<label>Profesional</label>
								<input type="float" placeholder="profesional" name="c1v2" id="c1v2" class="form-control input-sm number">
							  </div>
							  <div class="form-group">
								<label>Kepribadian</label>
								<input type="float" placeholder="kepribadian" name="c1v3" id="c1v3" class="form-control input-sm number">
							  </div>
							  <div class="form-group">
								<label>Sosial</label>
								<input type="float" placeholder="sosial" name="c1v4" id="c1v4" class="form-control input-sm number">
							  </div>
						</div>	
						<div class="panel panel-default">
							<div class="panel-heading clearfix">
							  <div class="col-sm-2">
								<strong>Pusat Cluster Ke-2</strong>
							  </div>
							  <div class="col-sm-9">
								<select id="dc2" class="form-control input-sm">
								   <option value="C1">Custom..</option>
<?php
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
?>		
								  <option 
								  v1="<?php echo $row['v1'];?>" 
								  v2="<?php echo $row['v2'];?>" 
								  v3="<?php echo $row['v3'];?>" 
								  v4="<?php echo $row['v4'];?>" 
								  value="<?php echo $row['Nama'];?>"><?php echo $row['Nama'];?></option>
<?php
	}
}
mysqli_data_seek($result,0);
?>
								</select>
							  </div>
							</div>
							<div class="panel-body ">
							  <div class="form-group">
								<label>Pedagogik</label>
								<input type="text" placeholder="pedagogik" name="c2v1" id="c2v1" class="form-control input-sm number">
							  </div>
							  <div class="form-group">
								<label>Profesioanl</label>
								<input type="text" placeholder="profesional" name="c2v2" id="c2v2" class="form-control input-sm number">
							  </div>
							  <div class="form-group">
								<label">Kepribadian</label>
								<input type="text" placeholder="kepribadian" name="c2v3" id="c2v3" class="form-control input-sm number">
							  </div>
							  <div class="form-group">
								<label>Sosial</label>
								<input type="text" placeholder="sosial" name="c2v4" id="c2v4" class="form-control input-sm number">
							  </div>
							</div>
						</div>
						<button type="submit" class="btn btn-success">Prosess data</button>
					  </form>
					  </div>
					</div>
				</div>			
				<div class="col-sm-12">
					<table style="margin-left: auto; margin-right: auto;" class="table table-hover">
						<thead>
							<tr style="height: 25px; background-color: #000080; font-size: 11px;" bgcolor="#000099">
								<td style="height: 25px; text-align: center;" colspan="10"><strong><span style="color: #ffffff;">Data Rata-Rata Kinerja Guru SDN Jatimulyo</span></strong></td>
							</tr>
							<tr style="height: 25px; background-color: #000080;">
								<td style="width: 200px;" rowspan="2">
									<p style="text-align: center;"><strong><span style="color: #ffffff;">Nama</span></strong></p>
								</td>
								<td style="text-align: center;" colspan="9"><strong><span style="color: #ffffff;">Rata-Rata kinerja Guru</span></strong></td>
							</tr>
							<tr style="height: 25px; background-color: #000080;">
								<td style="width: 250px; text-align: center;"><strong><span style="color: #ffffff;">Pedagogik</span></strong></td>
								<td style="width: 250px; text-align: center;"><strong><span style="color: #ffffff;">Profesional</span></strong></td>
								<td style="width: 250px; text-align: center;"><strong><span style="color: #ffffff;">Kepribadian</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">Sosial</span></strong></td>
							</tr>
						</thead>
						<tbody>
							<tr style="height: 15px;">
<?php
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
	$v1 += $row['v1'];
	$v2 += $row['v2'];
	$v3 += $row['v3'];
	$v4 += $row['v4'];
	$vt += $row['v1']+$row['v2']+$row['v3']+$row['v4'];
?>
								<td style="text-align: left;">&nbsp;<?php echo $row['Nama'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v1'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v2'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v3'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v4'];?></td>
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
								<td style="text-align: left;"><strong>Total Data</strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v1;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v2;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v3;?></strong></td>
								<td style="text-align: right;"><strong>&nbsp;<?php echo $v4;?></strong></td>
							</tr>
						</tfoot>
					</table>
				</div>
				<div class="col-sm-12" id="hasil" style="display:none;">
					<div id="data"></div>
				</div>
			</div>
		</div>
		<footer class="footer">
		  <div class="container">
		  </div>
		</footer>
	</body>
</html>
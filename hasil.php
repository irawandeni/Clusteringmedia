<?php
$sql01 = "SELECT cluster.Cluster FROM cluster GROUP BY cluster.Cluster";
$tcluster = $conn->query($sql01);
if ($tcluster->num_rows > 0) {
	while($trow = $tcluster->fetch_assoc()) {
		$x=$trow['Cluster'];
?>
				<div class="col-sm-12">
				<div class="alert alert-success" role="alert"><strong>Hasil <?php echo $x;?></strong></div>
					<table style="margin-left: auto; margin-right: auto;" class="table table-hover">
							<tr style="height: 25px; background-color: #000080; font-size: 11px;" bgcolor="#000099">
								<td style="height: 25px; text-align: center;" colspan="10"><strong><span style="color: #ffffff;">Data Pusat Cluster</span></strong></td>
							</tr>					
					<?php
						//$x=1;
							$sql11 = "SELECT * FROM cluster WHERE Cluster = '$x'";
							$cluster = $conn->query($sql11);
							if ($cluster->num_rows > 0) {
								while($row = $cluster->fetch_assoc()) {
					?>
								
						<tr>
								<td style="text-align: left;">&nbsp;<?php echo $row['idx'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v1'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v2'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v3'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v4'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v5'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v6'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v7'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v8'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v9'];?></td>
						</tr>

					<?php 
								}
							}
					?>
					</table>
				</div>
				<div class="col-sm-12">
					<table style="margin-left: auto; margin-right: auto;" class="table table-hover">
						<thead>
							<tr style="height: 25px; background-color: #000080;">
								<td style="width: 200px;" rowspan="2">
									<p style="text-align: center;"><strong><span style="color: #ffffff;">Kecamatan</span></strong></p>
								</td>
								<td style="text-align: center;" colspan="9"><strong><span style="color: #ffffff;">Berdasarkan Umur</span></strong></td>
								<td style="width: 65px; text-align: center;" rowspan="2"><strong><span style="color: #ffffff;">C1</span></strong></td>
								<td style="width: 65px; text-align: center;" rowspan="2"><strong><span style="color: #ffffff;">C2</span></strong></td>
							
							</tr>
							<tr style="height: 25px; background-color: #000080;">
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">15 - 19</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">20 - 24</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">25 - 29</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">30 - 34</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">35 - 39</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">40 - 44</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">45 - 49</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">50 - 54</span></strong></td>
								<td style="width: 65px; text-align: center;"><strong><span style="color: #ffffff;">&ge; 55</span></strong></td>

							</tr>
						</thead>
						<tbody>
							<tr style="height: 15px;">
<?php
$sql12 = "SELECT `data`.Kecamatan,`data`.v1,`data`.v2,`data`.v3,`data`.v4,`data`.v5,`data`.v6,`data`.v7,`data`.v8,`data`.v9,iterasi.c1,iterasi.c2,iterasi.min FROM `data` INNER JOIN iterasi ON iterasi.ID_data = `data`.ID WHERE Cluster = '$x'";
$hasil = $conn->query($sql12);
if ($hasil->num_rows > 0) {
	while($row = $hasil->fetch_assoc()) {
?>
								<td style="text-align: left;">&nbsp;<?php echo $row['Kecamatan'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v1'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v2'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v3'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v4'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v5'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v6'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v7'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v8'];?></td>
								<td style="text-align: right;">&nbsp;<?php echo $row['v9'];?></td>
								<td style="text-align: right;<?php if($row['c1']<$row['c2']) echo "background-color: #ffdd33;"?>">&nbsp;<?php echo $row['c1'];?></td>
								<td style="text-align: right;<?php if($row['c1']>$row['c2']) echo "background-color: #ffdd33;"?>">&nbsp;<?php echo $row['c2'];?></td>
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
					</table>
				</div>
<?php
	}
}
?>
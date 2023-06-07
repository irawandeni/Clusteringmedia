<?php
	include_once 'config.php';

	$nama	= mysql_escape_string($_POST['username']);
	$pass	= mysql_escape_string($_POST['password']);
	if($_POST[level]=="Admin"){
		$level="Admin";
	}elseif($_POST[level]=="User"){
		$level="User";
	}
	
	$sql	= mysql_query("SELECT * FROM admin WHERE username='$nama' && password='$pass' && level='$level'");
	$data	= mysql_fetch_array($sql);

	if(mysql_num_rows($sql) > 0){
		session_start();
		$_SESSION['id_user']	= $data['id_user'];;
		$_SESSION['username']	= $data['username'];
		$_SESSION['password']	= $data['password'];
		$_SESSION['level']	= $data['level'];
		
		echo "<script language=javascript>
				window.location='home.php';
				</script>";
		exit;
		
	}else{
		echo "<script language=javascript>
				window.alert('Login GAGAL');
				history.back();
				</script>";
		exit;
	}
?>
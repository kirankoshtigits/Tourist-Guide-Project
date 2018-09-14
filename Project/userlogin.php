<?php
	
	require 'dbconfig/config.php';
?>
<html>
	<head>
		<style>
			.wel{
				font-size:18px;
			}
		</style>
		<title>User Login</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div  id="container9">
			<div id="header9">
				<ul>
					<li><a href="creatplan.php"><input type="button" class="ind_btn9" value="Create Plan"></a></li>
					<li><a href="userfeedback.php"><input type="button" class="ind_btn9" value="Feedback"></a></li>
					<li><a href="user.php"><input type="button" class="ind_btn9" value="Logout"></a></li>
					<li class="wel"><?php session_start(); echo 'Wel-Come:'.$_SESSION['username'];?></li>
				</ul>
			</div>
		</div>
	</body>
</html>
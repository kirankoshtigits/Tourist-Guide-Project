<?php
	require 'dbconfig/config.php';
	$query="SELECT * FROM addplace";
	$result=mysqli_query($con,$query);
?>
<html>
	<head>
		<title>Select Place</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div  id="container10">
			<div id="header10">
				<ul>
					<li><a href="creatplan.php"><input type="button" class="ind_btn10" value="Creat Plan"></a></li>
					<li><a href="userfeedback.php"><input type="button" class="ind_btn10" value="Feedback"></a></li>
					<li><a href="user.php"><input type="button" class="ind_btn10" value="Logout"></a></li>
				</ul>
			</div>
			<form method="post" action="Map.php">
				<p class="creat">Select Places</p>
				<label class="label10">Username</label>
				<input  type="E-mail" class="input10" placeholder="E-mail" required><br><br><br>
				
				<label class="label10">Select Plan</label>
				
						<select class="select10" name="place" required>
							  <?php while($row1=mysqli_fetch_array($result)):;?>
							  <option><?php echo $row1[5];?></option>
							  <?php endwhile;?>
						</select>
				
				<input type="submit" name="submit_btn3" class="submit_btn3" value="Submit">
				<a href="userlogin.php"><input type="reset" class="reset_btn2" value="Cancel"></a><br>	
			</form>
			
		</div>
	</body>
</html>
<?php
	require 'dbconfig/config.php';
?>
<html>
	<head>
		<title>User Feddback</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div  id="container11">
			<div id="header11">
				<ul>
					<li><a href="creatplan.php"><input type="button" class="ind_btn11" value="Creat Plan"></a></li>
					<li><a href="userfeedback.php"><input type="button" class="ind_btn11" value="Feedback"></a></li>
					<li><a href="user.php"><input type="button" class="ind_btn11" value="Logout"></a></li>
				</ul>
			</div>
			<div>
			<form method="post" name="form11">
				<p class="feedback2">User Feedback</p>
				<label class="label11">Username</label>
				<input name="username" type="Email" class="input11" placeholder="Email id" required><br>
				<label class="label11">Feedback</label>
				<input name="feedback" type="text" class="input12" placeholder="Take Feeddback" required><br>
				<input name="submit_btn4" type="submit" class="submit_btn4" value="Submit">
				<a href="userlogin.php"><input type="reset" class="reset_btn3" value="Cancel"></a><br>
			</form>
			<?php
				if(isset($_POST['submit_btn4']))
				{
					//echo '<script type="text/javascript"> alert("Sign Up Button Clicked") </script>';
					$Email=$_POST['username'];
					$Feedback=$_POST['feedback'];
				
							$query="select * from userfeedback WHERE Email='$Email'";
							$query_run=mysqli_query($con,$query);
							$feed=mysqli_num_rows($query_run);
							if($feed>0)
							{
								//ther is already a user with the same username
								echo '<script type="text/javascript"> alert("Your are already take feedback") </script>';
							}
							else
							{
								//insert Feedback on database
								$query="insert into userfeedback values('','$Email','$Feedback')";
								$query_run=mysqli_query($con,$query);
								if($query_run)
								{
									echo '<script type="text/javascript"> alert("Feedback Submit Succeful") </script>';
								}
							}	
				}
			?>
			</div>
		</div>
	</body>
</html>
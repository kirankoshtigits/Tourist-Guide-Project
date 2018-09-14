<?php
	require 'dbconfig/config.php';
?>
<html>
	<head>
		<title>Admin Page</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div  id="container1">
			<div id="header1">
				<ul>
					<li><a href="index.php"><input type="button" class="ind_btn1" value="Home"></a></li>
					<li><a href="admin.php"><input type="button" class="ind_btn1" value="Admin"></a></li>
					<li><a href="user.php"><input type="button" class="ind_btn1" value="User"></a></li>
					<li><a href="register.php"><input type="button" class="ind_btn1" value="Register"></a></li>
				</ul>
			</div>
			<div class="form1">
				<form method="post" action="admin.php" class="form2" name="form2">
				
					<p class="admin">Admin Login</p>
					
					<label class="label">Username</label>
						<input  
							name="username" 
							type="text" 
							class="text"
							placeholder="Admin Username" 
							required
						><br><br>
					
					<label class="label">Password</label>
						<input 
							name="password" 
							type="password" 
							class="text" 
							placeholder="Admin Password" 
							required
						><br>
					
					<input name="login_btn" type="submit" class="login_btn" value="Login">
				</form>
				<?php 
					if(isset($_POST['login_btn']))
					{
						//echo '<script type="text/javascript">alert("Login Button Clicked") </script>';
						$username=$_POST['username'];
						$password=$_POST['password'];
							$query="SELECT * FROM admin WHERE username='$username' AND password='$password'";
							$query_run=mysqli_query($con,$query);
							
							if(mysqli_num_rows($query_run)==1)
							{
								header('location:adminlogin.php');
							}
							else
							{
									echo'<script type="text/javascript">alert("Wrong Username/Password")</script>';
							}
					}		
				?>
			</div>
		</div>
	</body>
</html>
<?php
	require 'dbconfig/config.php';
?>
<html>
	<head>
		<title>Feedback</title>
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
		<div  id="container6">
			<div id="header6">
				<ul>
					<li><a href="addplace.php"><input type="button" class="ind_btn6" value="Add Places"></a></li>
					<li><a href="viewplace.php"><input type="button" class="ind_btn6" value="View Places"></a></li>
					<li><a href="viewusers.php"><input type="button" class="ind_btn6" value="View Users"></a></li>
					<li><a href="viewfeedback.php"><input type="button" class="ind_btn6" value="View Feedback"></a></li>
					<li><a href="index.php"><input type="button" class="ind_btn6" value="LogOut"></a></li>
				</ul>
			</div>
			<div>
				<p class="feedback1">View Feedback</p>
				<?php
					$query=mysqli_query($con,"SELECT * FROM userfeedback");
					$fetch=mysqli_fetch_assoc($query);
					echo "<table border='1' cellspacing='0'>";
						echo "<tr>";
							echo "<th width='30'>";
								echo"Id";
							echo "</th>";
							echo "<th width='200'>";
								echo"Email";
							echo "</th>";
							echo "<th width='400'>";
								echo"Feedback";
							echo "</th>";
						echo "</tr>";
						while($fetch=mysqli_fetch_assoc($query))
						{
							echo "<tr>";
								echo"<td>".$fetch['Id']."</td>";
								echo"<td>".$fetch['Email']."</td>";
								echo"<td>".$fetch['Feedback']."</td>"; 
							echo "</tr>";
						}
					echo"</table>";
			?>
			</div>
		</div>
	</body>
</html>
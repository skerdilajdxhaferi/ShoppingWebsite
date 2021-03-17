<!DOCTYPE html>
<html>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "shopping";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, orderId, status,remark FROM ordertrackhistory";
$result = $conn->query($sql);
if ($result->num_rows >0) {
    // output data of each row
	$i = 0;
	
    while($row = $result->fetch_assoc()) {
		if($i == $result->num_rows-1){
			
		 ?>
		
			<div class="message_wrapper">
				<h3><?php echo "Status: " . $row["status"]?><h3>
				<h3><br><?php echo "Remark: " . $row["remark"]. "<br>";?></h3>
			</div>
			<?php
		}
			
		$i++;
    }
} else {
    echo "0 results";
}

$conn->close();
?> 
 <style>
	 div .message_wrapper h3{
		 margin-top: 1em; 
	 }
	 div.message_wrapper {
		 text-align: center;
		 color:#3a43c1;
	 }
 </style>


</body>
</html>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$database="haris";


// Create connection
$conn = new mysqli($servername, $username, $password,$database);

// Check connection
if ($conn->connect_error) {
	echo '<script language="javascript">';
echo 'alert("Connection Failed!")';
echo '</script>';
    die("Connection failed: " . $conn->connect_error);
}
  
?>

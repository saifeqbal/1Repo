 		<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "gametable.sql";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) 
{
    die("Connection failed:" . $conn->connect_error);
}

$sql = "SELECT wman,kobl, FROM tablen.sql";
$result = $conn->query($sql);

$data = array();
if ($result->num_rows>0)
 {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
} else
 {
    echo json_encode([]);
    exit;
}
$conn->close();
echo json_encode($data);
?>



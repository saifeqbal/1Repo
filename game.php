
<?php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "tablen";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Create database
$sql = "CREATE DATABASE tablen";
if ($conn->query($sql) === TRUE) {
    echo "Database created successfully\n";
} else {
    echo "Error creating database: " . $conn->error;
}

// Connect to the database
$conn->select_db($tablen);


if ($conn->query($sql) === TRUE) {
    echo "Table tablen created successfully\n";
} else {
    echo "Error creating table: " . $conn->error;
}

// Insert data
$sql = "INSERT INTO tablen (column1, column2, column3, column4) VALUES
('gamers table', 'OS, Android', 'Street fighter', '12/54'),
('game starts', 'title', 'tekken', '12/54'),
('scores', 'games', 'Ronin', '12/54'),
('players', 'Release', 'call of dragons', '12/54');";

if ($conn->query($sql) === TRUE) {
    echo "Data inserted successfully\n";
} else {
    echo "Error inserting data: " . $conn->error;
}


if ($conn->query($sql) === TRUE) {
    echo "Table Pictures created successfully\n";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
?>
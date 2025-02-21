create database gametableusers;
create table gametableusers;
//
insert column ["wman", varchar 16 values ("ev"),("jeva"),("lubt"), ko];
insert column ["wshapeman " varchar 32 values ("character") , ("values") ,("figure") ("sature")];
insert row[("kobl"),(" wanb "),("vct") , varchar ("64"),values ("37","45","26")];
insert row ("amia",varchar("16") , ("32"), ];
insert row[("cifa" varchar("64"),values  ("43", "28","32")];
insert row [("clothes"),("cholor"), ("shoes"), varchar ("32"),values("shirt")];
insert row [("ac"),("fu"), varchar("16") values("a"),("70")];
insert row ["size",varchar("32"), values ("24""45","56")]; 

insert row ["debrt", varchar(56) ,values("24"),("23"),("45"),("66")];
insert column [clov, character(256), values("tp","sirt","bar")];

insert column [(character),char(
("48"),values("56","6")];

insert row["change", char("56","67", "56"), varchar("32") ,values ("fail"), ("exception"),("selery"),("boogh")];

//html//

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Database Display</title>
    <style>
        table
 {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
 }
        
      th,td
 {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
 }
        
   th 
{
            background-color: #f2f2f2;
}
        
   tr:nth-child(even) 
{
            background-color: #f9f9f9;
}
    </style>
</head>
<body>
    <h1>Data Display</h1>
 <?php
    // Database connection parameters
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "tablen.sql";
    try {
        // Create connection
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
     
 $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        // SQL query
        $sql = "SELECT id, name, email FROM users";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        
        // Display results in table
        echo "<table>";
        echo "<tr><th>ID</th><th>Name</th><th>Email</th></tr>";
        
        while($row = $stmt->fetch(PDO::FETCH_ASSOC))
 {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row['id']) . "</td>";
            echo "<td>" . htmlspecialchars($row['name']) . "</td>";
            echo "<td>" . htmlspecialchars($row['email']) . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        
    } catch(PDOException $e) 
{
        echo "Connection failed: ". $e->getMessage();
    }
    $conn = null;
    ?>

</body>
</html>

//html page ended//







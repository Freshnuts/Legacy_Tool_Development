<?php
// 'root'@'localhost' w/ no password = permission denied
$servername = "localhost";
$username = "www-data";
$password = "password";
$dbname = "Test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {

  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM Fortnite";
$result = $conn->query($sql);

echo "<h2>Fortnite Player Statistics</h2><br>";

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<br>Gamer_Tag: "            . $row["Gamer_Tag"];
    echo "<br>Season Total: "         . $row["Season_Total"];
    echo "<br>Season Eliminations: "  . $row["Season_Elim"];
    echo "<br>Season Placement:  "    . $row["Season_Placement"];
    echo "<br>Season Appearances: "   . $row["Season_Appear"]; 
    echo "<br>Seed Score: "           . $row["Seed_Score"];
    echo "<br>Lifetime Earnings: "    . $row["Lifetime_Earnings"];
    echo "<br>";
  }
} else {

  echo "0 results";

}

$conn->close();
?>

</php header(‘Access-Control-Allow-Origin: *’);

header(‘Access-Control-Allow-Methods: GET, POST’);

header(“Access-Control-Allow-Headers: X-Requested-With”); 
?>

<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "lct";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
    $sql = "INSERT INTO package ( fname, lname, email, pack, phone) VALUES ('".$_POST['fname']."', '".$_POST['lname']."' , '".$_POST['email']."' , '".$_POST['pack']."', '".$_POST['phone']."' )"; 
    if (mysqli_query($conn,$sql)) {
    $data = array("data" => "You Data added successfully");
        echo json_encode($data);
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
?>
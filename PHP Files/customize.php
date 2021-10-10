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
    $sql = "INSERT INTO customize ( companyname, email, emailo, num, numo, title, idea, pay, designs, duration, involvement, frontframework, backframework, other) VALUES ('".$_POST['companyname']."', '".$_POST['email']."' , '".$_POST['emailo']."' , '".$_POST['num']."' , '".$_POST['numo']."' , '".$_POST['title']."' , '".$_POST['desc']."' , '".$_POST['price']."' , '".$_POST['data']."' , '".$_POST['days']."' , '".$_POST['involvement']."' , '".$_POST['frontframe']."' , '".$_POST['backframe']."' , '".$_POST['other']."')"; 
    if (mysqli_query($conn,$sql)) {
    $data = array("data" => "You Data added successfully");
        echo json_encode($data);
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
?>
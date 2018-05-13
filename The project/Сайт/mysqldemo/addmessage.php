<?php

$name_user="root";
$password_user="";


try{
	$conn = new PDO("mysql:host=localhost;dbname=testdb", $name_user, $password_user);

	if (empty($_POST['hotel_name'])) exit("Error. Empty field.");
	if (empty($_POST['holding_price'])) exit("Error. Empty field.");
	if (empty($_POST['hotel_description'])) exit("Error. Empty field.");

	$query = "INSERT INTO hotels VALUES (NULL , :hotel_name, :holding_price, :hotel_description, NOW(), NOW())";
	$msg = $conn->prepare($query);
	$msg->execute(['hotel_name' => $_POST['hotel_name'], 'holding_price' => $_POST['holding_price'], 'hotel_description' => $_POST['hotel_description']]);

	header("Location:adddata.php");
}
catch (PDOException $e){
	echo "error" .$e->getMessage();
}

?>
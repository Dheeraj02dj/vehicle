<?php 
session_start();
try {
    $dbc=new PDO("mysql:host=localhost;dbname=vehicle","root","") or die("Unable to connect.");
}
catch(PDOException $e) {
    	echo "Error: " . $e->getMessage();
    }
global $dbc;
$stmt = $dbc->prepare("SELECT username, password from tbladmin WHERE username='".$_POST['username']."' && password='".  $_POST['password']."'");
$stmt->execute();
$row = $stmt->rowCount();
if ($row > 0){ 
    echo "correct";
} else{ 
    echo 'wrong';
}

?>

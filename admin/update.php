<?php 
include('config.php');

$user_id = $_POST['user_id'];
// echo $user_id;
$result = mysqli_query($connection, "SELECT * from userdata where `id` = '$user_id'");

if(mysqli_num_rows($result) > 0){
    $data = mysqli_fetch_assoc($result);
    echo json_encode($data);
    
}


?>
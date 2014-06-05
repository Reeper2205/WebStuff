<?php
include "server.php";
session_start();


 
$username = $_POST['username'];
$password = $_POST['password'];

 
$username = mysql_real_escape_string($username);
$query = "SELECT * FROM users
        WHERE Name = '$username' AND password = '$password'";
		
$result = mysql_query($query);

 while ($row = mysql_fetch_assoc($result)) {
			 $data = array("id"=> $row['id'],"Name"=> $row['Name'],"group_id"=> $row['group_id']);
	}
	
if(mysql_num_rows($result) == 0) // User not found. So, redirect to login_form again.
{
    header('Location: login.html');
}
/*$userData = mysql_fetch_array($result, MYSQL_ASSOC);
$hash = hash('sha256', $userData['salt'] . hash('sha256', $password) );
 
if($hash != $userData['password']) // Incorrect password. So, redirect to login_form again.
{
    header('Location: login.html'); //To use if wanted to add extra security to it
}*/
else{ // Redirect to home page after successful login.
	$_SESSION['sess_user_id'] = $data['id'];
	$_SESSION['sess_username'] = $data['Name'];
	$_SESSION['sess_group_id'] = $data['group_id'];
	header('Location: index.php');
	
}
?>

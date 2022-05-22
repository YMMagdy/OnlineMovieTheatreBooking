<?php 
include 'dbconnection.php';// include database file

$conn = OpenCon();//open database connection 

//get the values from js
$firstName=$_POST["firstName"];
$lastName=$_POST["lastName"];
$username=$_POST["username"];
$password=password_hash($_POST["password"],PASSWORD_DEFAULT);//password hashing to add more security
$creditCardNo=password_hash($_POST["creditCardNo"],PASSWORD_DEFAULT);//creditcard number hashing to add more security
$creditCardPin=password_hash($_POST["creditCardPin"],PASSWORD_DEFAULT);//pin number hashing to add more security

 $sql = "INSERT INTO users(firstname, lastname, email,pwhash,creditcardnumber,creditcardpin) VALUES('$firstName','$lastName','$username','$password','$creditCardNo','$creditCardPin' )";//SQL query for storing values
 $success=false;//check storing success
if ($conn->query($sql) === TRUE) {
  $success=true;
   
  } 
  echo json_encode($success);//return success state
?>
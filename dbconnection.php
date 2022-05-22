<?php
// Initial database connections
// open connection function
function OpenCon()
 {
 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "movies";//our database name
 //openning the connection
 $conn = new mysqli($dbhost, $dbuser, $dbpass, $db) or die("Connect failed: %s\n". $conn -> error);
 
 return $conn;  
 }
 //close connection function
function CloseCon($conn)
 {
 $conn -> close();
 }
?>
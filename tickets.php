<?php
include 'dbconnection.php';// include database file
$conn = OpenCon();//open database connection
//get the current values from js
$email = $_POST['email'];
$movieid = (int)$_POST['movieid'];
$seat = array();//seat array includes all the 
$seat=json_decode( $_POST['seatstobereserved']);//convert the array to JSON values
$t="12:00";//static time for now, supposed to be dynamic from the dropdown menu
for($i=0;$i<count($seat);$i++ ){
    $sql1 = "INSERT INTO tickets(email, movieid, seat, t) VALUES ('" . $email . "', " . $movieid . ", '" . $seat[$i] . "', '" . $t . "');";//SQL to insert
    $stmt = $conn->query($sql1);
}

CloseCon($conn); //Close the connnection to the database
if($stmt===FALSE)
echo("Booking was successful");
else echo("true");
?>
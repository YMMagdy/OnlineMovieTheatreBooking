<?php
include 'dbconnection.php';// include database file
$conn = OpenCon();//open database connection 

$movieid = (int)$_GET['movieid'];//get the current movie from js
$sql1="SELECT * FROM tickets WHERE movieid=$movieid";//SQL text for getting pre-reserved movie tickets from the database

$result= $conn->query($sql1, MYSQLI_STORE_RESULT);//Query results stored

$numofrows=$result->num_rows;//Number of Columns
$numofcolumns=$result->field_count;//Number of rows
$resultall=$result->fetch_all(MYSQLI_BOTH);//getting results 
if(count($resultall)!=0){//if there's tickets
$i=0;
  while($numofrows!=0){
  $return_arrays[$i]=array(
        "seat"=> $resultall[$i]["seat"],
  );//Adding the results as an array to return it to the js
  $numofrows--;
  $i++;
}
} else $return_arrays=FALSE;//if there's no tickets
CloseCon($conn); //Close the connnection to the database
echo json_encode($return_arrays); //Sending the data back as a JSON String

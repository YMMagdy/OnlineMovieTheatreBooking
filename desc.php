<?php 

include 'dbconnection.php';// include database file

$conn=OpenCon();//open database connection 

$movid=$_REQUEST['movieid'];//get the current movie from js

$sql= "SELECT * FROM movies WHERE movieid='".$movid."'"; //SQL text for getting movie description from the database
$result=$conn->query($sql,MYSQLI_STORE_RESULT);//Query results stored
$numberofcolumns=$result->field_count;//Number of Columns
$resultall=$result->fetch_array(MYSQLI_BOTH);//getting results 

$return_array[]=array(
    "movieid" => $resultall["movieid"],
    "title" => $resultall["title"],
    "descr" => $resultall["descr"],
    "starring" => $resultall["starring"],
    "youtubetrailerlink" => $resultall["youtubetrailerlink"],
    "rating" => $resultall["rating"],
    "lang" => $resultall["lang"],
    "runtime" => $resultall["runtime"],
    "releasedate" => $resultall["releasedate"],
    "genre" => $resultall["genre"],
    "imagetype" => $resultall["imagetype"],
    "imagedata" => $resultall["imagedata"],
    "av" => $resultall["av"] 
);//Adding the results as an array to return it to the js

CloseCon($conn);//Closing database connection

echo json_encode($return_array);//Sending the data back as a JSON String
?> 
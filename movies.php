<?php
include 'dbconnection.php';
$conn = OpenCon();//Openning Connection with DB
$sql1="SELECT * FROM movies";//Query Text to get all movies


$result= $conn->query($sql1, MYSQLI_STORE_RESULT);//The results are stored in a variable due to the second parameter
//number of rows and columns
$numofrows=$result->num_rows;
$numofcolumns=$result->field_count;
$resultall=$result->fetch_all(MYSQLI_BOTH);//Fetching all the data (as a 2-D array)

  $i=0;
  while($numofrows!=0){
  $return_arrays[$i]=array(
        "movieid"=>$resultall[$i]["movieid"],
        "title"=> $resultall[$i]["title"],
        "descr"=> $resultall[$i]["descr"],
        "starring"=> $resultall[$i]["starring"],
        "youtubetrailerlink"=> $resultall[$i]["youtubetrailerlink"],
        "rating"=> $resultall[$i]["rating"],
        "lang"=> $resultall[$i]["lang"],
        "runtime"=> $resultall[$i]["runtime"],
        "releasedate"=> $resultall[$i]["releasedate"],
        "genre"=> $resultall[$i]["genre"],
        "imagetype"=> $resultall[$i]["imagetype"],
        "imagedata"=> $resultall[$i]["imagedata"],
        "av"=> $resultall[$i]["av"]
  );
  $numofrows--;
  $i++;
}//Adding the data in an array to be returned

CloseCon($conn); //Close the connnection to the database

echo json_encode($return_arrays);//sending the results back as a json string
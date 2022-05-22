<?php

include 'dbconnection.php';// include database file
$conn = OpenCon();//open database connection 
//get the current values from js
$username=$_GET["username"];
$password=$_GET["password"];

$sql="SELECT email,firstname,lastname,pwhash FROM users WHERE email='".$username."'";//SQL text for getting the user that have certain email and password from the database
 $result= $conn->query($sql, MYSQLI_STORE_RESULT);//Query results stored
 $boolVar=false;//for checking the login status
  if(!($result->num_rows > 0)){//if there's no user
   
    $userData=array("valid"=>$boolVar);//not valid
    echo json_encode($userData);
  }

 else{
 $result=$result->fetch_all(MYSQLI_BOTH);//getting results if there's a user

 if (password_verify($password,$result[0]["pwhash"] )) {//if the password is right
    $boolVar=true; 
    $userData=array(
            "username"=>$result[0]["email"],
            "firstname"=>$result[0]["firstname"],
            "lastname"=>$result[0]["lastname"],
            "valid"=>$boolVar
          );//Adding the results as an array to return it to the js
            
    echo json_encode($userData);  
    }//Sending the data back as a JSON String
    else{//in case of wrong password
        $userData=array("valid"=>$boolVar);
        echo json_encode($userData);//Sending the data back as a JSON String
    }

} 

?>
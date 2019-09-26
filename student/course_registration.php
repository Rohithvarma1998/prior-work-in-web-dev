<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "exam1";
$totalcredits=0;
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>
<html>
<head>
	<title></title>
</head>
<body>
<?php 
$rollnumber= $sem= $branch='' ;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $rollnumber = test_input($_POST["roll_number"]);
  $sem = test_input($_POST["sem"]);
  $branch = test_input($_POST["branch"]);
 
 
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
	ROLL NUMBER: <br>
<input  type="text" name="roll_number" required="true" value="<?php echo $rollnumber  ?>">
   <br> SEM: <br>
<input type ="text" name="sem" required="true" value="<?php echo $sem  ?>">
   <br> BRANCH: <br>
<input type="text" name="branch" required="true" value="<?php echo $branch  ?>">

<br>

<input type="submit"><br>
<h4>CURRENT SEM COURSES</h4>

<?php

if ($_SERVER["REQUEST_METHOD"] == "POST"){
	$branch=strtoupper($branch);
	$dot="'";
	$two=2;
  $sql2="SELECT C.COURSE_ID,C.COURSE_NAME,CSE.CREDITS FROM courses AS C JOIN CSE on C.COURSE_ID=CSE.COURSE_ID where C.COURSE_ID IN (SELECT R.COURSE_ID FROM `registration` AS R JOIN marks AS M on R.REGISTRATION_ID=M.REGISTRATION_ID WHERE R.SEM=$sem-$two AND R.ROLLNUMBER=$rollnumber AND M.GRADE NOT IN('EX','A','B','C','D','P'))";
	$branch=$dot.$branch.$dot;
	
   $sql = "SELECT A.COURSE_ID , A.CREDITS , B.COURSE_NAME FROM `CSE` AS A JOIN courses AS B ON A.COURSE_ID=B.COURSE_ID WHERE A.SEM=$sem AND A.BRANCH= $branch  ";
   $result = $conn->query($sql);

   $dfail="CREATE VIEW [dfail] AS SELECT C.COURSE_ID,C.COURSE_NAME,CSE.CREDITS,CSE.SEM FROM courses AS C JOIN CSE ON C.COURSE_ID=CSE.COURSE_ID where C.COURSE_ID IN (SELECT R.COURSE_ID FROM `registration` AS R JOIN marks AS M on R.REGISTRATION_ID=M.REGISTRATION_ID where R.ROLLNUMBER=$rollnumber AND M.GRADE NOT IN('EX','A','B','C','D','P'))";
   $pass="CREATE VIEW [pass] AS SELECT C.COURSE_ID,C.COURSE_NAME,CSE.CREDITS,CSE.SEM FROM courses AS C JOIN CSE ON C.COURSE_ID=CSE.COURSE_ID where C.COURSE_ID IN (SELECT R.COURSE_ID FROM `registration` AS R JOIN marks AS M on R.REGISTRATION_ID=M.REGISTRATION_ID WHERE R.ROLLNUMBER=$rollnumber AND M.GRADE IN('EX','A','B','C','D','P'))";
   
   $fail="CREATE VIEW [fail] AS SELECT * FROM dfail MINUS SELECT * FROM pass";

   $conn->query($dfail);
   $conn->query($pass);
   $conn->query($fail);
   
   $result1="SELECT *FROM fail where SEM IN ($sem-4,$sem-3)"
   
   


if ($result->num_rows > 0) {

    while($row =$result->fetch_assoc()) {
        ?>
        
        <input type="checkbox" value=<?php echo $row["CREDITS"]  ?> id='courses' class='checkbox-btn' name="<?php echo $row["COURSE_ID"]  ?> "  onchange="myfunction()">

        <?php
        echo "COURSE_ID: " . $row["COURSE_ID"]. "--" . $row["COURSE_NAME"]. "-----CREDITS: " . $row["CREDITS"]. "<br>";
       
        
    }
    ?>
    
<?php
}
$result2 = $conn->query($sql2);
if ($result2->num_rows > 0) {

    while($row =$result2->fetch_assoc()) {
        ?>
        <H4>BACKLOGS</H4>
        <input type="checkbox" value=<?php echo $row["CREDITS"]  ?> id='courses' class='checkbox-btn' name="<?php echo $row["COURSE_ID"]  ?> "  onchange="myfunction()">

        <?php
        echo "COURSE_ID: " . $row["COURSE_ID"]. "--" . $row["COURSE_NAME"]. "-----CREDITS: " . $row["CREDITS"]. "<br>";
       
        
    }
}



}

?>
<div><b>Total Credits :</b><span id="total">0</span></div>
<script>

function myfunction(){
	var sum=0
	var test;
      var checkboxes = document.getElementsByClassName("checkbox-btn");
      
      for (var i = 0; i < checkboxes.length; ++i) {
        if(checkboxes[i].checked){
            sum+= parseInt( checkboxes[i].value);
		
      
        }
        }
      //document.getElementById("proId").value = sum;
      
      document.getElementById("total").innerHTML = sum;
}
</script>



</form>
</body>
</html>
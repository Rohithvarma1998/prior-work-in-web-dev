<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<?php

$servername = "localhost";

$username = "root";

$password = "";

$dbname = "exam";

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

$rollnumber= '';
$sem= '';
?>
<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">

ROLLNO:<input type="text" name="rollnumber" required="true" value=<?php  echo $rollnumber    ?>>
<br><br>

SEM:<input type="text" name="sem" required="true" value=<?php echo $sem  ?>>
<br><br>

<input type="submit" name="submit1" value="SUBMIT">

<?php

if($_SERVER["REQUEST_METHOD"]=="POST"){

  $rollnumber=test_input($_POST["rollnumber"]);

  $sem=test_input($_POST["sem"]);




$batch_query="SELECT ADDMISSION_YEAR FROM student WHERE ROLL_NUMBER=$rollnumber";
    $batch_result=$conn->query($batch_query);
    $batch=$batch_result->fetch_row();
    $batch=json_encode($batch);

   $grade="CREATE VIEW grade AS SELECT R.COURSE_ID,C.COURSE_NAME,CSE.CREDITS,M.GRADE FROM marks AS M JOIN registration AS R on R.REGISTRATION_ID=M.REGISTRATION_ID JOIN courses AS C on R.COURSE_ID=C.COURSE_ID JOIN cse AS CSE ON CSE.COURSE_ID=C.COURSE_ID WHERE R.ROLLNUMBER=$rollnumber AND R.SEM=$sem AND CSE.BATCH=$batch";
      
   
   $fail1="CREATE VIEW res AS SELECT * FROM grade WHERE GRADE NOT IN ('EX','A','B','C','D','P') AND COURSE_ID NOT IN (SELECT COURSE_ID FROM grade WHERE GRADE IN ('EX','A','B','C','D','P')) UNION SELECT * FROM grade WHERE GRADE IN ('EX','A','B','C','D','P')";

   $req=" SELECT * FROM res  ORDER BY COURSE_ID ";

   $conn->query($grade);
   $conn->query($fail1);
   $result=$conn->query($req);
   

    echo"<table border='1'>
    <tr>
    <th>COURSE_ID</th>
    <th>COURSE_NAME</th>
    <th>CREDITS</th>
    <th>GRADE</th>
    </tr>";
    $weighted_sum=0;
    $sum=0;
   
   while($row=$result->fetch_assoc()){

   	echo "<tr> <td>".$row["COURSE_ID"]."</td>".
   	"<td>".$row["COURSE_NAME"]."</td>".
   	"<td>".$row["CREDITS"]."</td>".
   	"<td>".$row["GRADE"]."</td> </tr>";
   	$weighted_sum+=$row["CREDITS"]*grade_weight($row["GRADE"],$batch);
   	$sum+=$row["CREDITS"];
 
   }
 echo"</table>";
  echo "<br> <H4>SGPA:</H4>".(round($weighted_sum/$sum,2,PHP_ROUND_HALF_DOWN));

$cgpa=" SELECT reg.REGISTRATION_ID,reg.COURSE_ID,cse.CREDITS,marks.GRADE FROM `registration` as reg join cse on reg.COURSE_ID=cse.COURSE_ID join marks on marks.REGISTRATION_ID=reg.REGISTRATION_ID WHERE ROLLNUMBER=43 ";
$cgpa_result=$conn->query($cgpa);
$total_credits=0;
$wei_grade=0;
while($row=$cgpa_result->fetch_assoc()){
        
   	$total_credits=$total_credits+$row["CREDITS"];
        $wei_grade=$wei_grade+(grade_weight($row["GRADE"],2015)*$row["CREDITS"]);
   }

$final_cgpa=round($wei_grade/$total_credits,2,PHP_ROUND_HALF_DOWN);
echo "\n <h4>CGPA:</h4>";

echo "$final_cgpa";
}

  function test_input($data) {

  $data = trim($data);

  $data = stripslashes($data);

  $data = htmlspecialchars($data);

  return $data;

}
?>



<?php
Function grade_weight($data,$btch){
  if($btch<2017){

	if($data=='EX')
		return 10;
	elseif($data=='A')
		return 9;
	elseif($data=='B')
		return 8;
	elseif($data=='C')
		return 7;
	elseif($data=='D')
		return 6;
	elseif($data=='P')
		return 5;
	else
		return 0;
  }

  else{
  	if($data=='EX')
		return 10;
	elseif($data=='A')
		return 9;
	elseif($data=='B')
		return 8;
	elseif($data=='C')
		return 7;
	elseif($data=='D')
		return 6;
	elseif($data=='E')
		return 5;
	elseif($data=='P')
		return 4;
	else
		return 0;

  }
}


?>

</form>
</body>
</html>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "faculty_recr";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

	$number=count($_POST["Organization_name"])
	if($number>0) {

		for ($i=0; $i < $number; $i++) { 
			# code...
			$oname=trim($_POST["Organization_name[$i]"]);
			$opalce=trim($_POST["Org_place[$i]"]);
			$design=trim($_POST["Designation[$i]"]);
			$pay_sacle=trim($_POST["pay_scale[$i]"]);
			$agp=trim($_POST["AGP"[$i]]);
			$dfrom=trim($_POST["date_from[$i]"]);
			$dto=trim($_POST["date_to[$i]"]);
			$otype=trim($_POST["Org_type[$i]"]);
			$sql = "INSERT INTO teaching_exp (userid,organization_name,organization_place,designation,payscale,AGP,from_date,to_date,organization_type) VALUES($oname,$oplace,$design,$pay_scale,$agp,$dfrom,$dto,$otype)";
		    if($conn->query($sql) === TRUE)
			{
				echo"record_added";
		    }
		    else
		    {
		    	echo "Error:".$sql ."<br>".$conn->error;
		    }
		}
	}

} 

$conn->close();

?>
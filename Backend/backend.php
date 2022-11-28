<?php

$Database_Location = 'database-1.caissr7fv3x9.us-east-1.rds.amazonaws.com';
$Database_Username = 'admin';
$Database_Pass = 'password';
$Database_Name = 'StackProject';


$link = mysqli_connect($Database_Location, $Database_Username, $Database_Pass, $Database_Name);

if ($link->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

//Insert data into Customers Table
echo 'Connected successfully....';
//$query = "INSERT INTO Customers (CUS_CODE, CUS_LNAME, CUS_FNAM, CUS_INITIAL, CUS_AREACODE, CUS_PHONE, CUS_BALANCE) VALUES ('10026','Papa','Williamson','S','407','444-5698','0')";

//Query Current Cart
$get_customers = "SELECT CUS_CODE, CUS_LNAME FROM Customers ORDER BY created_at";

//Make query and get result
//$result = mysqli_query($link, $get_customers);

//Fetch result as array
//$customers = mysqli_fetch_all($result, MYSQLI_ASSOC);

//mysqli_free_result($result);

//print_r($customers);
$results = $link->query("SELECT * FROM Customers");

?>

<?php while ($data = $results->fetch_assoc()) : ?>
    <tr>
        <td>
            <?php echo $data['CUS_CODE']; ?>
        </td>

        <td>
            <?php echo $data['CUS_LNAME']; ?>
        </td>
    </tr>


<?php endwhile; ?>

<?php
$con = mysqli_connect("localhost", "root","","vehicle")or die(mysqli_error($con));
$vno = $_POST['vnumber'];
$vlocation = "SELECT * FROM `log_book` WHERE cost='$vno'";
$display1= mysqli_query($con, $vlocation);

?>
<html>

<head>
    <title>Vehicle</title>
    <link rel="stylesheet" href="bootstrap/bootstrap1/css/bootstrap.min.css" type="text/css">
    <script type="text/javascript" src="bootstrap/bootstrap1/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="bootstrap/bootstrap1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style1.css">
</head>

<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">

                <a href="main.php" class="navbar-brand">Vehicle parking</a>
            </div>
        </div>
    </div>
    

    <div class="container" id="cont2">
        <h1>vehicle information</h1>
        <table>
            <tbody>
                <tr>
                    <th>vehicle no</th>
                    <th>date</th>
                    <th>time in</th>
                    <th>time_out</th>
                    <th>cost</th>
                </tr>
            <?php while($vlocation1 = mysqli_fetch_array($display1)){ ?>
 
                <tr>
                    <td><?php echo $vlocation1['vehicle_no'];?></td>
                    <td><?php echo $vlocation1['date1'];?></td>
                    <td><?php echo $vlocation1['time_in'];?></td>
                    <td><?php echo $vlocation1['time_out'];?></td>
                    <td><?php echo $vlocation1['cost'];?></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    
</body>

</html>

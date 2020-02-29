<?php
session_start();
error_reporting(0);
$con=mysqli_connect("localhost", "root", "", "vehicle");
if(mysqli_connect_errno()){
echo "Connection Fail".mysqli_connect_error();
}
if(isset($_POST['submit']))
  {
    $contactno=$_POST['contactno'];
    $email=$_POST['email'];

        $query=mysqli_query($con,"select ID from tbladmin where  Email='$email' and MobileNumber='$contactno' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['contactno']=$contactno;
      $_SESSION['email']=$email;
     header('location:reset-password.php');
    }
    else{
      $msg="Invalid Details. Please try again.";
    }
  }
  ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Forgot Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
            <div class="row">
                <h2 class="text-center">Vehicle Parking Mangement System</h2>
            </div><br /><br />

            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title text-center">Forgot password</div>
                </div><br />
                <div class="panel-body">
                    <form name="login" ng-submit="postCtrl.postForm()" class="form-horizontal" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input type="text" name="email" class="form-control" placeholder="Enter your email" required autofocus ng-model="postCtrl.inputData.username">
                        </div><br /><br/>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
                            <input type="text" name="contactno" placeholder="Mobileno" class="form-control">
                        </div><br />
                         <div class="checkbox">
                            <label class="panel-title pull-right">
                                <a href="../index.php">Signin</a>
                            </label>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-12 controls">
                                <button type="submit" class="btn btn-primary center-block" name="submit"><i class="glyphicon glyphicon-refresh"></i>&nbsp;Reset</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</body>

</html>

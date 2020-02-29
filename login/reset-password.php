<?php
session_start();
error_reporting(0);
$con=mysqli_connect("localhost", "root", "", "vehicle");
if(mysqli_connect_errno()){
echo "Connection Fail".mysqli_connect_error();
}
error_reporting(0);

if(isset($_POST['submit']))
  {
    $contactno=$_SESSION['contactno'];
    $email=$_SESSION['email'];
    $password=$_POST['newpassword'];

        $query=mysqli_query($con,"update tbladmin set Password='$password'  where  Email='$email' && MobileNumber='$contactno' ");
   if($query)
   {
       echo '<script type="text/javascript">'; 
       echo 'alert("Password successfully changed");'; 
       echo 'window.location.href = "../index.php";';
       echo '</script>';
   }
  
  }
  ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login page</title>
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
                    <div class="panel-title text-center">Reset password</div>
                </div><br />
                <div class="panel-body">
                    <form name="login" ng-submit="postCtrl.postForm()" class="form-horizontal" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="text" name="newpassword" class="form-control" placeholder="new password" required autofocus ng-model="postCtrl.inputData.username">
                        </div><br /><br />
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="text" name="confirmpassword" placeholder="Confim password" class="form-control">
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

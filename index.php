
<?php
session_start();
?>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Login page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="css/style.css" rel="stylesheet" id="main-css">
    <script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
</head>

<body ng-app="postExample" ng-controller="PostController as postCtrl">
    <div class="container">

        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">

            <div class="row">
                <h2 class="text-center">Vehicle Parking Mangement System</h2>
            </div><br /><br />

            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title text-center">Login</div>
                </div><br />

                <div class="panel-body">

                    <form name="login" ng-submit="postCtrl.postForm()" class="form-horizontal" method="POST">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input type="text" id="inputUsername" class="form-control" placeholder="Enter your username" required autofocus ng-model="postCtrl.inputData.username">
                        </div><br /><br />

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" id="inputPassword" placeholder="Enter your Password" class="form-control" required ng-model="postCtrl.inputData.password">
                        </div><br />

                        <div class="alert alert-danger" ng-show="errorMsg">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
                            </button>
                            <span class="glyphicon glyphicon-hand-right"></span>&nbsp;&nbsp;{{errorMsg}}
                        </div>

                        <div class="checkbox">
                            <label class="panel-title pull-right">
                                <a href="login/forgot-password.php">Forgotten Password?</a>
                            </label>
                        </div>

                        <div class="form-group">
                            <!-- Button -->
                            <div class="col-sm-12 controls">
                                <button type="submit" class="btn btn-primary center-block"><i class="glyphicon glyphicon-log-in"></i> Log in</button>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <script>
        angular.module('postExample', [])
            .controller('PostController', ['$scope', '$http', function($scope, $http) {
                this.postForm = function() {

                    var encodedString = 'username=' +
                        encodeURIComponent(this.inputData.username) +
                        '&password=' +
                        encodeURIComponent(this.inputData.password);

                    $http({
                            method: 'POST',
                            url: 'login/angularapi.php',
                            data: encodedString,
                            headers: {
                                'Content-Type': 'application/x-www-form-urlencoded'
                            }
                        })
                        .success(function(data) {
                            console.log(data);
                            if (data.trim() === 'correct') {
                                window.location.href = 'main.php';
                            } else {
                                $scope.errorMsg = "Username and password do not match.";
                            }
                        })
                }
            }]);

    </script>
</body>

</html>

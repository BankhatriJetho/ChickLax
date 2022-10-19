<?php
session_start();
    include("connection.php");
    include("functions.php");


    if($_SERVER['REQUEST_METHOD'] == "POST"){
        $username = $_POST['username'];
        $password = $_POST['password'];

        if(!empty($username) && !empty($password) && !is_numeric($username)){
            $query = "select * from chickUsers where username = '$username'";
            $result = mysqli_query($con, $query);

            if($result){

                if($result && mysqli_num_rows($result) > 0){
                    $user_data = mysqli_fetch_assoc($result);
                    if($user_data['password'] === $password){
                        $_SESSION['user_id'] = $user_data['user_id'];
                        header("Location: index.html");
                        die;
                    }
                }
            }
            else{
                echo '<h1>Please enter valid information</h1>';
            }
        }
        else{
            echo '<h1>Please enter valid information</h1>';
        }
        
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <style type="text/css">
    body{
        background-color: rgba(255, 0, 0, 0.4);
    }
    #text{
        height:25px;
        border-radius:5px;
        padding:4px;
        border: solid thin #aaa;
        width:90%;
    }
    #button{
        padding:10px;
        width:100px;
        color:white;
        background-color:rgba(255, 0, 0, 0.4);
        border:none;
    }
    #button:hover{
        cursor: pointer;
        background-color: white;
        color: red;
    }
    #box{
        position: absolute;
        top: 35%;
        left:35%;
        background-color:#9c240f;
        margin:auto;
        width:300px;
        padding: 20px;
        border-radius: 15px;
        border: 2px solid #fff;
    }
    </style>

    <div id="box">
        <form method="post">
            <div style="font-size:20px; margin:10px;color:white;">Login</div>
            <label style="color:white">Please enter your name<label>
            <input id="text" type="text" name="username"> <br><br>
            <label style="color: white;">Please enter your password</label>
            <input id="text" type="password" name="password"><br><br>
            <input id="button" type="submit" value="Login"><br><br>


            <a href="signup.php" style="color: white;">Click to Signup</a><br><br>
        </form>
    </div>

</body>
</html>
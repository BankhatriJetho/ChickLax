<?php
session_start();
    include("connection.php");
    include("functions.php");

    if($_SERVER['REQUEST_METHOD'] == "POST"){
        $username = $_POST['username'];
        $password = $_POST['password'];

        if(!empty($username) && !empty($password) && !is_numeric($username))
        {
            $user_id = random_num(20);

            $query = "insert into chickUsers(user_id, username, password) values ('$user_id', '$username', '$password')";

            mysqli_query($con, $query);
            
            header("Location: loginForm.php");
            die;
        }
        else{
            echo "Please enter some value input";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
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
    #pass1{
        height:25px;
        border-radius:5px;
        padding:4px;
        border: solid thin #aaa;
        width:90%;
    }
    #pass2{
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
            <div style="font-size:20px; margin:10px;color:white;">SignUp</div>
            <label style="padding-left:50px; color:white" required>Please enter your name: <label><br>
            <input id="text" type="text" name="username"> <br><br>
            <label style="padding-left:50px; color:white" required>Please enter your password</label><br>
            <input id="pass1" type="password" name="password"><br>
            <label style="padding-left:50px; color:white"required>Please confirm your password</label>
            <input id="pass2" type="password" name="confirmpassword"><br><br>
            
            <input class="button" id="button" type="submit" value="Signup"><br><br>


            <a href="loginForm.php" style="color: white;">Click to Log in</a><br><br>
        </form>
    </div>

    <script>
        document.querySelector('.button').onclick = function(){
            var password = document.getElementById('pass1').value;
            var confirmpassword = document.getElementById('pass2').value;
            if (password != confirmpassword) {
                alert('The password does not Match');
                document.getElementById("button").disabled = true;
                location.reload();
            }
            
        };
            

    </script>

</body>
</html>


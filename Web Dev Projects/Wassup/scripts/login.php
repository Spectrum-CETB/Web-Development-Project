<?php
    
    // session start
    session_start();

    // unset if there is already
    if(isset($_SESSION['email']))
        unset($_SESSION['email']);

    // include DB connection
    include('./db.php');

    // getting form data!
    if(isset($_POST['email']) && isset($_POST['password'])) {

        $email = mysqli_real_escape_string($conn,strip_tags($_POST['email']));
        $password = mysqli_real_escape_string($conn,strip_tags($_POST['password']));

        // this generates new id again.
        // $salt = uniqid();
        

        $checkUser = "SELECT salt, password FROM `users` WHERE BINARY `email` = '$email' LIMIT 1";
        $checkUserStatus = mysqli_query($conn, $checkUser) or die(mysqli_error($conn));

        // get one row, LIMIT 1
        if( $userRow = mysqli_fetch_row($checkUserStatus)){

            // salt is stored in db
            $salt = $userRow[0];

            // md5 password from db
            $dbPassword = $userRow[1];

            // get salt
            $newPassword = md5(md5($password).$salt);

            // check if mdd5 matches
            if($dbPassword == $newPassword){

                // if user exists!
                $_SESSION['email'] = $email;
                header('Location: ../chats.php?message=You have logged in!');
            }
            else{
                // password match failed.
                header('Location: ../index.php?message=Unable to login into your account!');
            }

        }
        else {

            header('Location: ../index.php?message=Unable to login into your account!');
        }
        
    }
    else{

        // if the fields are empty!
        header('Location: ../index.php?message=Please fill all the fields!');
    }
    
?>
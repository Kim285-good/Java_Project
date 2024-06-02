<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="index.css" rel="stylesheet">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            width: 500px;
            height: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
        }
        .text-header {
            color: #333;
            margin-bottom: 20px;

        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .button-group a {
            display: inline-block;
            width: 48%;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        .button-group a:hover {
            background-color: #0056b3;
        }
        .button-group .signup {
            background-color: #28a745;
            font-size: 20px;
        }
        .button-group .signup:hover {
            background-color: #218838;
        }

        .login {
            background-color: #333333;
            width: 20%;
            height: 30px;
            margin-left: 10px;
            text-align: center;
            font-size: 20px;
        }

        .community-img {
            width: 250px;
            float: right;
        }

        .header-line {
            width: 100%;

            background-color: #4CAF50;
        }
    </style>

</head>
<body>
<div class="container">
    <h1 class="text-header">Welcome to Board Community</h1>
    <div class="header-line"></div>
    <div class="button-group">
        <a href="/member/save" class="signup">Sign Up</a>
        <a href="/member/login" class="login">Sign In</a>
    </div>
</div>
</body>
</html>

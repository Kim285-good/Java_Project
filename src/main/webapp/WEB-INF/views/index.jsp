<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h1 {
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
            font-size: 16px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }
        .button-group a:hover {
            background-color: #0056b3;
        }
        .button-group .signup {
            background-color: #28a745;
        }
        .button-group .signup:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to Board Community</h1>
    <div class="button-group">
        <a href="/member/save" class="signup">Sign Up</a>
        <a href="/member/login" class="login">Sign In</a>
    </div>
</div>
</body>
</html>

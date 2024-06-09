<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;

            margin: 0;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            width: 450px;
        }
        .login-container h2 {
            margin-top: 0;
            margin-bottom: 20px;
            text-align: center;
        }
        .login-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 95%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 20px;
            cursor: pointer;
        }
        .login-container input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error-message {
            color: red;
            margin-bottom: 10px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Login</h2>
    <form action="/member/login" method="post">
        <div id="error-message" class="error-message" style="display: none;">Wrong Email or password</div>
        <label for="email">Email:</label>
        <input type="text" id="email" name="memberEmail" placeholder="Enter your email">
        <label for="password">Password:</label>
        <input type="password" id="password" name="memberPassword" placeholder="Enter your password">
        <input type="submit" value="Sign In">
        </button>
    </form>
</div>

<script>
    // URLSearchParams를 사용하여 URL 쿼리 파라미터를 확인합니다.
    const params = new URLSearchParams(window.location.search);
    if (params.has('error')) {
        document.getElementById('error-message').style.display = 'block';
    }
</script>

</body>
</html>

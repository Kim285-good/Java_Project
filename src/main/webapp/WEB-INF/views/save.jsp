<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
        .form-group input {
            width: calc(100% - 22px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }
        .form-group input:focus {
            border-color: #66afe9;
        }
        .submit-btn {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .submit-btn:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Sign Up</h2>
    <form action="/member/save" method="post">
        <div class="form-group">
            <label for="memberEmail">Email:</label>
            <input type="text" id="memberEmail" name="memberEmail" required>
        </div>
        <div class="form-group">
            <label for="memberPassword">Password:</label>
            <input type="password" id="memberPassword" name="memberPassword" required>
        </div>
        <div class="form-group">
            <label for="memberName">Name:</label>
            <input type="text" id="memberName" name="memberName" required>
        </div>
        <button type="submit" class="submit-btn">Sign Up</button>
    </form>
</div>

</body>
</html>

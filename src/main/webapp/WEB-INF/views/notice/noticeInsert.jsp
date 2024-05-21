<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>게시판 등록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }
        h1 {
            color: #333;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            max-width: 800px;
            box-sizing: border-box;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        .form-group input,
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        .form-group textarea {
            resize: vertical;
        }
        .btn-container {
            text-align: center;
        }
        .btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 5px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .btn-secondary {
            background-color: #f44336;
        }
        .btn-secondary:hover {
            background-color: #e53935;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>게시판 등록</h1>
    <div class="form-group">
        <label for="createId">작성자</label>
        <input type="text" id="createId" name="createId" placeholder="작성자를 입력하세요.">
    </div>
    <div class="form-group">
        <label for="title">제목</label>
        <input type="text" id="title" name="title" placeholder="제목을 입력하세요.">
    </div>
    <div class="form-group">
        <label for="content">내용</label>
        <textarea id="content" name="content" placeholder="내용을 입력하세요." rows="10"></textarea>
    </div>
    <div class="btn-container">
        <button type="button" class="btn" onclick="insertNotice();">등록</button>
        <button type="button" class="btn btn-secondary" onclick="noticeListMove();">목록</button>
    </div>
</div>

<script>
    function noticeListMove() {
        // 게시판 목록 페이지 URL
        var listUrl = '/notice'; // 적절한 URL로 변경하세요

        // 페이지 이동
        location.href = listUrl;
    }

    const insertNotice = () => {
        const reqData = {
            createId : document.querySelector("#createId").value,
            title : document.querySelector("#title").value,
            content : document.querySelector("#content").value
        };

        console.log(reqData);

        $.ajax({
            type: 'post',
            url: '/notice/insert',
            data: JSON.stringify(reqData),
            dataType : "json",
            contentType:"application/json",
            success: function (resData) {
                console.log(resData);
                if (resData == 1) {
                    alert("등록완료");
                    noticeListMove(); // 등록 완료 후 목록으로 이동
                }
            },
            error: function (err) {
                console.log(err);
                alert("오류가 발생했습니다. 다시 시도해 주세요.");
            }
        });
    }
</script>

</body>
</html>

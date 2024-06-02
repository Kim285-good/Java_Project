<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>게시판 상세</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            min-height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 800px;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        td {
            background-color: #f9f9f9;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
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
            margin: 10px 5px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .del-btn {
            background-color: #c63e3e;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 5px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .list-btn {
            background-color: #000000;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 10px 5px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #45a049;
        }
        input[type="text"], textarea {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>게시판 상세</h1>
    <table>
        <tr>
            <td width="15%" align="center">글쓴이</td>
            <td width="85%">${notice.createId}</td>
        </tr>
        <tr>
            <td align="center">제목</td>
            <td><input type="text" name="title" id="title" value="${notice.title}"></td>
        </tr>
        <tr>
            <td align="center">내용</td>
            <td><textarea name="content" id="content" rows="10">${notice.content}</textarea></td>
        </tr>
    </table>
    <div class="button-container">
        <button type="button" class="del-btn" onclick="deleteNotice();">삭제</button>
        <button type="button" class="btn" onclick="updateNotice();">수정</button>
        <button type="button" class="list-btn" onclick="noticeListMove();">목록</button>
    </div>
</div>

<script>
    // 목록이동
    function noticeListMove() {
        var listUrl = '/notice'; // 적절한 URL로 변경하세요
        location.href = listUrl;
    }

    // 수정
    function updateNotice() {
        const reqData = {
            noticeId: '${notice.noticeId}',
            title: document.querySelector("#title").value,
            content: document.querySelector("#content").value
        };

        console.log(reqData);

        $.ajax({
            type: 'post',
            url: '/notice/detail',
            data: JSON.stringify(reqData),
            dataType: 'json',
            contentType: 'application/json',
            success: function (resData) {
                console.log(resData);
                if (resData == 1) {
                    alert("수정완료!");
                    location.reload();
                }
            },
            error: function (err) {
                console.log(err);
            }
        });
    }

    // 삭제
    function deleteNotice() {
        $.ajax({
            type: 'DELETE',
            url: '/notice/delete/' + '${notice.noticeId}',
            success: function (resData) {
                console.log(resData);
                if (resData === 1) {
                    alert("삭제성공");
                    location.href = "/notice";
                }
            },
            error: function (xhr, status, error) {
                console.error(error);
                // 에러 처리
            }
        });
    }
</script>
</body>
</html>

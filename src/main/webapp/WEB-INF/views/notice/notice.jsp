<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
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
        h1 {
            color: #333;
            text-align: left;
        }
        .container {
            width: 90%;
            height: 90%;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
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
            float: right;
            margin-top: 20px;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .btn-logout {
            background-color: #f44336;
            float: right;
            margin-top: 20px;
        }
        .btn-logout:hover {
            background-color: #e53935;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #171717;
            color: white;
        }
        tr:nth-child(even) {
            /*
            background-color: #f2f2f2;
            */
        }
        tr:hover {
            background-color: #ddd;
        }
        td {
            cursor: pointer;
        }
        .btn-under {
            float: right;
            position: fixed;
            bottom: 10px;
            right: 80px;
            margin-top: 15px;
        }
        .line {
            border-bottom: 5px solid black;

        }
        .header1{
            display: inline-block;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="header1">게시판에 오신 것을 환영합니다.</h1>
    <button type="button" class="btn btn-logout" onclick="logout();">로그아웃</button>
    <button type="button" class="btn" onclick="insertNoticeMove();">등록</button>

    <div class="line"></div>
    <table>
        <tr>
            <th>순번</th>
            <th>제목</th>
            <th>작성자</th>
            <th>등록일</th>
        </tr>
        <c:forEach var="list" items="${notices}">
            <tr>
                <td>${list.rankNo}</td>
                <td onclick="detailMove('${list.noticeId}');">${list.title}</td>
                <td>${list.createId}</td>
                <td>${list.createAt}</td>
            </tr>
        </c:forEach>
    </table>
    <div class="btn-under">
    </div>
</div>
</body>
</html>
<script>
    // 상세화면 이동
    function detailMove(noticeId) {
        location.href = "notice/notice-detail/" + noticeId;
    }

    // 등록화면 이동
    function insertNoticeMove() {
        location.href = "notice/insert-view";
    }

    // 로그아웃
    function logout() {
        location.href = "login";
    }
</script>

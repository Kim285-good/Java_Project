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
        }
        .container {
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
            margin: 10px 0;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #45a049;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        td {
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>게시판 목록</h1>
    <div>
        <button type="button" class="btn" onclick="insertNoticeMove();">등록</button>
    </div>
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
        location.href = "0ew";
    }
</script>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tính BMI</title>
    
    <!-- Liên kết tới CSS của Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Chỉ số BMI của bạn</h2>
        <div class="card">
            <div class="card-body">
                <p class="lead">BMI: <c:out value="${bmi}" /></p>
                <p class="lead">Phân loại: <c:out value="${classification}" /></p>
                <a href="index.jsp" class="btn btn-primary">Tính lại</a>
            </div>
        </div>
    </div>

    <!-- Liên kết tới JavaScript của Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
s
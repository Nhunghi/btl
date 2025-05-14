<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhập thông tin BMI</title>
    
    <!-- Liên kết tới CSS của Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Nhập chiều cao và cân nặng</h2>
        <form action="calculate" method="post" class="mt-4">
            <div class="form-group">
                <label for="height">Chiều cao (m):</label>
                <input type="text" name="height" id="height" class="form-control" placeholder="Nhập chiều cao" required />
            </div>
            <div class="form-group">
                <label for="weight">Cân nặng (kg):</label>
                <input type="text" name="weight" id="weight" class="form-control" placeholder="Nhập cân nặng" required />
            </div>
            <button type="submit" class="btn btn-primary btn-block">Tính BMI</button>
        </form>
        
        <!-- Thông báo lỗi nếu có -->
        <c:if test="${not empty param.error}">
            <p style="color:red;" class="text-center mt-3">Dữ liệu không hợp lệ. Vui lòng nhập số dương!</p>
        </c:if>
    </div>

    <!-- Liên kết tới JavaScript của Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

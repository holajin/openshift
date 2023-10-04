<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Music Class</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 100px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
    <script>
        function toggleForm() {
            var loginForm = document.getElementById("loginForm");
            var registerForm = document.getElementById("registerForm");

            if (loginForm.style.display === "block") {
                loginForm.style.display = "none";
                registerForm.style.display = "block";
            } else {
                loginForm.style.display = "block";
                registerForm.style.display = "none";
            }
        }
    </script>

    <h2>이랏샤이마세</h2>


    <form id="loginForm" action="login_process.jsp" method="POST">
        <label for="username">사용자 이름:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="로그인">
    </form>

    <form id="registerForm" style="display: none;" action="./register.jsp" method="POST">
        <h2>회원가입</h2>
        <label for="newUsername">사용자 이름:</label>
        <input type="text" id="newUsername" name="newUsername" required><br><br>

        <label for="newPassword">비밀번호:</label>
        <input type="password" id="newPassword" name="newPassword" required><br><br>

        <label for="email">E-mail:</label>
        <input type="email" id="email" name="email" required><br><br>

        <input type="submit" value="가입">
    </form>

    <p>계정이 없으신가요? <a href="javascript:void(0);" onclick="toggleForm()">회원가입</a></p>
</body>
</html>

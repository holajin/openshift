<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Music Class - 회원가입 완료</title>
    <script>
        // 회원가입이 성공한 후 3초 후에 login.jsp로 이동
        setTimeout(function () {
            window.location.href = "login.jsp";
        }, 3000); // 3초 대기 (3000 밀리초)
    </script>
</head>
<body>
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String newUsername = request.getParameter("newUsername");
            String newPassword = request.getParameter("newPassword");
            String email = request.getParameter("email");

            // 여기서 데이터베이스 연동 및 회원가입 처리를 수행하세요.

            try {
                // 데이터베이스 연결 설정 (이전에 설정한 DB 정보를 사용)
                String DB_URL = "jdbc:mysql://192.168.1.200:3306/test";
                String DB_USER = "root";
                String DB_PASSWORD = "VMware1!";

                Connection conn;
                PreparedStatement ps;

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

                // SQL 쿼리를 사용하여 회원 정보 추가
                String sql = "INSERT INTO users (name, password, email) VALUES (?, ?, ?)";
                ps = conn.prepareStatement(sql);
                ps.setString(1, newUsername);
                ps.setString(2, newPassword);
                ps.setString(3, email);
                ps.executeUpdate();

                // 회원가입 완료 메시지 출력
                out.println("회원가입이 완료되었습니다.");

                ps.close();
                conn.close();
            } catch (Exception e) {
                out.println("회원가입에 실패했습니다.");
                e.printStackTrace();
            }
        }
    %>
</body>
</html>


<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Music Class - 로그인 처리</title>
</head>
<body>
    <%
        if (request.getMethod().equalsIgnoreCase("POST")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // 여기서 데이터베이스 연동 및 로그인 처리를 수행하세요.

            try {
                // 데이터베이스 연결 설정 (이전에 설정한 DB 정보를 사용)
                String DB_URL = "jdbc:mysql://192.168.1.200:3306/test";
                String DB_USER = "root";
                String DB_PASSWORD = "VMware1!";

                Connection conn;
                PreparedStatement ps;
                ResultSet rs;

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

                // SQL 쿼리를 사용하여 사용자 인증
                String sql = "SELECT * FROM users WHERE name=? AND password=?";
                ps = conn.prepareStatement(sql);
                ps.setString(1, username);
                ps.setString(2, password);
                rs = ps.executeQuery();

                if (rs.next()) {
                    // 로그인 성공 시 처리 (예: 세션 설정 등)
                    // 여기에서 로그인이 성공한 경우의 처리를 수행하세요.

                    // 예: 세션에 사용자 정보 저장
                    session.setAttribute("username", username);

                    // 로그인 성공 메시지 출력
                    out.println("로그인이 성공했습니다.");

                    // 로그인 성공 후 main.jsp 페이지로 리다이렉트 (3초 대기 후)
                    response.setHeader("Refresh", "3;URL=main.jsp");
                } else {
                    // 로그인 실패 시 처리 (예: 에러 메시지 출력 등)
                    // 여기에서 로그인이 실패한 경우의 처리를 수행하세요.
                    out.println("로그인에 실패했습니다. 사용자 이름 또는 비밀번호를 확인하세요.");
                    
                    // 로그인 실패 후 3초 후에 다시 login.jsp 페이지로 리다이렉트
                    response.setHeader("Refresh", "3;URL=login.jsp");
                }

                rs.close();
                ps.close();
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>

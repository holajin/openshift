<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Music Class</title>
    <style>
        /* 스타일링을 위한 CSS 코드를 여기에 추가할 수 있습니다. */
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            text-align: center;
        }
        /* 그리드 스타일 추가 */
        .post-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* 4열로 배치 */
            gap: 20px; /* 열 간격 조정 */
        }
        .post {
            border: 1px solid #ccc;
            padding: 10px;
        }
        .post h2 {
            font-size: 24px;
            margin: 0;
        }
        .post p {
            font-size: 16px;
        }
        /* 대표 사진 스타일 추가 */
        .featured-image {
            width: 100%;
            max-height: 200px; /* 최대 높이 설정 */
            object-fit: cover; /* 이미지 비율 유지 */
        }
        /* 하이퍼링크 스타일 추가 */
        .post a {
            text-decoration: none;
            color: blue;
        }
        .post a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Music Class</h1>
        <!-- 대표 사진 추가 -->
        <img class="featured-image" src="class.jpg" alt="대표 사진">
        <!-- 그리드 컨테이너 추가 -->
        <div class="post-container">
            <div class="post">
                <!-- 동영상 1 이미지를 클릭 가능한 링크로 대체 -->
                <a href="https://3tier-database.s3.amazonaws.com/Hawl.mp4" type="video/mp4">
                    <img class="featured-image" src="Hawl.jpg" alt="대표 사진">
                </a>
                <p>Howl's Moving Castle OST Acoustic</p>
            </div>
            <div class="post">
                <a href="https://3tier-database.s3.amazonaws.com/Flower_Dance.mp4" type="video/mp4">
                    <img class="featured-image" src="Flower_Dance.jpg" alt="대표 사진">
                </a>
                <p>Flower Dance Acoustic</p>
            </div>
                        <div class="post">
                <a href="https://3tier-database.s3.amazonaws.com/PhunkDified.mp4" type="video/mp4">
                    <img class="featured-image" src="PhunkDified.jpg" alt="대표 사진">
                </a>
                <p>PhunkDified</p>
            </div>
            <div class="post">
                <a href="https://3tier-database.s3.amazonaws.com/Main_Theme.mp4" type="video/mp4">
                    <img class="featured-image" src="Main_Theme.jpg" alt="대표 사진">
                </a>
                <p>kaido saint tail OST Main Theme</p>
            </div>
            <div class="post">
                <a href="https://3tier-database.s3.amazonaws.com/sunnysidecruise.mp4" type="video/mp4">
                    <img class="featured-image" src="sunnysidecruise.jpg" alt="대표 사진">
                </a>
                <p>Sunnyside Cruise - T-Square</p>
            </div>
            <div class="post">
                <a href="https://3tier-database.s3.amazonaws.com/eric.mp4" type="video/mp4">
                    <img class="featured-image" src="eric.jpg" alt="대표 사진">
                </a>
                <p>change the world - eric clapton</p>
            </div>
            <div class="post">
                <img class="featured-image" src="twilight.jpg" alt="대표 사진">
                <p>twilight - kotaro oshio</p>
            </div>
            <div class="post">
                <img class="featured-image" src="just.jpg" alt="대표 사진">
                <p>just the two of us - Bill Withers </p>
            </div>
            <div class="post">
                <img class="featured-image" src="one.jpg" alt="대표 사진">
                <p>one note samba</p>
            </div>
            <div class="post">
                <img class="featured-image" src="bil.jpeg" alt="대표 사진">
                <p>Billie's bounce - Charlie Parker</p>
            </div>
            <div class="post">
                <img class="featured-image" src="jeff.jpeg" alt="대표 사진">
                <p>Red Boots - jeff beck</p>
            </div>
            <div class="post">
                <img class="featured-image" src="yoa.jpg" alt="대표 사진">
                <p>Yoasobi – 夜に駆ける</p>
            </div>
            <!-- 나머지 게시물도 동일하게 추가 -->
        </div>
    </div>
</body>
</html>

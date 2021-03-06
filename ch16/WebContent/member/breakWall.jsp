<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
    * { padding: 0; margin: 0; }
    canvas { background: #eee; display: block; margin: 0 auto; }
  </style>
  <%@ include file="/inc/top.jsp"%>
</head>
<body>
<%@ include file="/inc/header.jsp"%>
<br/><br/><br/><br/>
<canvas id="myCanvas" width="480" height="320"></canvas>
  <script>
    var canvas = document.getElementById("myCanvas");
    var ctx = canvas.getContext("2d");

    //시작 버튼
    var startBtn = false;
    var startBtnX = canvas.width/2 - 40; //200
    var startBtnY = canvas.height/2 - 15; //145
    var startBtnW = 80;
    var startBtnH = 30;

    //공 변수
    var x = canvas.width/2;
    var y = canvas.height-30;
    var dx = 2;
    var dy = -2;
    var ballRadius = 10;

    //공받는 패달 변수
    var paddleHeight = 10;
    var paddleWidth = 75;
    var paddleX = (canvas.width-paddleWidth)/2;

    //키보드 컨트롤 변수
    var rightPressed = false;
    var leftPressed = false;

    //벽돌 변수
    var brickRowCount = 4;
    var brickColumnCount = 5;
    var brickWidth = 75;
    var brickHeight = 20;
    var brickPadding = 10;
    var brickOffsetTop = 30;
    var brickOffsetLeft = 35;

    var score = 0;
    var lives = 3;

    var bricks = [];
    for(c=0; c<brickColumnCount; c++){
      bricks[c] = [];
      for(r=0; r<brickRowCount; r++){
        bricks[c][r] = { x: 0, y: 0, status: 1};
      }
    }

    document.addEventListener("keydown", keyDownHandler, false);
    document.addEventListener("keyup", keyUpHandler, false);
    document.addEventListener("click", onClickHandler, false);
    document.addEventListener("mousemove", mouseMoveHandler, false);

    function keyDownHandler(e) {
      if(e.keyCode == 39) {
        rightPressed = true;
      }
      else if(e.keyCode == 37) {
        leftPressed = true;
      }
    }

    function keyUpHandler(e) {
      if(e.keyCode == 39) {
        rightPressed = false;
      }
      else if(e.keyCode == 37) {
        leftPressed = false;
      }
    }

    function onClickHandler(e) {
      //마우스이벤트 위치값과 캔버스 내의 객체위치값 다르기 때문에 캔버스 오프셋만큼 빼줘야한다.
      var clientX = e.clientX - canvas.offsetLeft;
      var clientY = e.clientY - canvas.offsetTop;
      if( (clientX > startBtnX && clientX < startBtnX + startBtnW) && (clientY > startBtnY && clientY < startBtnY + startBtnH) ){
        startBtn = true;
      }
    }

    function mouseMoveHandler(e) {
      var relativeX = e.clientX - canvas.offsetLeft;
      if(relativeX > 0 && relativeX < canvas.width) {
        paddleX = relativeX - paddleWidth/2;
      }
    }

    function collisionDetection(){
      for(c=0; c<brickColumnCount; c++){
        for(r=0; r<brickRowCount; r++){
          var b = bricks[c][r];
          if(b.status == 1) {
            if(x > b.x && x < b.x + brickWidth && y > b.y && y < b.y + brickHeight) {
              dy = -dy;
              b.status = 0;
              score++;
              if(score == brickRowCount*brickColumnCount) {
                alert("YOU WIN, CONGRATULATIONS!");
                document.location.reload();
              }
            }
          }
        }
      }
    }

    function drawScore() {
      ctx.font = "16px Arial";
      ctx.fillStyle = "#0095DD";
      ctx.fillText("Score: "+score, 8, 20);
    }

    function drawLives() {
      ctx.font = "16px Arial";
      ctx.fillStyle = "#0095DD";
      ctx.fillText("Lives: "+lives, canvas.width-65, 20);
    }

    function drawBall() {
      ctx.beginPath();
      ctx.arc(x, y, ballRadius, 0, Math.PI*2);
      ctx.fillStyle = "#0095DD";
      ctx.fill();
      ctx.closePath();
    }

    function drawPaddle() {
      ctx.beginPath();
      ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
      ctx.fillStyle = "#0095DD";
      ctx.fill();
      ctx.closePath();
    }

    function drawBricks() {
      for(c=0; c<brickColumnCount; c++) {
        for(r=0; r<brickRowCount; r++) {
          if(bricks[c][r].status == 1) {
            var brickX = (c*(brickWidth+brickPadding))+brickOffsetLeft;
            var brickY = (r*(brickHeight+brickPadding))+brickOffsetTop;
            bricks[c][r].x = brickX;
            bricks[c][r].y = brickY;
            ctx.beginPath();
            ctx.rect(brickX, brickY, brickWidth, brickHeight);
            ctx.fillStyle = "#0095DD";
            ctx.fill();
            ctx.closePath();
          }
        }
      }
    }

    function draw(){
      if(startBtn) {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        drawBricks();
        drawBall();
        drawPaddle();
        drawScore();
        drawLives();
        collisionDetection();

        if(x + dx > canvas.width-ballRadius || x + dx < ballRadius){
          dx = -dx;
        }
        if(y + dy < ballRadius){
          dy = -dy;
        }
        else if(y + dy > canvas.height-ballRadius) {
          if(x > paddleX && x < paddleX + paddleWidth) {
            dy = -dy;
          }
          else {
            lives--;
            if(!lives){
              clearInterval(intervalId);
              alert("GAME OVER");
              document.location.reload();
            }
            else {
              x = canvas.width/2;
              y = canvas.height-30;
              dx = 2;
              dy = -2;
              paddleX = (canvas.width-paddleWidth)/2;
            }
          }
        }

        if(rightPressed && paddleX < canvas.width-paddleWidth) {
          paddleX += 5;
        }
        else if(leftPressed && paddleX > 0) {
          paddleX -= 5;
        }

        x += dx;
        y += dy;
      }
    }

    ctx.beginPath();
    ctx.font = '30px Calibri';
    ctx.fillText('START', startBtnX, startBtnY+startBtnH);
    ctx.closePath();
    var intervalId = setInterval(draw, 10);

  </script>
</body>
</html>
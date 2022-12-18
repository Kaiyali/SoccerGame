float speedX,speedY;
float  posX,posY;
float  cposX, cposY;
float mousePos;
float directionX, directionY;
float angle, resistance;
int circleRadius;
float tmx, tmy;
float xdir, ydir;
boolean ballclicked = false;
int rightScore, leftScore;
GameSetting Game = new GameSetting();
Player player1;
Player soccerBall;



void setup(){
  size(1200,800);
  posX = width/2;
  posY = height/2;
  cposX = 500;
  cposY = 500;
  rightScore = 0;
  leftScore = 0;
  circleRadius = 100; 
  
  soccerBall = new Player(width/3, height/3, circleRadius);
  player1 = new Player(width/2, height/2, circleRadius);
}

void draw() {
  background(0);
  
  //setup Games Settings
  Game.setLimiters(); //max and min speed of the circle
  //Game.applyPhysics(); //The change of the circle 's speed gradually 
  Game.bounder(soccerBall);//sets up the bounders of the window to collised with the circle  
  Game.bounder(player1);
  mousePos = dist(mouseX, mouseY, posX, posY);
   
  //soccerBall = new Player(posX, posY, circleRadius);
 // player1 = new Player(cposX, cposY, circleRadius);
 // soccerBall.detectCollision(cposX, cposY, circleRadius);
/*
  if(ballclicked){
     posX += xdir;
     posY += ydir;
  } 
  */
  collisionBetter(player1, soccerBall);
  player1.move(.99);
  soccerBall.move(.99);
  
  
  player1.display();
  soccerBall.display();

  //Right Goal settings
  Goal rightGoal = new Goal(0, height/2, 250, 500);
  rightGoal.isGoal(soccerBall);
  
  //Left Goal settings
  Goal leftGoal = new Goal(width, height/2, 250, 500);
  leftGoal.isGoal(soccerBall);
  textSize(128);
  text(leftScore, width/2, 120); 
  fill(0, 408, 612);
  
  textSize(128);
  text(rightScore, height/2, 120); 
  fill(0, 408, 612);
   

  
  if(rightGoal.scored){
    int lScore = ++leftScore;
    posX = width/2;
    posY = height/2;
    print("Goal on the right side");
    text(lScore, width, height/2); 
  }else if(leftGoal.scored){
   int rScore = ++rightScore;
    posX = width/2;
    posY = height/2;
   print("Goal on the left side");
   text(rScore, height/2, 120); 
  }
 
}

void mouseReleased(){
  //depending the area of the mouse the speed changes
  if(ballclicked){
    println("Ball clicked");
      float dx = tmx - mouseX;
      float dy = tmy - mouseY;

      float angle = atan2(dy/2, dx/2);
      player1.angle = angle;
      player1.speed = 10;
      
  }
}

void mousePressed(){
  tmx = mouseX;
  tmy = mouseY;
  
  //if the ball has not been click do not allow the call to move
  if(dist(mouseX, mouseY, player1.x, player1.y) < circleRadius/2){
    ballclicked = true;
  }else{
    ballclicked = false;
  }
}

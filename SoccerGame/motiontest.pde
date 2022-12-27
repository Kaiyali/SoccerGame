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
Player FrenchBall;
Player ArgentinaBall;
Player soccerBall;
int gameState;
int turn = 0;



void setup(){
  size(1200,800);
  posX = width/2;
  posY = height/2;
  cposX = width/3;
  cposY = width/3;
  rightScore = 0;
  leftScore = 0;
  circleRadius = 100; 
  gameState = 0;
  
  ArgentinaBall  = new Player(width/2+width/6,height/2, circleRadius,"ArgentinaBall.png");
  soccerBall     = new Player(width/2, height/2, circleRadius,"soccerBall.png");
  FrenchBall     = new Player(width/3, height/2, circleRadius,"FrenchBall.png");
}

void draw() {
  background(0);
  if(gameState == 0){
    
  }
  
  //setup Games Settings
  Game.bounder(soccerBall);//sets up the bounders of the window to collised with the circle  
  Game.bounder(FrenchBall);
  Game.bounder(ArgentinaBall);
  mousePos = dist(mouseX, mouseY, posX, posY);
  
  //collision and move of balls
  collisionBetter(FrenchBall, soccerBall);
  collisionBetter(FrenchBall, ArgentinaBall);
  FrenchBall.move(.99);
  soccerBall.move(.99);
  
  collisionBetter(ArgentinaBall, soccerBall);
  ArgentinaBall.move(.99);
  
  //dispaly game objects
  FrenchBall.display();
  soccerBall.display();
  ArgentinaBall.display();
 
  
  
  //Right Goal settings
  Goal leftGoal = new Goal(0, height/2, 250, 500);
  leftGoal.isGoal(soccerBall);
  
  //Left Goal settings
  Goal rightGoal = new Goal(width, height/2, 250, 500);
  rightGoal.isGoal(soccerBall);
  textSize(128);
  text(leftScore, width/2, 120); 
  fill(0, 408, 612);
  
  textSize(128);
  text(rightScore, height/2, 120); 
  fill(0, 408, 612);
   

  //ArgentinaBall  = new Player(width/2+width/6,height/2, circleRadius,"ArgentinaBall.png");
  //soccerBall     = new Player(width/2, height/2, circleRadius,"soccerBall.png");
  //FrenchBall     = new Player(width/3, height/2, circleRadius,"FrenchBall.png");
  
  
  if(rightGoal.scored){
    int lScore = ++leftScore;
   soccerBall.x = width/2;
   soccerBall.y = height/2;
   
   FrenchBall.x = width/3;
   FrenchBall.y = height/2;
   
   ArgentinaBall.x = width/2+width/6;
   ArgentinaBall.y = height/2;
    print("Goal on the right side");
    text(lScore, width, height/2); 
  }else if(leftGoal.scored){
   int rScore = ++rightScore;
   soccerBall.x = width/2;
   soccerBall.y = height/2;
   
   FrenchBall.x = width/3;
   FrenchBall.y = height/2;
   
   ArgentinaBall.x = width/2+width/6;
   ArgentinaBall.y = height/2;
   print("Goal on the left side");
   text(rScore, height/2, 120); 
  }
 
}

void mouseReleased(){
  //depending the area of the mouse the speed changes
  if(ballclicked && turn % 2 == 0){
    println("Ball clicked");
      float dx = tmx - mouseX;
      float dy = tmy - mouseY;

      float angle = atan2(dy/2, dx/2);
      FrenchBall.angle = angle;
      FrenchBall.speed = 10;
      
  }else if(ballclicked && turn % 2 !=0){
      float dx = tmx - mouseX;
      float dy = tmy - mouseY;

      float angle = atan2(dy/2, dx/2);
      ArgentinaBall.angle = angle;
      ArgentinaBall.speed = 10;
  }
}

void mousePressed(){
  tmx = mouseX;
  tmy = mouseY;
  
  //if the ball has not been click do not allow the call to move
    
     if(turn % 2 !=0){
      if(dist(mouseX,mouseY,FrenchBall.x,FrenchBall.y) < circleRadius/2){
        ballclicked = true;
          turn++;
      }else{
        ballclicked = false;
      }
     
   }else{
     if(dist(mouseX,mouseY,ArgentinaBall.x,ArgentinaBall.y) < circleRadius/2){
        ballclicked = true;
        turn++;
      }else{
        ballclicked = false;
      }
   }
} 
  
 

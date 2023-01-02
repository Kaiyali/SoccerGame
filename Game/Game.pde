float speedX, speedY;
float  posX, posY;
float  cposX, cposY;
float mousePos;
float angle, resistance;
int circleRadius;
float tmx, tmy;
float xdir, ydir;
boolean ballclicked = false;
int rightScore, leftScore;
GameSetting Game = new GameSetting();
Menu menu = new Menu();
Winner_Window winW = new Winner_Window();
Teams_Window teamW = new Teams_Window();
GameStates  GameStates = new GameStates(); 
Field field = new Field();
Player FrenchBall;
Player ArgentinaBall;
Player soccerBall;
int gameState;
int turn = 0;



void setup() {
  size(1200, 800);
  posX = width/2;
  posY = height/2;
  cposX = width/3;
  cposY = width/3;
  rightScore = 0;
  leftScore = 0;
  circleRadius = 100;
  gameState = 0; 
  ArgentinaBall  = new Player(width/2+width/6, height/2, circleRadius,"team"+teamW.p1Team+".png" );
  soccerBall     = new Player(width/2, height/2, circleRadius, "soccerBall.png");
  FrenchBall     = new Player(width/3, height/2, circleRadius,"team"+teamW.p2Team+".png" );
}
  

void draw() {
  background(0);

  if (gameState == GameStates.MENUSTATE) {
    menu.menuState();
  } else if (gameState == GameStates.TEAMSTATE) {
    teamW.showcaseTeams();
    menu.Quitbtn.isPressed = false;
    menu.Playbtn.isPressed = false;
  } else if(gameState == GameStates.FIELDSTATE){
    menu.Quitbtn.isPressed = false;
    menu.Playbtn.isPressed = false;
    teamW.Incbtnp1.isPressed = false;
    teamW.Decbtnp1.isPressed = false;
    teamW.PlayBtn.isPressed = false;
    field.showcaseField();
  } else if(gameState == GameStates.WINNERSTATE){
    winW.showcaseWinner();
  }

}

void mouseReleased() {
  //depending the area of the mouse the speed changes
  if (ballclicked && turn % 2 == 0) {
    println("Ball clicked");
    float dx = tmx - mouseX;
    float dy = tmy - mouseY;

    float angle = atan2(dy/2, dx/2);
    FrenchBall.angle = angle;
    FrenchBall.speed = 10;
  } else if (ballclicked && turn % 2 !=0) {
    float dx = tmx - mouseX;
    float dy = tmy - mouseY;

    float angle = atan2(dy/2, dx/2);
    ArgentinaBall.angle = angle;
    ArgentinaBall.speed = 10;
  }
}

void mousePressed() {
  tmx = mouseX;
  tmy = mouseY;

  //if the ball has not been click do not allow the call to move
  if (turn % 2 !=0) {
    if (dist(mouseX, mouseY, FrenchBall.x, FrenchBall.y) < circleRadius/2) {
      ballclicked = true;
      turn++;
    } else {
      ballclicked = false;
    }
  } else {
    if (dist(mouseX, mouseY, ArgentinaBall.x, ArgentinaBall.y) < circleRadius/2) {
      ballclicked = true;
      turn++;
    } else {
      ballclicked = false;
    }
  }

  if (menu.Playbtn.isPressed == true ) {
    print("Play Game");
    gameState = GameStates.TEAMSTATE;
  } else if (menu.Quitbtn.isPressed == true) {
    print("Quit Application");
    exit();
  } else if (teamW.Decbtnp1.isPressed == true){
    teamW.p1Team = (teamW.p1Team - 1 + teamW.teams.length) % teamW.teams.length;
  } else if (teamW.Incbtnp1.isPressed == true){
    teamW.p1Team = (teamW.p1Team + 1) % teamW.teams.length; 
  } else if(teamW.PlayBtn.isPressed ==true){
    gameState = GameStates.FIELDSTATE;
  } else if (teamW.Decbtnp2.isPressed == true){
    teamW.p2Team = (teamW.p2Team - 1 + teamW.teams.length) % teamW.teams.length;
  } else if (teamW.Incbtnp2.isPressed == true){
    teamW.p2Team = (teamW.p2Team + 1) % teamW.teams.length; 
  }
}

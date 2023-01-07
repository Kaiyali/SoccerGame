//varibles used all over tha game
float speedX, speedY;
float  posX, posY;
float  cposX, cposY;
float mousePos;
float angle, resistance;
int circleRadius;
float tmx, tmy;
float xdir, ydir;
boolean ballclicked = false;
int rightScore,leftScore;
GameSetting Game = new GameSetting();
Menu menu = new Menu();
Winner_Window winW = new Winner_Window();
Teams_Window teamW = new Teams_Window();
GameStates  GameStates = new GameStates(); 
Field field = new Field();
ArrayList<Particle> particles;
ArrayList<Confitte> confitte;
Player FrenchBall;
Player ArgentinaBall;
Player PlayerOne;
int winner;
Player PlayerTwo;
Player soccerBall;
int gameState;
int turn = 0;



void setup() {
  size(1200, 800);
  particles = new ArrayList<Particle>();
  confitte = new ArrayList<Confitte>();
  posX = width/2;
  posY = height/2;
  cposX = width/3;
  cposY = width/3;
  rightScore =  0;
  leftScore =  0;
  circleRadius = 100;
  gameState = 0; 
  winner = (int)random(2);
  //setting up the posisitoning of the players and what type of texture its going to be using
  ArgentinaBall  = new Player(width/2+width/6, height/2, circleRadius,"player"+teamW.p1Team+".png" );
  soccerBall     = new Player(width/2, height/2, circleRadius, "soccerBall.png");
  FrenchBall     = new Player(width/3, height/2, circleRadius,"player"+teamW.p2Team+".png" );
  //the menu has two players that show the previous game 
  PlayerTwo  = new Player(width/4.1, height/1.2, circleRadius,"player"+teamW.p1Team+".png" );
  PlayerOne     = new Player(width/1.3, height/1.2, circleRadius,"player"+teamW.p2Team+".png" );
}
  

void draw() {
  background(0);
  //setting up a particle system
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    if (p.y > height || p.alpha < 0) {
      particles.remove(i); // Remove particles that have fallen off the screen or fully faded away
    }
  }

  for (int i = 0; i < confitte.size(); i++) {
    Confitte p = confitte.get(i);
    p.update();
    p.display();
    if (p.y > height) {
      confitte.remove(i); // Remove particles that have fallen off the screen
    }
  }
  //if the gameaState is the same value as MENUSTATE (0) go to the menu
  if (gameState == GameStates.MENUSTATE) {
    menu.menuState();
  //if the gameaState is the same value as TEAMSTATE (1) go to the Field
  } else if (gameState == GameStates.TEAMSTATE) {
    teamW.showcaseTeams();
    //just to check that the buttons are no longer in use in the MENU
    menu.Quitbtn.isPressed = false;
    menu.Playbtn.isPressed = false;
  //if the gameaState is the same value as TEAMSTATE (2) go to the Field
  } else if(gameState == GameStates.FIELDSTATE){
    //just to check that the buttons are no longer in use in the MENU or the TEAMSSTATE
    menu.Quitbtn.isPressed = false;
    menu.Playbtn.isPressed = false;
    teamW.Incbtnp1.isPressed = false;
    teamW.Decbtnp1.isPressed = false;
    teamW.PlayBtn.isPressed = false;
    field.showcaseField();
  //if the gameaState is the same value as TEAMSTATE (2) go to the Field
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

  // Check if the "Play" button has been pressed
  if (menu.Playbtn.isPressed == true ) {
    print("Play Game");
    gameState = GameStates.TEAMSTATE;
  } 
  // Check if the "Quit" button has been pressed
  else if (menu.Quitbtn.isPressed == true) {
    print("Quit Application");
    exit();
  } 
  // Check if the "Decrease Player 1 Team" button has been pressed
  else if (teamW.Decbtnp1.isPressed == true){
    teamW.p1Team = (teamW.p1Team - 1 + teamW.teams.length) % teamW.teams.length;
  } 
  // Check if the "Increase Player 1 Team" button has been pressed
  else if (teamW.Incbtnp1.isPressed == true){
    teamW.p1Team = (teamW.p1Team + 1) % teamW.teams.length; 
  } 
  // Check if the "Play" button has been pressed
  else if(teamW.PlayBtn.isPressed ==true){
    gameState = GameStates.FIELDSTATE;
  } 
  // Check if the "Decrease Player 2 Team" button has been pressed
  else if (teamW.Decbtnp2.isPressed == true){
    teamW.p2Team = (teamW.p2Team - 1 + teamW.teams.length) % teamW.teams.length;
  } 
  // Check if the "Increase Player 2 Team" button has been pressed
  else if (teamW.Incbtnp2.isPressed == true){
    teamW.p2Team = (teamW.p2Team + 1) % teamW.teams.length; 
  }
}


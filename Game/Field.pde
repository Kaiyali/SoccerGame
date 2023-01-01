class Field {
  int rScore, lScore;
  GameStates  GameStates = new GameStates(); 
  void showcaseField() {
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



    if (rightGoal.scored) {
      lScore = ++leftScore;
      soccerBall.x = width/2;
      soccerBall.y = height/2;

      FrenchBall.x = width/3;
      FrenchBall.y = height/2;

      ArgentinaBall.x = width/2+width/6;
      ArgentinaBall.y = height/2;
      print("Goal on the right side");
      text(lScore, width, height/2);
    } else if (leftGoal.scored) {
      rScore = ++rightScore;
      soccerBall.x = width/2;
      soccerBall.y = height/2;

      FrenchBall.x = width/3;
      FrenchBall.y = height/2;

      ArgentinaBall.x = width/2+width/6;
      ArgentinaBall.y = height/2;
      print("Goal on the left side");
      text(rScore, height/2, 120);
    }
    
    if(lScore == 1){
      gameState = GameStates.WINNERSTATE;
    }
    if(rScore == 1){
      gameState = GameStates.WINNERSTATE;
    }
  }
}

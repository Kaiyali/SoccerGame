class Field {
  int rScore = 0;
  int lScore = 0;
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

    if(gameState == GameStates.FIELDSTATE){
      ArgentinaBall.displayImage("player"+teamW.p1Team+".png");
      FrenchBall.displayImage("player"+teamW.p2Team+".png");
    }



    //Right Goal settings
    Goal leftGoal = new Goal(0, height/2, 250, 500);
    leftGoal.isGoal(soccerBall);

    //Left Goal settings
    Goal rightGoal = new Goal(width, height/2, 250, 500);
    rightGoal.isGoal(soccerBall);
    textSize(128);
   fill(0, 408, 612);
    text(leftScore, width/2, 120);
   

    textSize(128);
    text(rightScore, height/2, 120);
   
  
  
   

    //if the rightgoal has been scored on
    if (rightGoal.scored) {
      //increase the value of the left team
      lScore = ++leftScore;
      soccerBall.x = width/2;
      soccerBall.y = height/2;

      FrenchBall.x = width/3;
      FrenchBall.y = height/2;

      ArgentinaBall.x = width/2+width/6;
      ArgentinaBall.y = height/2;
      print("Goal on the right side");
      //display the new changes on the score
      text(lScore, width, height/2);
      
     for (int i = 0; i < 50; i++) {
      particles.add(new Particle(width, height/2, random(-10, 10), random(-10, 10), random(5, 10), color(random(255), random(255), random(255))));
     }
     //if the leftgoal has been scored on
    } else if (leftGoal.scored) {
       //increase the value of the right team
      rScore = ++rightScore;
      soccerBall.x = width/2;
      soccerBall.y = height/2;

      FrenchBall.x = width/3;
      FrenchBall.y = height/2;

      ArgentinaBall.x = width/2+width/6;
      ArgentinaBall.y = height/2;
      print("Goal on the left side");
           //display the new changes on the score
      text(rScore, height/2, 120);
      
     for (int i = 0; i < 50; i++) {
      particles.add(new Particle(0, height/2, random(-10, 10), random(-10, 10), random(5, 10), color(random(255), random(255), random(255))));
     }
     print(lScore);
    }
    //if one of these player have scored 3 to to the winner state
    if(lScore == 3){
      gameState = GameStates.WINNERSTATE;
    }
    if(rScore == 3){
      gameState = GameStates.WINNERSTATE;
    }
  }
}

## Issues

> There were many issues in my game, and I did not make the game in one sitting or even a single day; rather than saying that I did not have issues, I want to speak about the problems I encountered and how I solved them. Although I have given a few cases, these are just the major problems, not including minor bugs and issues I solved in a few minutes. 

### Movement Issue 
One of my most extensive and challenging problems was the player's movement. There were two different ways the speed movement was set up. The previous code logic for the direction of the player had a lot of bugs and was not flexible enough to apply other physics components like collision with other players as well as the action after collision would not be suitable with this code:
``` processing
void mousePressed(){
  tmx = mouseX;
  tmy = mouseY;
  
  //if the ball has not been click do not allow the call to move
  if(mousePos <= circleRadius/2){
    print(mousePos);
    xdir = 0;
    ydir = 0;
    ballclicked = true;
  }else{
    ballclicked = false;
  }
}
```

``` processing
void draw() {
  if(ballclicked){
     posX += xdir;
     posY += ydir;
  }
}
```

### Collision

The `collision` was the most math extensive out of the entire game development. I faced many issues with collisions, like what I should do if it collided and how far will the players move. These questions were solved by using this code over here:
``` processing
void collisionBetter(Player p1, Player p2) {

  if (collision(p1, p2) == true) {

    float distance = dist(p1.x, p1.y, p2.x, p2.y);  //the distance between two circles
    //finding if the distance between the two circles are collising with radius of both circles
    if (distance < p1.w/2 + p2.w/2) {
      float dx = p1.x - p2.x;
      float dy = p1.y - p2.y;

      float angle = atan2(dy/2, dx/2);
      p1.angle = angle;
      p2.angle = angle - PI;

      p1.speed = 5;
      p2.speed = 5;
    }
  }
}

boolean collision(Player p1, Player p2) {

  if (dist(p1.x, p1.y, p2.x, p2.y) < p1.w/2 + p2.w) {
    return true;
  } else {
    return false;
  }
}
```

The `collision method` returns a boolean value if the players have collided with one another. The collision method works by checking the distance between the two circles and if the radii of the players are more significant than the distance between the circles.



###  Glueing Things Together


After building the `Main Menu`, `Team Window` and `Winner Windo`, I had to add them, which led me to think about how I would solve this problem. I solved this problem by adding an `if statement` and changing the value of a variable called `gameState`, in which, depending on the number, the user would go to a specific window.

The Logic behind the problem
``` processing
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

```

How the varible changes:
``` processing
void mousePressed() {
  if (menu.Playbtn.isPressed == true ) {
    gameState = 1;
  } else if (menu.Quitbtn.isPressed == true) {
    print("Quit Application");
    exit();
  }
}

```




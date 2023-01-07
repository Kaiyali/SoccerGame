## Issues

> There were many issues in my game, and I did not make the game in one sitting or even a single day; rather than saying that I did not have issues, I want to speak about the problems I encountered and how I solved them. Although I have given a few points, these are just the significant problems, not including minor bugs and issues I solved in a few minutes. 

### Movement Issue 
One of my most significant and complex problems was the players' movement. There were two different ways the speed movement was set up. The previous code logic for the direction of the player has a lot of bugs and was not flexible enough to apply other physics components like collision with other players as well as the action after collision would not be suitable with this code: 
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

The collision was the most math extensive out of the entire game development. I faced many issues with collisions, like what I should do if it collided and how far well the players moved. These questions were solved by using this code over here:
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


After building the `Main Menu,` `Team Window,` and the `Winner Window,` I had to add them together, which led me to think about how I would solve this problem. I solved this problem by adding an `if statement` and changing the value of a variable called `gameState` in which, depending on the number, the user would go to a specific window. 

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

### Questions

What issues have you had in working on your projects?  You may list as many as you can think of.  Please explain how you overcame those problems or fixed them. 
> As I mentioned earlier, I encountered a number of issues while developing this project. One of the most frustrating challenges was creating a flexible user interface. I initially struggled with randomly placing numbers in my parameters, but eventually found a solution. By first finding the area where I wanted to place the UI element, and positioning it using whole numbers instead of fractions, I was able to achieve the desired result. I then divided the whole number by the width to make the UI flexible. This method proved to be effective and saved me a lot of time and effort. Another challenge I faced was adding particle effects to the game. I had to spend a lot of time researching and experimenting with different techniques to get the desired effect. In the end, I was able to create a particle system that added a lot of visual appeal to the game. However, it was a challenging and time-consuming process, and I learned a lot about the importance of planning and testing in game development."




What is still remaining to be done in your project if you had more time to work on it?  How would you improve your project?  Is there a possibility for making it even more functional?
> Adding AI opponents: I could add AI opponents that can play against the player in a match. This could involve creating decision-making algorithms to allow the AI to choose the most promising course of action, and implementing physics-based movement to make the AI players behave realistically.

>Adding more detail: I could add more detail to the game to make it look more realistic and immersive. This could involve adding more complex animations for player actions, such as kicking the ball or sliding tackles, and adding more detailed graphics for the players and the environment.

> Improving the user interface: I could improve the user interface to make it more intuitive and user-friendly. This could involve adding a tutorial to help new players learn how to play, and adding options to allow players to customize their gameplay experience, such as selecting different teams or adjusting the difficulty level.

> Adding more game modes: I could add more game modes to the game, such as a tournament mode or a practice mode, to give players more variety and replay value.

> Balancing the game: I could continue to playtest the game and gather feedback from players to ensure that it is balanced and fair, and make adjustments to the game based on that feedback to improve the overall gameplay experience.




What was fun and/or frustrating about your project?  How would you approach your project differently next time?
> Although I initially struggled with implementing realistic player movement, the process ended up being a valuable learning experience. I also enjoyed creating the art for the game and tackling the challenges that arose during development. In hindsight, I would recommend planning out the game's layout and design before diving into programming. This would have saved me time and effort in the long run, as I had to make significant changes towards the end of development to add a teams selection window. Overall, the process of creating this game was both rewarding and challenging.


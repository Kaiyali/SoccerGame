## Issues

> There were many issues in my game and I surely did not make the game in one sitting or even a single day. Rather than saying that I did not have issues I want to speak abou the issues I did encounter and I how solved them. Although I have given a few issues these are just the major problems disincluding small bugs and issues I solved in a few minutes time.  

### Movement Issue
One of my largest and most difficult problems was the players movement. There were two different ways the speed movement was set up the pevious code logic for the movement of the player has a lot of bugs and was not flexiably enough to apply other physics components like collision with other players as well as the movement after collision would not be suitable with this code:  
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

For my collision code it went through... 


###  Glueing Things Together


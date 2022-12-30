## Issues

> There were many issues in my game and I surely did not make the game in one sitting or even a single day. Rather than saying that I did not have issues I want to speak abou the issues I did encounter and I how solved them. Although I have given a few issues these are just the major problems disincluding small bugs and issues I solved in a few minutes time.  

### Movement Issue
One of my largest and most difficult problems were the players movement. I incountered a problem with my player movement the movement of the player was not how I wish it to be. 


Previous code logic for the movement of the player. 
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

###  Glueing Things Together

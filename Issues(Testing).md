## Issues


### Movement Issue

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

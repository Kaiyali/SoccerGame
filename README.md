# Socro


## Description of the project

> The project was to make a simple  game with the programming language `Processing`. That includes our pass lessons such as the usage of `dist()`, `array`, collision, etc. While building the game developers must have in mind how to tackle another problem which is the flexibleity of the game; meaning the game of screen `size()` would not change or ruin the overall game functionality.   

 ***
## Objective Of The Game

`Socro` is a basic drog-move soccer game with an objective of scoring the 5 gaols against the opposition's net to come out as victorious. Althought the concepts sounds rather simple applying this into reality was no easy task.

 ***

 ## Brainstorming and Ideation
| Game Idea        | Reasons           | 
| -------------    |:-------------:|  
| Chess Game       | Too boring and a lot of people would try and make it | 
| Soccer Game      | The World Cup was playing on at the time of this assigment being assigned so I felt I need to make a cool soccer game.      |   
| Floppy Bird      | Too basic to create      | 


### How To Build The *Soccer Game?*

I started off by cutting my game into smaller tasks:
- Soccer nets 
- Buttons
- How does the players look like
- How does the player move
- Collision between circles
- Collision between circle and nets
- calculate the score 
- How do I calculate the score
- Adding textures
- Making a main menu
- Making a Winner window

The visual concept I had in mind was something similar to this:


![BrainStorming_Idea](https://user-images.githubusercontent.com/80181145/209754378-8eaacde3-d300-46d2-b28f-b18cc9fcf044.jpg)

### Process

#### Step One - Player movement

```processing
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
#### Step Two
#### Step Three
#### Step Four

# Socro	:soccer:	:soccer:


## Description of the project

> The project was to make a simple  game with the programming language `Processing`. That includes our pass lessons such as the usage of `dist()`, `array`, collision, etc. While building the game developers must have in mind how to tackle another problem which is the flexibleity of the game; meaning the screen `size()` would not change or ruin the overall game functionality.   

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
***
#### Step One - Player movement
Apply the logic for the drag and move forward:  
``` processing
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

```
Displaying the change of movement using the `draw()`:
``` processing

void draw() {
  frenchBall.move(.99);
  soccerBall.move(.99);
  }
```
The `player` class:

``` processing
void move(float value) {
    if (speed > .1) {
      speed *= value;
    } else {
      speed = 0;
    }

    speed *= .99;
    speed *= .99;

    mx = cos(angle) * speed;
    my = sin(angle) * speed;

    x += mx;
    y += my;
  }



```
This way was changed later on to improve the overall feel of the game as well as to easy developement [look at Movement Issues](https://github.com/Xpliot/Soc
cerGame/blob/main/Issues(Testing).md) to understand farther more about this problem. 
#### Step Two - Physics 
#### Step Three - Collision
#### Step Four - Texture and final touches

I wanted my game to look better by adding texture to my players as well as my nets and background. 

I drew these for the soccerball and the two players.
<img width="101" alt="ArgentinaBall" src="https://user-images.githubusercontent.com/80181145/209845172-411b5e3e-2e90-441a-80da-5c0829fecb84.png">
<img width="101" alt="FrenchBall" src="https://user-images.githubusercontent.com/80181145/209845175-c5a432e5-337b-4343-a44d-82a6e9e634aa.png">
<img width="101" alt="soccerBall" src="https://user-images.githubusercontent.com/80181145/209845178-86fcc74f-7183-484b-89be-168eeaa899e7.png">


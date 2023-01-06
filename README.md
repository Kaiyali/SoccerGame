# Socro	:soccer:	:soccer:


## Description Of The Project

> The project was to make a simple game with programming language Processing. That includes our past lessons, such as using `dist()`, `array`, `collision`, etc. While building the game, developers must consider how to tackle another problem: the game's flexibility, meaning the screen `size()` would stay the same and maintain the overall game functionality.
 ***
## Objective Of The Game

`Socro` is a basic drog-move soccer game to score three goals against the opposition's net to come out victorious. Although the concept sounds relatively simple, applying this to reality took a lot of work.

 ***

 ## Brainstorming and Ideation
| Game Idea        | Reasons           | 
| -------------    |:-------------:|  
| Chess Game       | Too dull, and a lot of people would try and make it. | 
| Soccer Game      | The World Cup was playing during this assignment, so I needed to make a fantastic soccer game.      |   
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

<p align="center">
<img width="700" alt="BrainStorming_Idea" src="https://user-images.githubusercontent.com/80181145/209754378-8eaacde3-d300-46d2-b28f-b18cc9fcf044.jpg">
</p>


### Process

***

### Step One - Player Movement

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
This way is the changed version to improve the game's overall feel and to quickly develop a [look at Movement Issues](https://github.com/Xpliot/SoccerGame/blob/main/Game/Issue.md) to understand this problem.

### Step Two - Physics 
The following step was the most complex step I had to count: applying 2d physics. [Collision](https://github.com/Xpliot/SoccerGame/blob/main/Game/Issue.md) and the slowing effects of the players after being launched are what I categorized as "physics" in my game.

``` processing 
 // checks if the two players have collided with one another via their corrodinate/positions by returning if it is true or false
boolean collision(Player p1, Player p2) {  

  if (dist(p1.x, p1.y, p2.x, p2.y) < p1.w/2 + p2.w) {
    return true;
  } else {
    return false;
  }
}
```


### Step Four - Texture And Final Touches
My final step was to add the finish touches, such as a Main Menu, Winner Window and textures to make the game look prettier. This step sounds simple, yet it has some level of complexity towards [Glueing Things Together](https://github.com/Xpliot/SoccerGame/blob/main/Game/Issue.md). I drew these textures on top of the players (circles).

<p align="center">
    <img width="50" alt="ArgentinaBall-removebg-preview (1)" src="https://user-images.githubusercontent.com/80181145/209846750-3101af2d-ee9e-41bd-bcfd-350a5220c339.png">
    <img width="50" alt="FrenchBall" src="https://user-images.githubusercontent.com/80181145/209845175-c5a432e5-337b-4343-a44d-82a6e9e634aa.png">
    <img width="50" alt="soccerBall" src="https://user-images.githubusercontent.com/80181145/209845178-86fcc74f-7183-484b-89be-168eeaa899e7.png">
</p>


I applied these textures in the `Players` class constractor to simplifiy and clean up my code.  

``` processing 
class Player {
  float x, y, w;
  float mx, my;
  float speed;
  float angle, degree;
  boolean inContact;
  PImage img;
  String photo;


  Player(float x, float y, float w, String photo) {
    mx = 0;
    my = 0;
    this.x = x;
    this.y = y;
    this.w = w;
    this.photo = photo;
    img = loadImage(photo);
  }
}

```
`Main.pde`:   
``` processing
ArgentinaBall  = new Player(width/2+width/6, height/2, circleRadius, "ArgentinaBall.png");
soccerBall     = new Player(width/2, height/2, circleRadius, "soccerBall.png");
FrenchBall     = new Player(width/3, height/2, circleRadius, "FrenchBall.png");
```

### Final Product
https://user-images.githubusercontent.com/80181145/210278626-d9eed192-5378-419e-8f93-5f3bccd42233.mp4






//circle collision
class Player {
  float x, y, w;
  float mx, my;
  float speed;
  float angle,degree;
  boolean inContact;


  Player(float tempX, float tempY, float tempW) {
    mx = 0;
    my = 0;
    x = tempX;
    y = tempY;
    w = tempW;
 
  }
  
  void move(float value){
      if(speed > .1){
        speed *= value;
      }
      else{
       speed = 0; 
      }
      
      speed *= .99;
      speed *= .99;  
      
      mx = cos(angle) * speed;
      my = sin(angle) * speed; 
       
     println("mx is: " + mx);
      x += mx;
      y += my;
    
  }
  
  void detectCollision(float _x, float _y, float _w) {
  
     float distance = dist(x, y, _x, _y);  //the distance between two circles  
    //finding if the distance between the two circles are collising with radius of both circles
    if(distance < _w/2 + w/2) {
      
       _x *= -1;
       _y *= -1;
      
       float dx = posX - _x;
       float dy = posY - _y;
     
       angle = atan2(dy/2, dx/2);
       degree = degrees(angle);
       _x = cos(degree*-1) * speedX;
       _y = sin(degree*-1) * speedY;

       xdir = cos(degree) * speedX;
       ydir = sin(degree) * speedY;  
     
       cposX += _x;
       cposY += _y;
     
       _x += xdir;
       _y += ydir;
       inContact = true;
            
      }else {
        inContact = false;
      }
      
      if(inContact){
        cposX -= xdir/2;
        cposY -= ydir/2;
      }
  }

  void detectCollision(Player play) {
  
     float distance = dist(x, y, play.x, play.y);  //the distance between two circles  
    //finding if the distance between the two circles are collising with radius of both circles
    if(distance < play.w/2 + w/2) {
      
       play.x *= -1;
       play.y *= -1;
      
       float dx = posX - play.x;
       float dy = posY - play.y;
     
       angle = atan2(dy/2, dx/2);
       degree = degrees(angle);
       play.x = cos(degree) * speedX;
       play.y = sin(degree) * speedY;

       xdir = cos(degree) * speedX/2;
       ydir = sin(degree) * speedY/2;  
     
       cposX += play.x;
       cposY += play.y;
     
       play.x += xdir;
       play.y += ydir;

      }  
  }

  void display() {
    circle(x, y, w);
  }

}

class GameSetting{
  
  void bounder(Player p1){
    
   if (p1.x > width-p1.w/2|| p1.x < p1.w/2) {
      fill(random(255),random(255),random(255));
      p1.x *= -1;            
      p1.speed = 5;  
  }
   if (p1.y > height-p1.w/2|| p1.y < p1.w/2) {
      fill(random(255),random(255),random(255));
      p1.y *= -1;            
      p1.speed = 5;

    }
  }

  void setLimiters(){
     if(abs(speedX) <= 1 || abs(speedY) <= 1){
        xdir = 0;
        ydir = 0;
    }
   if(abs(speedY) >= 15 || abs(speedX) >= 15){
      ydir = 12;
      xdir = 12;
    } 
   }
   
   
}

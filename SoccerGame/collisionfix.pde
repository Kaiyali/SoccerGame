void collisionBetter(Player p1, Player p2){

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

class GameSetting {

  void bounder(Player p1) {

    if (p1.x > width-p1.w/2) {
      fill(random(255), random(255), random(255));

      float dx = p1.x - width;
      float dy = p1.y - height;

      float angle = atan2(dy/2, dx/2);
      p1.angle = abs(angle) + PI/2;
      print(angle);

      p1.speed = 5;
    }
    if (p1.x < p1.w/2) {
      fill(random(255), random(255), random(255));
      float dx = p1.x - width;
      float dy = p1.y - height;
      float angle = atan2(dy/2, dx/2);
      p1.angle = abs(angle) + PI;
      print(angle);
      p1.speed = 5;
    }
    if (p1.y > height-p1.w/2) {
      float dx = p1.x - width;
      float dy = p1.y - height;

      float angle = atan2(dy/2, dx/2);
      p1.angle = abs(angle) + PI/2;
      print(angle);
      p1.speed = 5;
    }
    if (p1.y < p1.w/2) {
      float dx = p1.x - width;
      float dy = p1.y - height;

      float angle = atan2(dy/2, dx/2);
      p1.angle = (angle) + PI;
      print(angle);
      p1.speed = 5;
    }
  }
}

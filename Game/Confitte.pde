class Confitte {
  float x, y;
  float xspeed, yspeed;
  float size;
  color c;

  Confitte(float x, float y, float xspeed, float yspeed, float size, color c) {
    this.x = x;
    this.y = y;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
    this.size = size;
    this.c = c;
  }

  void update() {
    x += xspeed;
    y += yspeed;
    yspeed += 0.1; // Add gravity
  }

  void display() {
    fill(c);
    ellipse(x, y, size, size);
  }
}

class Confitte {
  float x, y;              // x and y position of the Confitte
  float xspeed, yspeed;    // Speed of the Confitte in the x and y directions
  float size;              // Size of the Confitte
  color c;                 // Color of the Confitte

  // Constructor for the Confitte class
  Confitte(float x, float y, float xspeed, float yspeed, float size, color c) {
    this.x = x;
    this.y = y;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
    this.size = size;
    this.c = c;
  }

  // Update the position of the Confitte
  void update() {
    x += xspeed;
    y += yspeed;
    yspeed += 0.1; // Add gravity
  }

  // Display the Confitte
  void display() {
    fill(c);
    ellipse(x, y, size, size);
  }
}



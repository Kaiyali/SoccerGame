 class Particle {
   float x, y;
   float xspeed, yspeed;
   float size;
   int alpha;
   color c;
  // Particle for the Confitte class
   Particle(float x, float y, float xspeed, float yspeed, float size, color c) {
     this.x = x;
     this.y = y;
     this.xspeed = xspeed;
     this.yspeed = yspeed;
     this.size = size;
     this.c = c;
     this.alpha = 255;
   }
  // Update the position of the Particle
   void update() {
     x += xspeed;
     y += yspeed;
     yspeed += 0.2; // Add gravity
     xspeed *= 0.99; // Slow down horizontal speed
     alpha -= 5; // Decrease alpha
   }
    // Display the Confitte
   void display() {
     fill(red(c), green(c), blue(c), alpha);
     ellipse(x, y, size, size);
   }

   void use(){
    for (int i = 0; i < particles.size(); i++) {
      Particle p = particles.get(i);
      p.update();
      p.display();
    if (p.y > height || p.alpha < 0) {
      particles.remove(i); // Remove particles that have fallen off the screen or fully faded away
    }
  }
   }
 }

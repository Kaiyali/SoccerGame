//circle collision
class Player{
  float x, y, w;                // Player's x and y position, and width
  float mx, my;                 // Player's movement in the x and y directions
  float speed;                  // Player's speed
  float angle, degree;          // Player's angle and degree
  boolean inContact;            // Whether the player is in contact with something
  PImage img;                   // Image to display for the player
  String photo;                 // File path for the player's image

  // Constructor with three arguments: x, y, and w
  Player(float x, float y, float w) {
    mx = 0;
    my = 0;
    this.x = x;
    this.y = y;
    this.w = w;
  }

  // Constructor with four arguments: x, y, w, and photo
  Player(float x, float y, float w, String photo) {
    mx = 0;
    my = 0;
    this.x = x;
    this.y = y;
    this.w = w;
    this.photo = photo;
    img = loadImage(photo);
  }

  // Set the player's image using the specified file path
  void displayImage(String photo){
    this.photo = photo;
    img = loadImage(photo);
  }
  
// Update the player's position based on their speed, angle, and degree
void move(float value) {
  // If the speed is greater than .1, update it
  if (speed > .1) {
    speed *= value;
  } else {
    // Otherwise, set the speed to 0
    speed = 0;
  }

  // Decrease the speed slightly
  speed *= .99;
  speed *= .99;

  // Calculate the player's movement in the x and y directions
  mx = cos(angle) * speed;
  my = sin(angle) * speed;

  // Update the player's position based on their movement
  x += mx;
  y += my;
}

// Display the player on the screen
void display() {
  circle(x, y, w);  // Display a circle at the player's position
  imageMode(CENTER);  // Set the image mode to center
  image(img, x, y, w, w);  // Display the player's image at their position
  }
}




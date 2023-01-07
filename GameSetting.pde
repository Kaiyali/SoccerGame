class GameSetting {

  // Check if player is outside of the boundaries of the field
  // If player is outside, change player's angle and speed to bounce off the boundary
  void bounder(Player p1) {
    // Player is to the right of field
    if (p1.x > width-p1.w/2) {
      fill(random(255), random(255), random(255)); // Randomly change color

      float dx = p1.x - width; // Difference in x coordinate between player and field boundary
      float dy = p1.y - height; // Difference in y coordinate between player and field boundary

      // Calculate angle between player and field boundary
      float angle = atan2(dy/2, dx/2); 
      // Set player's angle to be opposite of angle between player and field boundary
      // Add PI/2 to make player bounce off field boundary
      p1.angle = abs(angle) + PI/2; 
      print(angle); // Print angle for debugging purposes

      p1.speed = 5; // Set player's speed to be 5
    }
    // Player is to the left of field
    if (p1.x < p1.w/2) {
      fill(random(255), random(255), random(255)); // Randomly change color
      float dx = p1.x - width; // Difference in x coordinate between player and field boundary
      float dy = p1.y - height; // Difference in y coordinate between player and field boundary
      float angle = atan2(dy/2, dx/2); // Calculate angle between player and field boundary
      // Set player's angle to be opposite of angle between player and field boundary
      // Add PI to make player bounce off field boundary
      p1.angle = abs(angle) + PI; 
      print(angle); // Print angle for debugging purposes
      p1.speed = 5; // Set player's speed to be 5
    }
    // This code is checking if the Player object is outside the bounds of the window in the y direction
    if (p1.y > height-p1.w/2) {
      float dx = p1.x - width;
      float dy = p1.y - height;
      // It sets the Player's angle and speed to specific values and prints the angle to the console
      float angle = atan2(dy/2, dx/2);
      p1.angle = abs(angle) + PI/2;
      print(angle);
      p1.speed = 5;
    }
    // If the Player object is outside the bounds, it calculates the angle between the Player's current position and the center of the window
    
    if (p1.y < p1.w/2) {
      float dx = p1.x - width;
      float dy = p1.y - height;
    // It sets the Player's angle and speed to specific values and prints the angle to the console
      float angle = atan2(dy/2, dx/2);
      p1.angle = (angle) + PI;
      print(angle);
      p1.speed = 5;
    }
  }
}

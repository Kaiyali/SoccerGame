class Goal {
  float _x, _y;        // x and y position of the Goal
  float _width, _height;  // Width and height of the Goal
  boolean scored;      // Whether a goal has been scored or not

  // Constructor for the Goal class
  Goal(float _x, float _y, float _width, float _height ) {
    this._y = _y;
    this._x = _x;
    this._width = _width;
    this._height = _height;
    // Draw the Goal as a rectangle with the specified x, y, width, and height
    rect(_x, _y, _width, _height);
    rectMode(CENTER);
  }

  // Check if a Player has scored a goal
  void isGoal(Player play) {
    // If the Player's x position is within the bounds of the Goal's x position
    if (play.x < _x + _width/2  && play.x > _x - _width/2) {
      // If the Player's y position is within the bounds of the Goal's y position
      if ( play.y < _y + _height/2 && play.y > _y - _height/2) {
        // Set scored to true
        scored = true;
      } else {
        // Set scored to false
        scored = false;
      }
    } else {
      // Set scored to false
      scored = false;
    }
  }

}


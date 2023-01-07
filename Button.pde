class Button {

  float _width;
  float _height;
  String text;
  float posX;
  float posY;
  boolean isPressed;

  // Constructor with default values
  Button() {
    this._width = 100; // default width
    this._height = 100; // default height
    this.posX = width/2; // default x position
    this.posY = height/2; // default y position
    this.text = "button"; // default text
  }

  // Method to create the button
  void create(float posX, float posY, float _width, float _height) {
    this._width = _width; // set the width to the passed in value
    this._height = _height; // set the height to the passed in value
    this.posX = posX; // set the x position to the passed in value
    this.posY = posY; // set the y position to the passed in value
    rectMode(CENTER); // set the rectMode to center
  }
  
  // Method to display the button
  void display() {
    fill(255, 100, 100); // set the fill color to a light red
    rect(posX, posY, _width, _height, 20); // draw a rectangle with rounded corners at the specified position and dimensions
    fill(0); // set the fill color to black
    text(text, posX + (posX/_width)/2, // draw the text at the specified position with an offset
      posY + (posY/_height)/2,
      _width, _height);
  }




// This method sets the text for the button and sets the font size
  void setText(String text, int fontSize) {
    this.text = text;
    textSize(fontSize);
    fill(0, 408, 612); // Set text color to blue
    text(text, width/3, height/2, _width, _height); // Draw text at specified position
    textAlign(CENTER); // Align text to center
  }


  // This method sets the text for the button with a default font size
  void setText(String text) {
    this.text = text;
    textSize(_height/2.5); // Set font size based on button height
    fill(0); // Set text color to black
    textAlign(CENTER); // Align text to center
  }


  // This method checks if the button is pressed by checking if the mouse is within the boundaries of the button
  void checkPress() {
    if (mouseX < posX + _width/2  && mouseX > posX - _width/2) { // Check if mouse is within x-bounds of button
      if ( mouseY < posY + _height/2 && mouseY > posY - _height/2) { // Check if mouse is within y-bounds of button
        isPressed = true; // Button is pressed
      } else {
        isPressed = false; // Button is not pressed
      }
    } else {
      isPressed = false; // Button is not pressed
    }
  }


}

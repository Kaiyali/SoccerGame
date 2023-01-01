class Button {

  float _width;
  float _height;
  String text;
  float posX;
  float posY;
  boolean isPressed;

  Button(float _width, float _height) {
    this._width = _width;
    this._height = _height;
  }

  Button() {
    //set as default values
    this._width = 100;
    this._height = 100;
    this.posX = width/2;
    this.posY = height/2;
    this.text = "button";
  }


  void create(float posX, float posY, float _width, float _height) {
    this._width = _width;
    this._height = _height;
    this.posX = posX;
    this.posY = posY;
    rectMode(CENTER);
  }
  

  void display() {
    fill(255, 100, 100);
    rect(posX, posY, _width, _height, 20);
    fill(0);
    text(text, posX + (posX/_width)/2,
      posY + (posY/_height)/2,
      _width, _height);
  }


  void setText(String text, int fontSize) {
    this.text = text;
    textSize(fontSize);
    fill(0, 408, 612);
    text(text, width/3, height/2, _width, _height);
    textAlign(CENTER);
  }


  void setText(String text) {
    this.text = text;
    textSize(_height/2.5);
    fill(0);
    textAlign(CENTER);
  }


  void checkPress() {
    if (mouseX < posX + _width/2  && mouseX > posX - _width/2) {
      if ( mouseY < posY + _height/2 && mouseY > posY - _height/2) {
        isPressed = true;
      } else {
        isPressed = false;
      }
    } else {
      isPressed = false;
    }
  }

}

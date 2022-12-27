class Goal{
  float _x,_y;
  float _width, _height;
  boolean scored;
  
  Goal(float _x,float _y, float _width,float _height ){
    this._y = _y;
    this._x = _x;
    this._width = _width;
    this._height = _height;
    rect(_x,_y, _width, _height);
    rectMode(CENTER);
  }
  
  
  void isGoal(Player play){
    if (play.x < _x + _width/2  && play.x > _x - _width/2) {
      if ( play.y < _y + _height/2 && play.y > _y - _height/2) {
        scored = true;
      } else {
        scored = false;
      }
    } else {
      scored = false;
    }
  }
}

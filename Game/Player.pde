//circle collision
class Player {
  float x, y, w;
  float mx, my;
  float speed;
  float angle, degree;
  boolean inContact;
  PImage img;
  String photo;


  Player(float x, float y, float w) {
    mx = 0;
    my = 0;
    this.x = x;
    this.y = y;
    this.w = w;
  }

    Player(float x, float y, float w, String photo) {
    mx = 0;
    my = 0;
    this.x = x;
    this.y = y;
    this.w = w;
    this.photo = photo;
    img = loadImage(photo);
  }


  void displayImage(String photo){
    this.photo = photo;
    img = loadImage(photo);
  }

  void move(float value) {
    if (speed > .1) {
      speed *= value;
    } else {
      speed = 0;
    }

    speed *= .99;
    speed *= .99;

    mx = cos(angle) * speed;
    my = sin(angle) * speed;

    x += mx;
    y += my;
  }

  void display() {
    circle(x, y, w);
    imageMode(CENTER);
    image(img, x, y, w, w);
  }
}

class Teams_Window {
  // create Button objects
  public Button Decbtnp1;
  public Button Incbtnp1;
  public Button Decbtnp2;
  public Button Incbtnp2;
  public Button PlayBtn;
  // array to hold team images
  PImage[] teams = new PImage[10];

  int p1Team =2; // default value for p1Team
  int p2Team =1; // default value for p2Team

  // function to display teams and buttons
  void showcaseTeams() {
    // load images into the array
    for (int i = 0; i < teams.length; i++) {
      teams[i] = loadImage("team"+i+".png");
    }

    // create Decrement Button for Player 1
    Decbtnp1 = new Button();
    Decbtnp1.create(width/10, height/2, 50, 50);
    // create Increment Button for Player 1
    Incbtnp1 = new Button();
    Incbtnp1.create(width/3, height/2, 50, 50);
    // create Decrement Button for Player 2
    Decbtnp2 = new Button();
    Decbtnp2.create(width/1.2, height/2, 50, 50);
    // create Increment Button for Player 2
    Incbtnp2 = new Button();
    Incbtnp2.create(width/1.7, height/2, 50, 50);
    // create Play Button
    PlayBtn = new Button();
    PlayBtn.create(width/1.1, height/1.3, 150.00, 100.00);
    PlayBtn.setText("Play");

    // display all buttons
    Decbtnp1.display();
    Incbtnp1.display();
    Decbtnp2.display();
    Incbtnp2.display();
    PlayBtn.display();
    // check if buttons are pressed
    Decbtnp1.checkPress();
    Incbtnp1.checkPress();
    Decbtnp2.checkPress();
    Incbtnp2.checkPress();
    PlayBtn.checkPress();

    // display Image
    image(teams[p1Team],width/4.6, height/3, 250, 200);
    imageMode(CENTER);
    
    // display Image
    image(teams[p2Team],850, height/3, 250, 200);
    imageMode(CENTER);
  }
}

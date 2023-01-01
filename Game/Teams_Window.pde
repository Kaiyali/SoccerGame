class Teams_Window {
  public Button Decbtnp1;
  public Button Incbtnp1;
  public Button Decbtnp2;
  public Button Incbtnp2;
  public Button PlayBtn;
  PImage[] teams = new PImage[10];

  int p1Team =2;
  int p2Team =1;



  void showcaseTeams() {
    //setting up images inside the array
    for (int i = 0; i < teams.length; i++) {
      teams[i] = loadImage("team"+i+".png");
    }

    Decbtnp1 = new Button();
    Decbtnp1.create(width/10, height/2, 50, 50);
    Decbtnp1.setText("<");

    Incbtnp1 = new Button();
    Incbtnp1.create(width/3, height/2, 50, 50);
    Incbtnp1.setText(">");



    Decbtnp2 = new Button();
    Decbtnp2.create(width/1.2, height/2, 50, 50);
    Decbtnp2.setText("<");

    Incbtnp2 = new Button();
    Incbtnp2.create(width/1.7, height/2, 50, 50);
    Incbtnp2.setText(">");


    
    PlayBtn = new Button();
    PlayBtn.create(width/1.1, height/1.3, 150.00, 100.00);
    PlayBtn.setText("Play");



    Decbtnp1.display();
    Incbtnp1.display();
    Decbtnp2.display();
    Incbtnp2.display();
    PlayBtn.display();
    Decbtnp1.checkPress();
    Incbtnp1.checkPress();
    Decbtnp2.checkPress();
    Incbtnp2.checkPress();
    PlayBtn.checkPress();

    

    image(teams[p1Team],width/4.6, height/3, 250, 200);
    imageMode(CENTER);

    
    image(teams[p2Team],850, height/3, 250, 200);
    imageMode(CENTER);
  }
}

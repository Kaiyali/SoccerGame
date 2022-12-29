class Menu {
  public Button Playbtn;
  public Button Quitbtn;

  void menuState() {
    Playbtn = new Button();
    Playbtn.create(width/2, height/3, 300, 100);
    Playbtn.setText("Play");

    Quitbtn = new Button();
    Quitbtn.create(width/2, height/2, 300, 100);
    Quitbtn.setText("Quit");

     Playbtn.display();
     Quitbtn.display();
     Playbtn.checkPress();
     Quitbtn.checkPress();

  }
  void closeMenuState(){
  
  }
}

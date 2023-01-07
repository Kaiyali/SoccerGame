class Menu {
  public Button Playbtn;               // Button to start the game
  public Button Quitbtn;               // Button to quit the game
  Field field = new Field();           // Field for the game

  // Display the menu screen
  void menuState() {
    print(field.lScore);  // Print the left score

    // Create and display the Play button
    Playbtn = new Button();
    Playbtn.create(width/2, height/3, 300, 100);
    Playbtn.setText("Play");
    Playbtn.display();

    // Create and display the Quit button
    Quitbtn = new Button();
    Quitbtn.create(width/2, height/2, 300, 100);
    Quitbtn.setText("Quit");
    Quitbtn.display();

    // Check if the Play or Quit buttons have been pressed
    Playbtn.checkPress();
    Quitbtn.checkPress();

    // Display the two players
    PlayerTwo.display();
    PlayerOne.display();

    // Set and display the images for the two players
    PlayerTwo.displayImage("player"+teamW.p1Team+".png");
    PlayerOne.displayImage("player"+teamW.p2Team+".png");
  }
}


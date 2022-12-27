class Menu{
  Button Playbtn;
  Button Quitbtn;
  boolean onMenu = true;
  
  void menuState(){
    Playbtn = new Button();
    Playbtn.create(width/2,height/3, 300,100);
    Playbtn.setText("Play");
   
    Quitbtn = new Button();
    Quitbtn.create(width/2,height/2, 300, 100);
    Quitbtn.setText("Quit");
    
    if(onMenu == true){
      Playbtn.display();  
      Quitbtn.display();
      Playbtn.checkPress();  
      Quitbtn.checkPress(); 
    }else{
    //Teams Games
     
    }
  }
  void mousePressed() {
  if(Playbtn.isPressed == true && onMenu == true ) {
    print("Play Game");
  
    onMenu = false;
  }else if(Quitbtn.isPressed == true && onMenu == true){
    print("Quit Application");
    exit();     
  }
}
}

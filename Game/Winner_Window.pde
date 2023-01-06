class Winner_Window{
    GameStates  GameStates = new GameStates(); 
    void showcaseWinner(){
        if(field.lScore == 1){
            fill(100);
            textSize(50);
            text("The players on the left WON!", width/2, height/2);
        }else{
            fill(100);
            textSize(50);
            text("The players on the right WON!",  width/2, height/2);
        }
        if (mousePressed == true) {
            gameState = GameStates.MENUSTATE;
        } 
        
        for (int i = 0; i < 2; i++) {
            particles.add(new Particle(random(width), 0, random(-1, 1), random(-5, -2), random(5, 25), color(random(255), random(255), random(255))));
        }

    }

    
}

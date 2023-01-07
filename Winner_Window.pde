// When the game has ended, this method displays the winner and waits for mouse input to go back to the menu
void showcaseWinner() {
// If the left score is 1, the left team won
    if(field.lScore == 1) {
    fill(100); // Set the fill color to a light grey
    textSize(50); // Set the text size to 50
    text("The players on the left WON!", width/2, height/2); // Display the text centered on the screen
    // If the left score is not 1, the right team won
    }else {
        fill(100); // Set the fill color to a light grey
        textSize(50); // Set the text size to 50
        text("The players on the right WON!", width/2, height/2); // Display the text centered on the screen
    }
    // If the mouse is pressed
    if (mousePressed == true) {
        gameState = GameStates.MENUSTATE; // Change the game state to the menu state
    }
    // Create two new particles
    for (int i = 0; i < 2; i++) {
        // Add a new particle with random x and y positions, random x and y speeds, random size, and random color
        particles.add(new Particle(random(width), 0, random(-1, 1), random(-5, -2), random(5, 25), color(random(255), random(255), random(255))));
    }
}





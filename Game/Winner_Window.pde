
class Winner_Window{
    void showcaseWinner(){
        if(field.lScore == 1){
            textSize(30);
            text("The players on the left WON!", height/2, width/2);
        }else{
            textSize(30);
            text("The players on the right WON!", height/2, width/2);
        }
    }
    
}

/// @description Decrement bonus stars

if (global.bonusadd > 0) {

    //Decrement additive bonus stars
    global.bonusadd--;
    
    //Increment bonus stars
    global.bonus++;
    if (global.bonus > 99) {
    
        //Decrement 100 bonus stars
        global.bonus -= 100;
        
        //Enable bonus game
        global.bonusgame = 1;    
    }
    
    //Repeat the process...
    alarm[4] = 4;
}

//Play sounds
if (ready4 == 0)
    ready4 = 1;


/// @description Move towards the player

//If the spike can move
if (_static == 0) {

    //Inherit event
    event_inherited();
    
    //Move towards the player
    alarm[11] = 60;
}

//Pick a spike ball
alarm[0] = 60+round(random(120));


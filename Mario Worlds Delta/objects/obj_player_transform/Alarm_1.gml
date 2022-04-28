/// @description Set the old powerup frame

//If the old powerup is small
if ((oldpowerup == 0) && (newpowerup < 2)) {

    //Set the sprite and frames
    sprite_index = player_grow();
    image_speed = 0.25;
    image_index = 0;
    
    //Set the new powerup
    global.powerup = newpowerup;
}

//Otherwise, if the old powerup is big
else if ((oldpowerup == 1) && (newpowerup == 0)) {

    //Set the sprite and frames
    sprite_index = player_shrink();
    image_speed = 0.25;
    image_index = 0;
    
    //Set the powerup
    global.powerup = newpowerup;
}

//Otherwise, do a normal transformation
else {
    
    //Set the powerup set in 'newpowerup
    global.powerup = oldpowerup;
    
    //Obtain sprite from player
    sprite_index = obj_playerparent.sprite_index;
    
    //Next frame
    alarm[2] = 6;
}


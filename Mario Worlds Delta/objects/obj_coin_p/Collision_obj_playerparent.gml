/// @description Collect the coin

//If the coin is visible
if (visible == 1) {
    
    //Play 'Coin' sound
    audio_stop_play_sound(snd_coin, 0, false);
    
    //Increment controller and warp branch coins
    with (obj_controller) coins++;
    with (obj_warpparent) coins++;
    
    //Increment coins
    global.coins++;
    
    //Get 10 points
    score += 10;
    
    //Create a sparkle
    instance_create(x+8, y+8, obj_sparkle);
    
    //Destroy
    instance_destroy();
}


/// @description Collect the coin

//If the sprite is a coin
if (sprite_index == spr_coin) {
    
    //Play 'Coin' sound
    audio_stop_play_sound(snd_coin, 0, false);
    
    //Increment coins
    global.coins++;
    
    //Get 10 points
    score += 10;
    
    //Create a sparkle
    instance_create(x+8, y+8, obj_sparkle);
    
    //Destroy
    instance_destroy();
}


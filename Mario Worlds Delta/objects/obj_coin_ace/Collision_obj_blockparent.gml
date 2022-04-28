/// @description Collect the coin

//Play 'Coin' sound
audio_stop_play_sound(snd_coin_big, 0, false);

//Increment coins
global.coins++;

//Remember that the coin has been collected
ds_map_add(global.dcoins, id, 1);

//Get score
with (instance_create(x, y, obj_score)) {

    //If 5 or more coins were collected, award an extra life
    if (ds_map_size(global.dcoins) >= 5)
        event_user(9);
    
    //Otherwise, give points based on how many coins you collected
    else        
        event_user(4+ds_map_size(global.dcoins)); 
}

//Create a sparkle
instance_create(x+8, y, obj_sparkle);

//Destroy
instance_destroy();


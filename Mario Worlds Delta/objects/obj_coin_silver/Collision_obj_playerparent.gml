/// @description Collect the coin

//Play 'Coin' sound
audio_stop_play_sound(snd_coin, 0, false);

//Increment controller and warp branch coins
with (obj_controller) coins++;
with (obj_warpparent) coins++;

//Increment coins
global.coins++;

//Get 10 points if this didn't came out from a enemy
global.scoins++;

//Create score based on how many coins were collected
with (instance_create(x-8, y, obj_score)) {

    if (global.scoins > 9)
        event_user(11);
    else
        event_user(2+global.scoins);
}

//Create a sparkle
instance_create(x, y+8, obj_sparkle);

//Destroy
instance_destroy();


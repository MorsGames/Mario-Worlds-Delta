/// @description Collect the coin

//Play 'Coin' sound
audio_stop_play_sound(snd_coin, 0, false);

//Increment controller and warp branch coins
with (obj_controller) coins++;
with (obj_warpparent) coins++;

//Increment coins
global.coins++;

//Get 10 points if this didn't came out from a enemy
if (nopoints == true)
    score += 10;
else {

    //Get 200 points
    with (instance_create(x-8, y, obj_score))
        event_user(2);
}

//Create a sparkle
instance_create(x, y+8, obj_sparkle);

//Destroy
instance_destroy();


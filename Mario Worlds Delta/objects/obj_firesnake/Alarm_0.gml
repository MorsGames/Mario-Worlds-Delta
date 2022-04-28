/// @description Leave a trail and jump

//Play 'Burn' sound
audio_stop_play_sound(snd_burn, 0, false);

//Leave a fire
instance_create(x, y+9, obj_firesnake_trail);

//Boost
y--;

//Jumping
jumping = 1;
    
//If swimming
if (swimming)
    vspeed = -1.75;
else
    vspeed = -3.5;
    
//Move towards player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;


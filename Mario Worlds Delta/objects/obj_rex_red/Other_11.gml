/// @description Damage rex or kill it

//If it is at the normal state
if (sprite_index == spr_rex_red) {

    //Set up the shrink pose
    sprite_index = spr_rex_red_stomp;
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Double speed
    prevhspeed = hspeed;
    hspeed = 0;
    
    //Start moving again
    alarm[1] = 8;

    //Set dead pose
    deathsprite = spr_rex2_red_dead;
}

//Otherwise, run default event
else
    event_inherited();


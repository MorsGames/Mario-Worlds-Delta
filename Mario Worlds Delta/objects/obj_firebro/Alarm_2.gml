/// @description Jump through blocks

//If the fire bro is about to spit a fireball, do not jump
if (sprite_index != spr_firebro_throw) {

    //Set the vertical speed
    vspeed = -2.5;
    
    //Repeat the process
    alarm[2] = 150;
}

//Otherwise, deny jump
else
    alarm[2] = 1;


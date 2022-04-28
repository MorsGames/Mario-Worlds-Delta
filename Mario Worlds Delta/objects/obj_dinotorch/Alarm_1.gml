/// @description Stop, then blow

//If the dino torch is not falling
if (gravity == 0) {
    
    //Set the sprite
    sprite_index = spr_dinotorch;
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
    
    //Stop horizontal speed
    hspeed = 0;
    
    //Blow fire
    alarm[2] = 30;
}
else
    alarm[1] = 1;


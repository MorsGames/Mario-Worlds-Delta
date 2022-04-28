/// @description Stop and open the mouth

//If there's no gravity
if (gravity == 0) {
    
    sprite_index = spr_zappakoopa_charge;
    image_speed = 0;
    image_index = 0;
    hspeed = 0;
    alarm[2] = 30;
}
else
    alarm[1] = 1;


/// @description Dolphin logic

//Check for water
water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_swim, 0, 0);

//If there's water
if (water) && (y > water.y-8) {
    
    //Snap in water
    y = water.y-8;

    //Stop vertical movement
    vspeed = 0;
    gravity = 0;
    alarm[0] = 16;
    
    //Create splash effect
    with (instance_create(x,other.water.y-8, obj_smoke)) {
    
        sprite_index = spr_smoke_16;
        image_speed = 0.15;
        image_index = 0;
        gravity = 0.25;
        vspeed = -2;
    }
    
}

//Set facing direction
xscale = 1*sign(hspeed);

//Cap vertical speed
if (vspeed > 3.5)
    vspeed = 3.5;


/// @description Generate smoke

//If it is gaining acceleration
if ((hspeed > 0.1) && (xscale == -1)) || ((hspeed < -0.1) && (xscale == 1))
&& (gravity == 0)
{ 
    //Generate smoke effect
    with (instance_create(x-8*xscale, bbox_bottom, obj_smoke)) {
    
        sprite_index = spr_smoke;
        image_speed = 0.15;
    }
}

//Repeat the process
alarm[0] = 8;


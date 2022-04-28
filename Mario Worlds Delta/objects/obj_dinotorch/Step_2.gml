/// @description Animation + Platform movement

//Inherit event
event_inherited();

//If not blowing fire
if (sprite_index != spr_dinotorch_blow) 
&& (hspeed != 0) {

    if (gravity == 0)
        image_speed = 0.125;
    else {
    
        image_speed = 0;
        image_index = 0;
    }
}


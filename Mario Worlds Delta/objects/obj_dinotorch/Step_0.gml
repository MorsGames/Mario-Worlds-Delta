/// @description Dino Torch logic

//Inherit event from parent
event_inherited();

//If walking and not blowing fire
if (sprite_index != spr_dinotorch_blow) {

    //Jump when a wall is reached
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed*2, bbox_top+4, bbox_left+hspeed*2, bbox_bottom-1, obj_solid, 0, 0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed*2, bbox_top+4, bbox_right+hspeed*2, bbox_bottom-1, obj_solid, 0, 0))) {
    
        //If there's no gravity, hop
        if (gravity == 0) {
        
            vspeed = -4.5;
            y--;
        }
    }
    
    //Move away from walls
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x++;
    if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed, bbox_top+4, bbox_right+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x--;    
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;


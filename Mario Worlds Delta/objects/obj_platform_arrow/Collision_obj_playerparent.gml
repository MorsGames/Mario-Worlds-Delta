/// @description Check if the player is below and bump it if allowed

if (image_speed = 0)
&& (other.vspeed < 0)
&& (other.bbox_top > bbox_bottom+other.vspeed) {

    //If there's not a solid above, animate
    if (!collision_point(x, y-1, obj_solid, 1, 0))
    && (!collision_point(x, y-1, obj_solid_moving, 1, 0))
        image_speed = 0.4;
        
    //Otherwise
    else {
    
        //Do not animate
        image_speed = 0;
        image_index = 0;
    }
}


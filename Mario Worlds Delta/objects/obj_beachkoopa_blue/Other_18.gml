/// @description Kick the item

//All events are ran by item
with (idd) {

    //If the item is not overlapping a solid.
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,obj_solid, 0, 0)) {

        //Item bounce
        vspeed = -1;
        
        //If the object is not on contact with a slope
        if (!collision_rectangle(x-2, bbox_bottom-4, x-2, bbox_bottom, obj_slopeparent, 1, 0))
            hspeed = (3*other.xscale);
            
        //Otherwise, do not apply horizontal speed
        else
            hspeed = 0.5*sign(other.xscale);
    }
    else
        inwall = true;
}


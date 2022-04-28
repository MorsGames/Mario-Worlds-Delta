/// @description Default conveyor collision

//Collision with conveyor
var conveyor = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_conveyorparent, 0, 0);

//If there's a conveyor
if (conveyor)
&& (conveyor.image_speed != 0) {

    //If the conveyor is moving to the right
    if (conveyor.image_speed > 0) {
    
        if (!collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4, obj_solid, 1, 0))
            x += conveyor.image_speed;
    }
    
    //Otherwise, if the conveyor is moving to the left
    else if (conveyor.image_speed < 0) {
    
        if (!collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4, obj_solid, 1, 0))
            x += conveyor.image_speed;            
    }
}

//Collision with escalator
var escalator = collision_rectangle(x-2, bbox_bottom+4, x+2, bbox_bottom+8, obj_escalatorparent, 1, 0);
if (escalator)
&& (escalator.image_speed != 0) {

    //If the NPC is on the ground...
    if (vspeed == 0) {
    
        //Move horizontally
        x += escalator.add;
        
        //Ensure that the player has correct escalator collision
        if (collision_rectangle(x-2, bbox_bottom+4, x+2, bbox_bottom+8, escalator.myslope, 1, 0))
        && (!collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom-4, escalator.myslope, 1, 0))
            y++;
    }
}


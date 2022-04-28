/// @description Buster beetle logic

//Inherit event
event_inherited();

//If the brick does not exist
if (mybrick == noone) {

    //If there's a blue brick at the left
    if ((xscale == -1) && (collision_rectangle(bbox_left-3, bbox_top, bbox_left, bbox_bottom-1, obj_brick_throw, 0, 0)))
    || ((xscale == 1) && (collision_rectangle(bbox_right, bbox_top, bbox_right+3, bbox_bottom-1, obj_brick_throw, 0, 0))) {
    
        //Create a brick
        mybrick = instance_create(x+16*xscale, y+2, obj_busterpickup);
        
        //With the created brick
        with (mybrick) {
            
            //Set up the parent
            parent = other.id;
            
            //Set the picking direction
            if (other.xscale < 0)
                hspeed = 1;
            else if (other.xscale > 0)
                hspeed = -1;            
        }
        
        //Stop horizontal speed
        hspeed = 0;
        
        //Set the holding sprite
        sprite_index = spr_busterbeetle_hold;        
    }
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;


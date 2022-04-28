/// @description Make objects and change direction

//Snap to grid
move_snap(16, 16);

//Direction
direction = nextdir;

//If empty blocks needs to be created, create them
if (sprite_index == spr_qblock_empty)
    instance_create(x, y, obj_emptyblock);
    
//Otherwise
else if (!position_meeting(x+8, y+8, obj_coin)) {

    with (instance_create(x, y, obj_coinchange)) {
    
        //Set animation speed
        image_speed = 0.15;
        
        //Turn into a coin
        alarm[0] = 16;
        
        //Make visible
        visible = 1;
        
        //Hereby frame from a existing coin
        if (instance_exists(obj_coin))
            image_index = obj_coin.image_index;
    }
}

//Make another object
alarm[0] = 16;

//Destroy on contact with solids or semisolids
if ((direction == 0) && (position_meeting(x+17, y+8, obj_solid)))
|| ((direction == 90) && (position_meeting(x+8, y-1, obj_solid)))
|| ((direction == 180) && (position_meeting(x-1, y+8, obj_solid)))
|| ((direction == 270) && (position_meeting(x+8, y+17, obj_semisolid)))
    instance_destroy();


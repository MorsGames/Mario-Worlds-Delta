/// @description Default enemy death script

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, y, obj_enemy_dead);

//Set up the sprite
imdead.sprite_index = deathsprite;

//Set up the frame
imdead.image_index = image_index;

//Set up the xscale
imdead.image_xscale = xscale;

//If the killing object is the cape or the block, jump higher.
if (other.object_index == obj_spinner) 
|| (object_is_ancestor(other.object_index, obj_blockparent)) {

    //Cape / Block kill
    if (variable_instance_exists(id, "swimming")) {
        
        if (swimming == 0)
            imdead.vspeed = -5;
        else
            imdead.vspeed = -3;
    }
    else {
    
        if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_swim, 0, 0))
            imdead.vspeed = -5;
        else
            imdead.vspeed = -3;
    }
    
    //If the killer object is at the left of this object, move to the right
    if ((other.bbox_left+other.bbox_right/2) < bbox_left+bbox_right/2)
        imdead.hspeed = 0.5;
        
    //Otherwise, move to the left
    else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2)
        imdead.hspeed = -0.5;    
}

//Otherwise
else {
    
    //If the killer object is not moving
    if (other.hspeed == 0) {
    
        //If the killer object is at the left of this object, move to the right
        if ((other.bbox_left+other.bbox_right/2) < bbox_left+bbox_right/2)
            imdead.hspeed = 1;
            
        //Otherwise, move to the left
        else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2)
            imdead.hspeed = -1;
    }
    
    //Otherwise, if the killer object is moving
    else {
    
        //If the kill object is the player, hereby player's hspeed
        if (other.object_index == obj_playerparent) {
        
            //If the player is sliding
            if (other.sliding == true)
                imdead.hspeed = obj_playerparent.hspeed;
        }
        
        //Otherwise, move normally
        else {
        
            if (other.hspeed > 0)
                imdead.hspeed = 1;
            else
                imdead.hspeed = -1;
        }
    }
    
    //Check if "swimming" variable exists
    if (variable_instance_exists(id, "swimming")) {
        
        if (swimming == 0)
            imdead.vspeed = -3;
        else
            imdead.vspeed = -1.5;
    }
    else {
    
        if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_swim, 0, 0))
            imdead.vspeed = -3;
        else
            imdead.vspeed = -1.5;
    }
}

//Destroy
instance_destroy();


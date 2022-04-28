/// @description Default enemy death script

//Set up death sprite if we didnt yet
event_user(14);

//Create dead enemy object
imdead = instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_enemy_dead);

//Set up the sprite
imdead.sprite_index = deathsprite;

//Set up the xscale
imdead.image_xscale = image_xscale;

//Set up vertical speed
imdead.vspeed = -3;

//If the killer object is not moving
if (other.hspeed == 0) {

    //If the killer object is a cape spin
    if (other.object_index == obj_spinner) {

        //Set up vertical speed
        imdead.vspeed = -5;

        //If the killer object is at the left of this object, move to the right
        if ((other.bbox_left+other.bbox_right/2) < bbox_left+bbox_right/2)
            imdead.hspeed = 0.5;
            
        //Otherwise, move to the left
        else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2)
            imdead.hspeed = -0.5;        
    }
    
    //Otherwise
    else {
    
        //If the killer object is at the left of this object, move to the right
        if ((other.bbox_left+other.bbox_right/2) < bbox_left+bbox_right/2)
            imdead.hspeed = 1;
            
        //Otherwise, move to the left
        else if ((other.bbox_left+other.bbox_right/2) > bbox_left+bbox_right/2)
            imdead.hspeed = -1;
    }
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

//Destroy
instance_destroy();


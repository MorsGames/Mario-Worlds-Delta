/// @description Chargin' Chuck logic

//Push value
xx = abs(hspeed);

//If running or jumping
if (sprite_index == spr_charginchuck_walk) 
|| (sprite_index == spr_charginchuck_jump) {

    //Jump when a wall is reached
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed*2, bbox_top+4, bbox_left+hspeed*2, bbox_bottom-1, obj_solid, 0, 0)))
    || ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed*2, bbox_top+4, bbox_right+hspeed*2, bbox_bottom-1, obj_solid, 0, 0))) {
    
        //If there's no gravity, hop
        if (gravity == 0) {
        
            //Set the jumping sprite
            sprite_index = spr_charginchuck_jump;
            
            //Do not animate
            image_speed = 0;
            image_index = 0;
            
            //Set the vertical speed
            vspeed = -4.5;
            
            //Boost jump
            y--;
        }
    }
    
    //Move away from walls
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x += xx;
    if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed, bbox_top+4, bbox_right+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x -= xx;    
}

//Otherwise if damaged
else {
    
    //If there's no gravity
    if (gravity == 0) {
    
        //Stop horizontal speed
        hspeed = 0;
    
        //If not moving
        if (image_speed == 0)
            image_speed = 0.2;
    }
    
    //Move away from walls
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x += xx;
    if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed, bbox_top+4, bbox_right+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x -= xx;
}

//Floor collision
event_user(4);

//Facing direction
event_user(8);

//Update animation
if (gravity == 0) {

    //If jumping...
    if (sprite_index == spr_charginchuck_jump) {
    
        //Set the running sprite
        sprite_index = spr_charginchuck_walk;
        
        //Set frame
        image_index = 1;
        
        //Set horizontal speed
        if (lookout == 0)
            image_speed = 0.2;
        else
            image_speed = 0.4;        
    }
    
    //If the player does exist
    if (instance_exists(obj_playerparent)) {
        
        //Always charge at the player if in lookout mode
        if (lookout == 1) {
        
            //If the player managed to get away...
            if (hspeed < 0) && (obj_playerparent.x > x+32)
            || (hspeed > 0) && (obj_playerparent.x < x-32) {
            
                //Stop animation
                sprite_index = spr_charginchuck;
                
                //Stop horizontal speed
                hspeed = 0;
                
                //Reset lookout
                lookout = -1;
                
                //Charge at the player again
                alarm[10] = 32;
            }
        }
        else if (lookout == 0) {
        
            //If the player is not above
            if (obj_playerparent.bbox_bottom > y-16) {
            
                //If the chuck is moving to the right
                if ((hspeed > 0) && (obj_playerparent.x > x)) 
                || ((hspeed < 0) && (obj_playerparent.x < x)) {
                
                    //Double horizontal speed
                    hspeed = hspeed*1.75;                    
                    
                    //Activate lookout mode
                    lookout = 1;
                                 
                    //Stop alarm 1
                    alarm[1] = -1;
                    
                    //Set animation speed
                    image_speed = 0.5;
                    
                    //If there's not gravity, set dash sprite
                    if (gravity == 0)
                        sprite_index = spr_charginchuck_walk;
                }
            }
        }
    }
}

//Check for a water object
var water = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_swim,0,0);

//If the object is not underwater and makes contact with water
if (water) 
&& (!swimming) {

    //Make the object go underwater
    swimming = true;
    
    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0)
        vspeed = 0;
}

//Otherwise, if the object is underwater and it's not underwater, end swimming.
else if (!water) 
&& (swimming)
    swimming = false;


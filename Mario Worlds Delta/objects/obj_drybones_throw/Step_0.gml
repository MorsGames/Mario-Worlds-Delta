/// @description Dry Bones logic

//Inherit event
event_inherited();

//Previous hspeed
prevhspeed = hspeed;

//Set the scale
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;
    
//If the direction changed
if (hspeed != prevhspeed) 
&& (sprite_index != spr_drybones_turn) {

    //Set turning sprite
    sprite_index = spr_drybones_turn;
    
    //Animate it
    image_speed = 0.3;
    image_index = 0;
}

//Change direction towards player if far enough away
if (instance_exists(obj_playerparent)) {

    if ((obj_playerparent.x > x+80) || (obj_playerparent.x < x-80))
    && (hspeed != 0)
    && (!place_meeting(x,y,obj_enemyparent)) {
    
        if (sprite_index != spr_drybones_throw) {
        
            if (obj_playerparent.x < x)
                hspeed = -0.5;
            else
                hspeed = 0.5;            
        }    
    }
}


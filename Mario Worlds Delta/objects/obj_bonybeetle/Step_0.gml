/// @description Bony Beetle

//Inherit event
event_inherited();

//Update death sprite
deathsprite = sprite_index;

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;
    
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


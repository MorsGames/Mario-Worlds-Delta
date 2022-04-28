/// @description Throw projectiles when spinning


//If the player is doing a spinjump and it's not riding anything
if (jumpstyle == 1) 
&& (global.mount == 0) {
    
    //Fireball
    if (global.powerup == cs_pow_fire) {
    
        with (instance_create(x, y, obj_fireball)) {
        
            //If Toad is under control
            if (global.player == 2)
                hspeed = 4*sign(other.dir);
            else
                hspeed = 3*sign(other.dir);
        }
    }
    
    //Iceball
    else if (global.powerup == cs_pow_ice) {
    
        with (instance_create(x, y, obj_iceball))
            hspeed = 1.2*sign(other.dir);
    }
    
    //Change the facing direction
    xscale = -xscale;
    dir = -dir;
    
    //Set alarm based on direction
    if (dir == 1)
        alarm[3] = 15;
    else
        alarm[3] = 30;
}

//Otherwise, deny event
else
    alarm[3] = 1;


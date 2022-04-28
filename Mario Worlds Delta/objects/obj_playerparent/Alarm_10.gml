/// @description Manage player projectiles

//If controls are not disabled and the player is not doing a special movement
if (control_enable == true)
&& (flying == 0)
&& (holding == 0)
&& (kicking == 0)
&& (sliding == 0)
&& (jumpstyle == 0) {

    //If the player is not crouched down
    if (crouch == false) {
    
        //If the player has the fire powerup
        if (global.powerup == cs_pow_fire) {
        
            //If there's less than 2 fireballs in view
            if (instance_number(obj_fireball) < 2) {
            
                firing = 9;
                with (instance_create(x, y, obj_fireball)) {
                
                    //Set the vertical speed
                    vspeed = 3;
                
                    //Set the horizontal speed
                    if (global.player == 2) //If Toad is under control
                        hspeed = 4*other.xscale;
                    else
                        hspeed = 3*other.xscale;                   
                }
            }
        }
        
        //Otherwise, if the player has either the cape or the fire cape
        else if (global.powerup == cs_pow_cape) {
        
            //If the player is spinning, reset spins
            if (instance_exists(obj_spinner)) {
                        
                with (obj_spinner) {
                
                    audio_stop_play_sound(snd_spin, 0, false);
                    spin = 0;
                }
            }
            
            //Otherwise
            else            
                instance_create(x, y, obj_spinner);
        }
        
        //If the player has the fire powerup
        else if (global.powerup == cs_pow_ice) {
        
            //If there's less than 2 fireballs in view
            if (instance_number(obj_iceball) < 2) {
            
                firing = 9;
                with (instance_create(x, y, obj_iceball)) 
                    hspeed = other.hspeed+(1.2*sign(other.xscale));
            }
        }
    }
}


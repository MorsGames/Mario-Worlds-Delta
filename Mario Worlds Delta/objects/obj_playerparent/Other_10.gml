/// @description Hurt the player

//If the player is not invulnerable
if (invulnerable == false) {
    
    //If the player is riding a yoshi
    if (global.mount == 1) {
    
        //Play 'Hurt' sound
        audio_stop_play_sound(snd_hurt, 0, false);
    
        //With Yoshi
        with (obj_yoshi) {
        
            //Set 'Runaway' state
            state = yoshistate.runaway;
            
            //Set xscale
            xscale = obj_playerparent.xscale;
            
            //Set horizontal speed
            hspeed = xscale*2;
            
            //Stop licking
            licking = 0;
            anim = 0;
            
            //Disallow ride
            rideme = 0;
            
            //Allow it
            alarm[0] = 16;
        }
        
        //Make the player bounce
        vspeed = -4;
        visible = true;
        
        //Stop holding
        holding = 0;
        
        //Stop dismounting yoshi
        global.mount = 0;
    }
    
    //Otherwise, if the player is not riding a yoshi
    else {
    
        //If the player is flying
        if (instance_exists(obj_cape_fly)) {
        
            //Play 'Cape Cancel' sound
            audio_stop_play_sound(snd_capecancel, 0, false);
            
            //Destroy cape object
            with (obj_cape_fly) instance_destroy();
            
            //Start spin
            jumpstyle = 1;
        }
        
        //Otherwise
        else {
    
            //If the player powerup is greater than mushroom
            if (global.powerup > cs_pow_super) {
            
                //Play 'Powerdown' sound
                audio_stop_play_sound(snd_powerdown, 0, false);
                
                //Perform animation sequence
                _transform = instance_create(0, 0, obj_player_transform);
                    _transform.oldpowerup = global.powerup;
                    _transform.newpowerup = cs_pow_super;    
            }
            
            //Otherwise, if the player is big
            else if (global.powerup == cs_pow_super) {
            
                //Play 'Powerdown' sound
                audio_stop_play_sound(snd_powerdown, 0, false);
                
                //Drop reserve item
                with (obj_levelcontrol) {
                
                    if (global.reserveitem > cs_pow_small)
                        event_user(1);
                }
                
                //Perform animation sequence
                _transform = instance_create(0, 0, obj_player_transform);
                    _transform.oldpowerup = global.powerup;
                    _transform.newpowerup = cs_pow_small;    
            }
            
            //Otherwise, if the player is small
            else if (global.powerup == cs_pow_small) {
            
                instance_create(x, y, obj_player_dead);
                instance_destroy();
                exit;
            }
        }
    }
    
    //Become invulnerable
    invulnerable = true;
    alarm[0] = 90;
    alarm[1] = 1;
}


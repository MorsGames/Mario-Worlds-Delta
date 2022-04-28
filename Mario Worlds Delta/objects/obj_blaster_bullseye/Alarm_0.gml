/// @description Shoot a banzai bill

//If the player does not exist, deny event
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //If the player is nearby the cannon, deny event
    if (obj_playerparent.x > bbox_left-32)
    && (obj_playerparent.x < bbox_right+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise
    else {
    
        //Ignore if there's already a bullseye banzai bill shot by this cannon
        if (mybullet != noone) {
        
            alarm[0] = 1;
            exit;    
        }
    
        //Otherwise
        else {
    
            //If the player is at the left
            if (obj_playerparent.x < x) {
                
                //If there's not a solid in position, shoot a bullet
                if (!collision_line(bbox_left-1, bbox_top+1, bbox_left-1, bbox_bottom-1, obj_solid, 0, 0)) {
                
                    //Play 'Explosion' sound
                    audio_stop_play_sound(snd_explosion, 0, false);
                        
                    //Shake screen
                    init_shake(snd_explosion);
                    
                    //Create bullet bill
                    mybullet = instance_create(x, y-32, obj_bullseyebanzai);
                    with (mybullet) {
                    
                        hspeed = -1.5;
                        with (instance_create(xstart-32, y, obj_smoke))
                            sprite_index = spr_smoke_64;
                    }
                    
                    //Scale
                    ready = 1;
                    
                    //Repeat
                    alarm[0] = 300;
                }
                
                //If there's a solid at the left, deny event
                else {
                
                    alarm[0] = 1;
                    exit;
                }
            }
            
            //Otherwise, if the player is at the right
            else if (obj_playerparent.x > x) {
                        
                //If there's not a solid in position, shoot a bullet
                if (!collision_line(bbox_right+1, bbox_top+1, bbox_right+1, bbox_bottom-1, obj_solid, 0, 0)) {
                
                    //Play 'Explosion' sound
                    audio_stop_play_sound(snd_explosion, 0, false);
                    
                    //Shake screen
                    init_shake(snd_explosion);
                    
                    //Create bullet bill
                    mybullet = instance_create(x, y-32, obj_bullseyebanzai);
                    with (mybullet) {
                    
                        hspeed = 1.5;
                        with (instance_create(xstart+32, y, obj_smoke))
                            sprite_index = spr_smoke_48;
                    }
                    
                    //Scale
                    ready = 1;
                    
                    //Repeat
                    alarm[0] = 300;
                }
                
                //If there's a solid at the left, deny event
                else {
                
                    alarm[0] = 1;
                    exit;
                }            
            }   
        }       
    }
}


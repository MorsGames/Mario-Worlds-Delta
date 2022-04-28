/// @description Shoot a bullet bill

//If the player does not exist, deny event
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise
else {

    //If there's less than 6 bullets on screen or the player is nearby
    if ((obj_playerparent.x > bbox_left-32) && (obj_playerparent.x < bbox_right+32)) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Otherwise, if none of the conditions above match, let the shooting begin.
    else {
    
        //If there's 6 or less bullet bills on screen
        if (instance_number(obj_bulletbill) >= 6) {
        
            alarm[0] = 1;
            exit;
        }
    
        //If the player is at the left
        if (obj_playerparent.x < x) {
            
            //If there's not a solid in position, shoot a bullet
            if (!collision_rectangle(bbox_left-1, y, bbox_left-1, y+15, obj_solid, 0, 0)) {
            
                //Play 'Explosion' sound
                audio_stop_play_sound(snd_explosion, 0, false);
                
                //Create bullet bill
                with (instance_create(x+8, y, obj_bulletbill)) {
                
                    image_index = 4;
                    hspeed = -2;
                    with (instance_create(x, y+8, obj_smoke))
                        sprite_index = spr_smoke_16;
                }
                
                //Repeat
                alarm[0] = 90+round(random(120));
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
            if (!collision_rectangle(bbox_right+1, y, bbox_right+1, y+15, obj_solid, 0, 0)) {
            
                //Play 'Explosion' sound
                audio_stop_play_sound(snd_explosion, 0, false);
                
                //Create bullet bill
                with (instance_create(x+8, y, obj_bulletbill)) {
                
                    image_index = 0;
                    hspeed = 2;
                    with (instance_create(x, y+8, obj_smoke))
                        sprite_index = spr_smoke_16;
                }
                
                //Repeat
                alarm[0] = 90+round(random(120));
            }
            
            //If there's a solid at the left, deny event
            else {
            
                alarm[0] = 1;
                exit;
            }            
        }          
    }
}


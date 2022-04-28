/// @description Tongue logic

//If Yoshi does exist and it is being ridden
if (instance_exists(obj_yoshi))
&& (instance_exists(obj_playerparent))
&& (obj_yoshi.state == yoshistate.ridden) {

    //Where the tongue should be drawn
    if (obj_yoshi.sprite_index == spr_yoshi_lick_alt) {
    
        tongue1x = obj_yoshi.x-3+19*obj_playerparent.xscale;
        tongue2x = t2*obj_playerparent.xscale+tongue1x;
        tongue3x = t3*obj_playerparent.xscale+tongue1x;
        tongue4x = t4*obj_playerparent.xscale+tongue1x;
    }
    else {
    
        tongue1x = obj_yoshi.x-3+13*obj_playerparent.xscale;
        tongue2x = t2*obj_playerparent.xscale+tongue1x;
        tongue3x = t3*obj_playerparent.xscale+tongue1x;
        tongue4x = t4*obj_playerparent.xscale+tongue1x;     
    }

    //Actual tongue location
    x = round(t5*obj_playerparent.xscale+tongue1x);
    if (obj_yoshi.locked = 2)
        y = obj_yoshi.y+4;
    else
        y = obj_yoshi.y-7;

    //If Yoshi is moving his tongue out
    if (ready == 0) {

        //Increment tongue offset values
        if (t2 != 8)
            t2 += 4;
        if (t3 != 16)
            t3 += 4;
        if (t4 != 24)
            t4 += 4;
        if (t5 != 32)
            t5 += 4;

        //If the tongue is all the way out, pull it back in
        else if (ready != 1) {
        
            ready = 1;
            alarm[0] = 8;
        }
    }

    //If Yoshi is pulling back his tongue
    else if (ready == 2) {

        //Decrement tongue offset values
        if (t2 != 0)
            t2 -= 4;
        if (t3 != 0)
            t3 -= 4;
        if (t4 != 0)
            t4 -= 4;
        if (t5 != 0)
            t5 -= 4;

        //If the tongue is all the way in
        else {
        
            //Close Yoshi's mouth
            obj_yoshi.alarm[1] = 5;

            //If something was eaten
            if (hunger) {

                //If a powerup was eaten, place it in Yoshi
                if (powerup != noone) {
                
                    //Play 'Eat' sound
                    audio_stop_play_sound(snd_eat, 0, false);
                    
                    //Obtain powerup
                    obj_yoshi.powerup = powerup;
                    powerup = noone;
                }
                
                //Otherwise
                else {
                    
                    //Otherwise if yoshi ate a fire watermelon, give ammo
                    if (obj_yoshi.mouthholder == obj_watermelon_fire)
                        obj_yoshi.ammo = 3;
                        
                    //Otherwise if yoshi ate a ice watermelon, give ammo
                    else if (obj_yoshi.mouthholder == obj_watermelon_ice)
                        obj_yoshi.ammo = 3;
                        
                    //Otherwise if yoshi ate a bomb watermelon, give ammo
                    else if (obj_yoshi.mouthholder == obj_watermelon_bomb)               
                        obj_yoshi.ammo = 3;
    
                    //If Yoshi's mouth is not full, swallow
                    else if (obj_yoshi.mouthholder == noone)                
                        audio_stop_play_sound(snd_eat, 0, false);
                }
            }

            //Destroy
            instance_destroy()
        }
    }
}

//Otherwise, stop licking and destroy
else {

    with (obj_yoshi) {
    
        licking = 0;
        locked = 0;
    }
    instance_destroy();
}


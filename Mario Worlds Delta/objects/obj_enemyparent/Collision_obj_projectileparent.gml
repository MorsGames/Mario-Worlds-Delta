/// @description Collision with projectiles

//If the enemy is vulnerable to fireballs
if (vulnerable == 0) 
|| (vulnerable == 2) {

    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);
    
    //Turn into a coin
    with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2-8, obj_coin_alt)) {

        //Jump a bit
        y--;
        if (other.swimming == 0)
            vspeed = -4;
        else
            vspeed = -3;
                
        //Apply gravity to the coin
        ready = 1;
        
        //Disable alarms
        alarm[0] = -1;
        alarm[1] = -1;        
        
        //Give 200 points after collection
        nopoints = false;
        
        //Move in the opposite way the player is
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = 0.5;
        else
            hspeed = -0.5;                    
    }
    
    //Destroy
    instance_destroy();
    
    //Create smoke effect
    with (instance_create(round(bbox_left+bbox_right)/2-8, round(bbox_top+bbox_bottom)/2-8, obj_smoke)) sprite_index = spr_smoke_16;
    
    //Destroy projectile
    with (other) event_user(0);
}

//Destroy fireball
if (vulnerable < 100)
    with (other) event_user(0);


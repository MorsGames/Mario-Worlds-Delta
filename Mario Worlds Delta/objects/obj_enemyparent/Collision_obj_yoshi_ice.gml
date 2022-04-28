/// @description Collision with yoshi's ice breath

//If the player is vulnerable to ice
if (vulnerable < 2) {
    
    //If this enemy is bigger than a power of 2, destroy the projectile
    if (sprite_width > 32)
    && (sprite_height > 32)
        with (other) event_user(0);
        
    //Turn into a ice ball
    else {
        
        //Play 'Transform' sound
        audio_play_sound(snd_freeze, 0, false);
        
        //Turn into a ice cube
        imiced = instance_create(x, y, obj_enemy_frozen);
        
        //Set parameters
        with (imiced) {
            
            //Set the sprite
            sprite_index = other.sprite_index;
            
            //Change size
            event_user(14);
        }
        
        //Destroy
        instance_destroy();
    }
}

//Destroy the projectile
if (vulnerable < 100)
    with (other) event_user(0);


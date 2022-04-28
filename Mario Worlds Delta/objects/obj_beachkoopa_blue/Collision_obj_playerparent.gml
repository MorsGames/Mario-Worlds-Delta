/// @description Special player collision event

//If the player is invulnerable, exit
if (instance_exists(obj_invincibility))
exit;

//If stunned, defeat instantly
if (ready < 2) {
    
    //If the player is sliding down a slope
    if (other.sliding == 1) {
    
        event_perform_object(obj_enemyparent, ev_collision, obj_killparent);
        exit;
    }
        
    //Otherwise
    else {
    
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);
    
        //Create dead object
        with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_enemy_dead)) {
        
            sprite_index = other.deathsprite;
            image_xscale = other.xscale;
            vspeed = -4;
        }        
    }
    
    //Get 200 points
    with (instance_create(x-8,y,obj_score)) event_user(2);
    
    //Create spin thump
    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
    
    //Make the player visually kick the enemy
    with (other) event_user(4);
    
    //Destroy
    instance_destroy();
}

//Otherwise
else
    event_inherited();


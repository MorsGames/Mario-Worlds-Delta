/// @description Create sparkles

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //If the player is small or is crouched down.
    if (mask_index == spr_mask_player) {
    
        with (instance_create(x-8+random(round(16)), y+random_range(0,16), obj_smoke)) {
        
            image_speed = 0.3;
            sprite_index = spr_sparkle_big;
        }
    }
    
    //Otherwise 
    else if (mask_index == spr_mask_player_big) {
    
        with (instance_create(x-8+random(round(16)), y+random_range(-6,16), obj_smoke)) {
        
            image_speed = 0.3;
            sprite_index = spr_sparkle_big;
        }
    }
}

//Otherwise
else {

    //Set object to check
    event_user(15);
    
    //If the player is small
    if (global.powerup == cs_pow_small) {
        
        with (instance_create(x-8+random(round(16)), y+random_range(0,16), obj_smoke)) {
        
            depth = other.follow.depth-1;
            image_speed = 0.3;
            sprite_index = spr_sparkle_big;
        }
    }
    
    //Otherwise 
    else if (mask_index == spr_mask_player_big) {
    
        with (instance_create(x-8+random(round(16)), y+random_range(-6,16), obj_smoke)) {
        
            depth = other.follow.depth-1;
            image_speed = 0.3;
            sprite_index = spr_sparkle_big;
        }
    }
}

//Repeat
if (obj_invincibility.alarm[0] > 120)
    alarm[3] = 2;
else
    alarm[3] = 4;


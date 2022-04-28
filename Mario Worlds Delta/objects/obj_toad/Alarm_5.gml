/// @description Leave a spark trail when doing a squat jump

//If the player can do a squat jump
if (squat_ready > 0)
&& (instance_number(obj_invincibility) == 0) {

    //If the player is small or is crouched down.
    if (mask_index == spr_mask_player) {
    
        with (instance_create(x-8+random(round(16)), y+random_range(0,16), obj_smoke)) {
        
            image_speed = 0.1;
            sprite_index = spr_sparkle_small_blue;
        }
    }
    
    //Otherwise 
    else if (mask_index == spr_mask_player_big) {
    
        with (instance_create(x-8+random(round(16)), y+random_range(-6,16), obj_smoke)) {
        
            image_speed = 0.1;
            sprite_index = spr_sparkle_small_blue;
        }
    }
}

//Repeat process
alarm[5] = 4;


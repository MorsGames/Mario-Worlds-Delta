/// @description Play sound and create a lava effect.

//Play sound
audio_play_sound(snd_burn, 0, false);

//Check for nearby lava.
lava = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_lava, 0, 0);
if (lava) {

    //Create lava splash
    with (instance_create(x, lava.y-12, obj_smoke)) {
    
        //Change splash sprite based on current sprite
        switch (other.sprite_index) {
        
            //Choco
            case (spr_podoboo_choco): sprite_index = spr_splash_choco; break;
            
            //Poison
            case (spr_podoboo_poison): sprite_index = spr_splash_poison; break;
            
            //Default
            default: sprite_index = spr_splash_lava; break;
        }
    }
}


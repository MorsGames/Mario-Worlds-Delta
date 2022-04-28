/// @description Damage the player

//Smoke variable
var a
a = 0;

//Create 'Skull' points text if not invulnerable
with (instance_create(x-8, y, obj_score)) {

    if (instance_exists(obj_invincibility))
        event_user(5);
    else
        event_user(13);
}

//Repeat 8 times
repeat (6) {
    
    //If the player is invulnerable
    if (!instance_exists(obj_invincibility)) {
    
        with (instance_create(x, y+8, obj_smoke)) {
        
            sprite_index = spr_smoke_16;
            image_blend = make_colour_rgb(223, 125, 255);
            motion_set(a, 1);
            a += 60
        }
    }
    else {
    
        //Play 'Kick' sound
        audio_stop_play_sound(snd_kick, 0, false);
    
        //Create smoke effect
        with (instance_create(x, y+8, obj_smoke)) {
        
            sprite_index = spr_smoke_16;
            motion_set(a, 1);
            a += 60
        }        
    }
}

//With the player
with (other) event_user(0);

//Destroy
instance_destroy();


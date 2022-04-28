/// @description Shake the ground

//If the sprite is the stomping one
if (sprite_index == spr_sumobro_stomp) {

    //Play 'Thud' sound
    audio_play_sound(snd_thud, 0, false);
    
    //End animation
    image_speed = 0;
    image_index = 0;    
    
    //Shake screen
    init_shake(25);   

    //Start moving
    alarm[0] = 120;
    
    //Reverse direction
    alarm[3] = 40;
    
    //Reset steps
    steps = 1;
    
    //Create lightning
    instance_create(x-8, y+32, obj_sumobro_lightning);
}


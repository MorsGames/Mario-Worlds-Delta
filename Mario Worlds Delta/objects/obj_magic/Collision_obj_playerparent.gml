/// @description Hurt the player

//If the player is above and moving down.
if ((other.bbox_bottom < bbox_top+5) && (other.vspeed > 0)) {

    //If the player is riding a yoshi or it's spinning.
    if (global.mount > 0) 
    || (other.jumpstyle == 1) {
    
        //Play 'Stomp' sound.
        audio_play_sound(snd_stomp, 0, false);
        
        //Make the player jump
        with (other) event_user(1);            
                            
        //Create hit effect.
        with (instance_create(other.x,other.bbox_bottom-8,obj_smoke)) sprite_index = spr_spinthump;
    }
    else
        with (other) event_user(0);
}
else
    with (other) event_user(0);


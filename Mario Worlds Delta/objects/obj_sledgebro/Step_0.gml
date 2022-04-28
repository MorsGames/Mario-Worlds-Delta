/// @description Hammer Bro logic

//Inherit event from parent
event_inherited();

//Manage swimming state
event_user(8);

//Make the ground shake after jumping
if (jump == 1)
&& (gravity == 0) {

    //Play 'Explosion' sound
    audio_stop_play_sound(snd_destroy, 0, false);
    
    //Shake screen
    init_shake(25);        
    
    //Reset count
    jump = 0;
    
    //Set horizontal speed.
    hspeed = prevhsp;
    alarm[0] = prevalm;
    
    //Stun the player if possible
    if (instance_exists(obj_playerparent)) {
    
        //If the player is not on the ground
        if (obj_playerparent.state != statetype.jump)
            with (obj_playerparent) stun = 60;
    }
    
    //Create smoke effects
    with (instance_create(bbox_left, bbox_bottom, obj_smoke)) sprite_index = spr_smoke_16;
    with (instance_create(bbox_right, bbox_bottom, obj_smoke)) sprite_index = spr_smoke_16;
}

//Update death/stomp sprite
deathsprite = sprite_index;
stompsprite = sprite_index;

//Set up the facing direction.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;


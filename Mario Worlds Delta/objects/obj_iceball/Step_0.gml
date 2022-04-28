/// @description Fireball logic

//Ignore swimming
swimming = false;

//Previous horizontal speed
prevhspeed = hspeed;

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

//Check for lava
var lava = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_lava, 0, 0);

//If there's lava
if (lava) {

    //Play 'Burn' sound
    audio_stop_play_sound(snd_burn, 0, false);

    //Create smoke
    with (instance_create((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, obj_smoke)) sprite_index = spr_smoke_16;
    
    //Create splash effect
    with (instance_create((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2-8, obj_smoke)) {
            
        if (lava.sprite_index == spr_lava_choco)
            sprite_index = spr_splash_choco;
        else if (lava.sprite_index == spr_lava_poison)
            sprite_index = spr_splash_poison;
        else
            sprite_index = spr_splash_lava;       
    }
    
    //Destroy
    instance_destroy();
}

//Bounce
if (gravity == 0) {

    vspeed = -2.5;
    y--;
}
else {

    gravity = 0.125;
}

//Prevent swimming
if (swimming == 1)
    swimming = 0;
    
//Destroy when direction changes
if (hspeed != prevhspeed)
    event_user(0);

//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-16)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+16)
    instance_destroy();


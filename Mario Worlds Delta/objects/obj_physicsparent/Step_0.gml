/// @description Physics logic

//Item trap checks
t = collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0);
b = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_semisolid, 1, 0);
l = collision_rectangle(bbox_left-1, bbox_top, bbox_left, bbox_bottom, obj_solid, 1, 0);
r = collision_rectangle(bbox_right, bbox_top, bbox_right+1, bbox_bottom, obj_solid, 1, 0);

//Default wall collision
event_user(3);

//Default floor collision
event_user(4);

//Default conveyor collision
event_user(5);

//Check for lava
var lava = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_lava, 1, 0);

//If there's lava
if (lava) {

    //Play 'Burn' sound
    audio_stop_play_sound(snd_burn, 0, false);

    //Create smoke
    with (instance_create((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2, obj_smoke)) sprite_index = spr_smoke_16;
    
    //Create splash effect
    with (instance_create((bbox_left+bbox_right)/2, (bbox_top+bbox_bottom)/2-8, obj_smoke)) {
    
        //Set the animation speed
        image_speed = 0.3
        
        //Set the sprite
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

//Check for water
var water = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0);

//If there's water
if (water)
&& (swimming == false) {

    //Make the object swim
    swimming = true;
    
    //Stop vertical movement
    if (vspeed > 0) {
        
        vspeed = 0;
        with (instance_create(round(bbox_left+bbox_right)/2, water.y-16, obj_smoke)) {
         
            sprite_index = spr_splash;
            image_speed = 0.3;
        }
    }
}

//Otherwise
else if (!water)
&& (swimming == true) {

    //Stop swimming
    swimming = false;
    
    //Create a splash effect
    if (vspeed < 0) {
        
        with (instance_create(round(bbox_left+bbox_right)/2, y-16, obj_smoke)) {
         
            sprite_index = spr_splash;
            image_speed = 0.3;
        }
    }
}


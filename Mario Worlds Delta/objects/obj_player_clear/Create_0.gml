/// @description The player has completed the level

//Set the jumping sprite if the player is on the air
if (gravity > 0) then sprite_index = player_jump();

//Destroy cape flight object
with (obj_cape_fly) instance_destroy();

//Stop P-Switch and Starman music
audio_stop_sound(bgm_pswitch);
audio_stop_sound(bgm_starman);

//Stop both music and timer
with (obj_levelcontrol) {

    musicdisable = true;
    alarm[1] = 1;
    alarm[2] = -1;
    alarm[3] = -1;
    alarm[4] = -1;
}

//Set clear state
global.clear = 1+(obj_goal_gate.secret);

//Anim
anim = 0;

//Do not flash
isflashing = 0;

//Set horizontal speed
hspeed = 0.324;

//Forget check points
global.checkpoint = noone;
global.checkpointroom = -1;

//Allow Mario Start! text
global.mariostart = 0;

//Fireworks
fireworks = 0;

//States
ready = 0;
ready2 = 0;
ready3 = 0;
ready4 = 0;

//Play the clear stream
alarm[0] = 70;

//Stop the player
alarm[2] = 460;

//Take points off time and add it to score
alarm[3] = 300;

//Take bonus stars off and add it to current stars
alarm[4] = 300;

//Show 'Course Clear'
alarm[5] = 200;

//Whether the object is swimming
swimming = false;

//Is the object in a slope?
slope = false;

//Create goal fade
instance_create(0, 0, obj_goal_fade);

//Remove every coin on screen
with (obj_removeme) {

    if (visible)
    && (outside_view(sprite_get_width(sprite_index)) == false) {
    
        //Give points
        instance_create(round(bbox_left+bbox_right)/2-8, y, obj_enemy_score);
    
        //Create poof of smoke
        with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_smoke)) {
        
            sprite_index = spr_smoke_16;
        }
        
        //Destroy
        instance_destroy();            
    }
}

//Remove every NPC on screen
with (obj_physicsparent) {

    //Do this only if inside the view
    if (outside_view(sprite_get_width(sprite_index)) == false) {
    
        //If the object is ancestor of either holdparent, enemyparent or powerup parent
        if (object_is_ancestor(object_index, obj_holdparent))
        || (object_is_ancestor(object_index, obj_enemyparent))
        || (object_is_ancestor(object_index, obj_powerupparent)) {
        
            //Give points
            instance_create(round(bbox_left+bbox_right)/2-8, y, obj_enemy_score);
        
            //Create poof of smoke
            with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_smoke)) {
            
                sprite_index = spr_smoke_16;
            }
            
            //Destroy
            instance_destroy();
        }
    }
}


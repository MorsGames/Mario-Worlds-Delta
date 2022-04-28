/// @description Whistle again

//If the chuck is damaged
if (sprite_index == spr_charginchuck_damage)
exit;

//Play 'Chuck Whistle' sound
audio_stop_play_sound(snd_chuck_whistle, 0, false);

//Wake up all nearby enemies
global.whistle = 1;

//Repeat
alarm[0] = 90;

//Spawn in a super koopa
if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0)) {

    //Choose a side to spawn from
    var spawn_x = choose(__view_get( e__VW.XView, view_current )-16, __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+16);
    
    //Choose a random Y position to spawn in at
    var spawn_y = irandom_range(__view_get( e__VW.YView, view_current )+16, __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )-96);
    
    //Create the koopa
    instance_create(spawn_x, spawn_y, obj_superkoopa_green);

}


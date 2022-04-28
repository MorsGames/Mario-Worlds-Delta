/// @description Platform logic (Player)
/// @param Player

//Inherit event from parent
event_inherited();

//If the player is on this moving platform
var player = collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0);

//If the player exists
if (ready == 0)
&& (player)
&& (player.state != statetype.jump)
&& (player.bbox_bottom < yprevious+5) {

    //Remember time given
    prevtime = time;
    
    //Fall
    ready = 1;
    
    //Decrement timer
    alarm[0] = 60;
    
    //Set movement
    if (place_meeting(x, y, obj_up))
        motion_set(90, 1);
    else if (place_meeting(x, y, obj_down))
        motion_set(270, 1);
    else if (place_meeting(x, y, obj_left))
        motion_set(180, 1);
    else
        motion_set(0, 1);
}

//Cap vertical speed
if (vspeed > 3.5)
    vspeed = 3.5;


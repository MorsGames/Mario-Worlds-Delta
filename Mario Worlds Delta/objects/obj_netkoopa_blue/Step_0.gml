/// @description Net koopa logic

//If there's not a climbing spot
if ((hspeed < 0) && (!position_meeting(bbox_left-1, y, obj_climb)))
|| ((hspeed > 0) && (!position_meeting(bbox_right+1, y, obj_climb)))
|| ((vspeed < 0) && (!position_meeting(x, bbox_top-1, obj_climb)))
|| ((vspeed > 0) && (!position_meeting(x, bbox_bottom+1, obj_climb))) {

    //Reverse horizontal or vertical direction
    hspeed = -hspeed;
    vspeed = -vspeed;
}

//Wall collision
event_user(3);

//Set default death sprite
deathsprite = sprite_index;

//Set default stomp sprite
stompsprite = sprite_index;

//If moving up and there's a ceiling in place
if (vspeed < 0) {

    if (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_solid, 0, 0))
    || (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0)) {
    
        //Prevent getting embed on ceiling
        while (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_solid, 0, 0))
            y++;
            
        //Reverse vertical movement
        vspeed = -vspeed;
    }
}

//Otherwise,  if moving down and there's a semisolid in place
else if (vspeed > 0)  
&& (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_semisolid, 0, 0))
    vspeed = -vspeed;


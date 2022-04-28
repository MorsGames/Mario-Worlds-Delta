/// @description Net koopa logic

//If the koopa is not turning and climbs off the net
if (turnaround = 0) {

    ///If moving down
    if (vspeed > 0) 
    && (!place_meeting(x, y+15, obj_climb_net)) {
    
        vspeed = -vspeed;
        if (ready != 2)
            ready = 2;
    }
    
    //Otherwise
    else if (!place_meeting(x, y, obj_climb_net)) {
    
        //Turn sprite
        sprite_index = spr_netkoopa_turn;
        
        //Turning
        turnaround = 1;
    
        //Do not animate
        image_speed = 0;
    
        //Stop
        speed = 0;
    
        //Finish turning
        alarm[0] = 10;
    
        //Turn image index
        if ((ready == 0) || (ready == 3))
            image_index = 0;
        else
            image_index = 1;
    }
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


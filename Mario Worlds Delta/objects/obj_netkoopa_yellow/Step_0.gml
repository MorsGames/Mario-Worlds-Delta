/// @description Net koopa logic

//Keep charging at the player
if (charge == 1) {
        
    //Follow the player horizontally
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x) {
    
        hspeed -= 0.0524;
        if (hspeed < -1.8)
            hspeed = -1.8;
    }
    else {
    
        hspeed += 0.0524;
        if (hspeed > 1.8)
            hspeed = 1.8;
    }
    
    //Follow the player vertically
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.y < y) {
    
        vspeed -= 0.0524;
        if (vspeed < -1.8)
            vspeed = -1.8;
    }
    else {
    
        vspeed += 0.0524;
        if (vspeed > 1.8)
            vspeed = 1.8;
    }
}

//Set animation speed
image_speed = 0.3;

//Set default death sprite
deathsprite = sprite_index;

//Set default stomp sprite
stompsprite = sprite_index;

//If there's not a climbing spot to the left
if ((hspeed < 0) && (!position_meeting(bbox_left-1, y+8, obj_climb)))
    hspeed = 1.5;

//Otherwise, if there's not a climbing spot to the right
if ((hspeed > 0) && (!position_meeting(bbox_right+1, y+8, obj_climb)))
    hspeed = -1.5;

//Otherwise, if there's not a climbing spot to the top
if ((vspeed < 0) && (!position_meeting(x+8, bbox_top-1, obj_climb)))
    vspeed = 1.5;

//Otherwise, if there's not a climbing spot to the bottom
if ((vspeed > 0) && (!position_meeting(x+8, bbox_bottom+1, obj_climb)))
    vspeed = -1.5;


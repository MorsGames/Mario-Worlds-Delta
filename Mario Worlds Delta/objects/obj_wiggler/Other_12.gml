/// @description Special turn at enemies script

//If moving right
if (hspeed > 0) {

    //Check for a enemy object
    if (collision_rectangle(bbox_right, bbox_top, bbox_right+hspeed*2, bbox_bottom, obj_enemyparent, 0, 1))
    && (!collision_rectangle(bbox_right, bbox_top, bbox_right+hspeed*2, bbox_bottom, obj_wiggler_body, 0, 1))
        hspeed = -hspeed;
}

//Otherwise, if moving left
else if (hspeed < 0) {

    //Check for a enemy object
    if (collision_rectangle(bbox_left-hspeed*2, bbox_top, bbox_left, bbox_bottom, obj_enemyparent, 0, 1))
    && (!collision_rectangle(bbox_left-hspeed*2, bbox_top, bbox_left, bbox_bottom, obj_wiggler_body, 0, 1))
        hspeed = -hspeed;
}


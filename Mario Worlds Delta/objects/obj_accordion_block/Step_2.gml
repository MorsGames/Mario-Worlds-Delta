/// @description Accordion platform block

//If the player is on this moving platform
if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state != statetype.jump) {

    if (y < ystart)
    && (vspeed == floor(vspeed))
        obj_playerparent.y = ceil(bbox_top-16);
}

//This object should also push the player
if ((hspeed == -1) && (collision_line(bbox_left+hspeed, bbox_top, bbox_left, bbox_bottom, obj_playerparent, 0, 0)))
|| ((hspeed == 1) && (collision_line(bbox_right, bbox_top, bbox_right+hspeed, bbox_bottom, obj_playerparent, 0, 0)))
    obj_playerparent.x += hspeed;


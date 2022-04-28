/// @description Inherit event from parent

//Call event from parent
event_inherited();

//This object should also push the player
if ((hspeed < 0) && (collision_line(bbox_left+hspeed, bbox_top, bbox_left, bbox_bottom, obj_playerparent, 0, 0)))
|| ((hspeed > 0) && (collision_line(bbox_right, bbox_top, bbox_right+hspeed, bbox_bottom, obj_playerparent, 0, 0)))
    obj_playerparent.x += hspeed;


/// @description Allow noise making when the player is no longer overlapping this object

if (instance_exists(obj_playerparent))
&& (ready == 1)
&& (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playerparent, 0, 0))
    ready = 0;


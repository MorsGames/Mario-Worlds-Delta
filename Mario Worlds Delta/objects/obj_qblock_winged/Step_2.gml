/// @description Winged item block logic

if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (obj_playerparent.bbox_bottom < yprevious+5) 
&& (obj_playerparent.state != statetype.jump) {
    
    //Snap the player vertically
    obj_playerparent.y = ceil(bbox_top-16);
    
    //Snap the player horizontally
    obj_playerparent.x += x-xprevious;
    if (collision_rectangle(obj_playerparent.bbox_right, obj_playerparent.bbox_top+4, obj_playerparent.bbox_right+1, obj_playerparent.bbox_bottom-1, obj_solid, 1, 0))
        obj_playerparent.x--;
    else if (collision_rectangle(obj_playerparent.bbox_left-1, obj_playerparent.bbox_top+4, obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_solid, 1, 0))
        obj_playerparent.x++;     
}

//Push the player when not riding the block
if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top+1, bbox_left, bbox_bottom, obj_playerparent, 1, 0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right, bbox_top+1, bbox_right+hspeed, bbox_bottom, obj_playerparent, 1, 0)))
    obj_playerparent.x += hspeed;


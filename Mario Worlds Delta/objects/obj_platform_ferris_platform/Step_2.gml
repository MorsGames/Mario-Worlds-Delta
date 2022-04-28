/// @description Manage player collision

//If the player is on this moving platform
if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state != statetype.jump) {

    //Check for a moving platform below
    var check = collision_rectangle(obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_playerparent.bbox_right, obj_playerparent.bbox_bottom+1, obj_semisolid, 0, 1);
    
    //If there's a platform below
    if (check)
        exit;
        
    //Otherwise,
    else {
    
        //Snap the player vertically
        obj_playerparent.y = ceil(bbox_top-15);
        
        //Snap the player horizontally
        obj_playerparent.x += x-xprevious;
        if (collision_rectangle(obj_playerparent.bbox_right, obj_playerparent.bbox_top+4, obj_playerparent.bbox_right+1, obj_playerparent.bbox_bottom-1, obj_solid, 1, 0))
            obj_playerparent.x--;
        else if (collision_rectangle(obj_playerparent.bbox_left-1, obj_playerparent.bbox_top+4, obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_solid, 1, 0))
            obj_playerparent.x++;        
    }
}


/// @description Block train logic

//If moving
if (speed > 0) {

    //If snapped on grid and it's allowed to create new blocks.
    if (ready == 0)
    && (place_snapped(16,16)) {
        
        //Do not allow creation of blocks.
        ready = 1;
        
        //Allow it later
        alarm[0] = 4;
        
        //Snap in grid
        move_snap(16, 16);
        
        //Create a killer block
        instance_create(x, y, obj_blocktrain_killer);   
    }
}

//If the player is on this moving platform
if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (obj_playerparent.bbox_bottom < yprevious+5)
&& (obj_playerparent.state != statetype.jump) {

    //Check for a moving platform below
    var check = collision_rectangle(obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_playerparent.bbox_right, obj_playerparent.bbox_bottom+1, obj_semisolid, 0, 1);
    
    //If there's a platform below
    if (check)
        exit;
        
    //Otherwise, snap it vertically
    else
        obj_playerparent.y = ceil(bbox_top-16);
}


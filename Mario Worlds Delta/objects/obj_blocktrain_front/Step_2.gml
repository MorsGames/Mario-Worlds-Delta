/// @description Block train logic

//If moving
if (speed > 0) {

    //If snapped on grid and it's allowed to create new blocks.
    if (ready == 0)
    && (place_snapped(16, 16)) {
    
        //Check length
        if (length > 0) {
        
            //If there's one block left to create.
            if (length == 1) {
            
                //Do not create more blocks
                length = 0;
                
                //Create block train back block
                myback = instance_create(xstart, ystart, obj_blocktrain_back);
                with (myback) {
                
                    //Remember up this block.
                    parent = other.id;
                    
                    //Make it move in the speed of this block
                    speed = other.speed;
                    
                    //Make it move in the direction of this block.
                    direction = other.dir;
                }
            }
            
            //Decrement length.
            else
                length--;
        }
        
        //Do not allow creation of blocks.
        ready = 1;
        
        //Allow it later
        alarm[0] = 4;
        
        //Snap in grid
        move_snap(16,16);
        
        //Create a new block
        instance_create(x, y, obj_blocktrain_middle);   
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
    else
        obj_playerparent.y = ceil(bbox_top-16);
}

//This object should also push the player
if ((hspeed < 0) && (collision_line(bbox_left+hspeed, bbox_top, bbox_left, bbox_bottom, obj_playerparent, 0, 0)))
|| ((hspeed > 0) && (collision_line(bbox_right, bbox_top, bbox_right+hspeed, bbox_bottom, obj_playerparent, 0, 0)))
    obj_playerparent.x += hspeed;


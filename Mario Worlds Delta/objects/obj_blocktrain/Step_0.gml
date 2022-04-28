/// @description Create moving block train

if (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0))
&& (obj_playerparent.bbox_bottom < yprevious+5) 
&& (obj_playerparent.state != statetype.jump) {
        
    //Create train
    with (instance_create(xstart, ystart, obj_blocktrain_front)) {

        dir = 0;
        motion_set(0, other.spd);
        length = other.length-1;
    }
    
    //Destroy
    instance_destroy();
}


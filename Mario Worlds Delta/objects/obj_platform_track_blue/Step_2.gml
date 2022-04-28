/// @description Track platform logic

//Inherit event
event_inherited();

//If not moving
if (ready == 0) {

    if (global.onoff_block == 0)
    && (collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0)) 
    && (obj_playerparent.bbox_bottom < yprevious+5)
    && (obj_playerparent.state != statetype.jump) {
    
        ready = 1;
        alarm[10] = 2;
    }
}

//Otherwise
else if (ready == 1) {
    
    //If active
    if (global.onoff_block == 0) {
    
        //Resume movement
        if (prevspd != 0) then { speed = prevspd; prevspd = 0; }
    
        //If not moving
        if (speed == 0) {
        
            image_speed = 0;
            image_index = 0;
        }
        
        //Otherwise, animate
        else    
            image_speed = 0.2;
    }
    
    //Otherwise, if not active
    else {
    
        //Remember previous speed
        if (prevspd == 0) then { prevspd = speed; speed = 0; }    
        
        //Do not animate
        image_speed = 0;
        image_index = 0;
    }
}


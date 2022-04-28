/// @description Moving pipe logic

//Inherit event
event_inherited();

//Stop if moving
if (vspeed != 0) 
&& (collision_rectangle(bbox_left, y, bbox_right, y+15, obj_endmarker, 0, 0)) {

    //Snap to grid
    move_snap(16,16)
    
    //Stop movement
    vspeed = 0;
    
    //Move again
    alarm[0] = 120;
}

//Solid y
ls.y = y;
rs.y = y;

//Solid image y scale
ls.image_yscale = room_height-y;
rs.image_yscale = room_height-y;

//Semisolid y position
top.y = y;


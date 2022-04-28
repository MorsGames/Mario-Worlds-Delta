/// @description Diagonal Podoboo logic

//Bounce horizontally
if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top, bbox_left, bbox_bottom, obj_solid, 0, 0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right, bbox_top, bbox_right+hspeed, bbox_bottom, obj_solid, 0, 0)))
    hspeed = -hspeed;
    
//Bounce vertically
if ((vspeed < 0) && (collision_rectangle(bbox_left, bbox_top+vspeed, bbox_right, bbox_top, obj_solid, 0, 0)))
|| ((vspeed > 0) && (collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0)))
    vspeed = -vspeed;

//Bounce off slopes
if ((vspeed > 0) && (place_meeting(x+hspeed, y+vspeed, obj_slopeparent)))
|| ((vspeed < 0) && (place_meeting(x-hspeed, y-vspeed, obj_slopeparent_ceiling))) {

    hspeed = -hspeed;
    vspeed = -vspeed;
}

//Set the facing direction
xscale = 1*sign(hspeed);

